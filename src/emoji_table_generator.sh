#!/bin/sh

array_contains_item() {
	for e in "${@:2}"; do 
		if [[ "$1" == *${e}* ]]; then
			echo "contains"
			break
		fi
	done
}


SRC_DIR=`pwd`
EXPORT_DIR=${SRC_DIR}/../export
emoji_categories=(\
		people
		nature
		food-drink
		celebration
		activity
		travel-places
		objects-symbols)

category_titles=(\
		People
		Nature
		Food
		Celebration
		Activity
		Travel
		Objects
		New
		Flags)

cd ${EXPORT_DIR}

rm -rf emoji*

emoji_dir=category_emoji
unicode_dir=category_unicode

rm -rf ${emoji_dir}
rm -rf ${unicode_dir}

[ -d ${emoji_dir} ] || mkdir ${emoji_dir}
[ -d ${unicode_dir} ] || mkdir ${unicode_dir}

name_unicode_file=unicode_file.txt
curl "http://www.emojibase.com/emoji-versions/v6.0" > tmp.file 
grep "a\ href=\"\/emoji\/" tmp.file > ${name_unicode_file}
sed -i'' -e 's/^.*emoji\///g' ${name_unicode_file}
sed -i'' -e 's/\/.*\">//g' ${name_unicode_file}
sed -i'' -e 's/\ <\/td>//g' ${name_unicode_file}
sed -i'' -e 's/ $//g' ${name_unicode_file}

for category in ${emoji_categories[@]}
do
	echo "==========================================================="
	echo "			category "${category}
	echo "==========================================================="
	emoji_name_file=emoji_name_${category}.txt
	curl http://emojipedia.org/${category} > tmp.file
	cat tmp.file | grep "a title" | grep href > ${emoji_name_file}

	sed -i'' -e 's/^.*title=\"//g' ${emoji_name_file}
	sed -i'' -e 's/" href.*$//g' ${emoji_name_file}

	last_line=`tail -1 ${emoji_name_file}`
	contains_item=$(array_contains_item "${last_line}" "${category_titles[@]}")
	while [ -n "${contains_item}" ]; do
		sed -i'' -e '$d' ${emoji_name_file}
		last_line=`tail -1 ${emoji_name_file}`
		contains_item=$(array_contains_item "${last_line}"  "${category_titles[@]}")
	done

	sed 's/\([a-zA-Z.-_ ]\)\(.*\)//g' ${emoji_name_file} > ${emoji_dir}/emoji_${category}.txt
	sed 's/^.//g' ${emoji_name_file} > tmp.file
	line_number=0
	while read emoji_name
	do
		raw_emoji_name=${emoji_name}
		((line_number+=1))
		emoji_name=`echo ${emoji_name} | tr -cd '[a-zA-Z][[:alnum:]]-._ '`	
		emoji_name=`echo ${emoji_name} | sed 's/\([a-z]\)\([A-Z]\)/\1 \2/g'`
		emoji_name=`echo ${emoji_name} | sed 's/^[[:space:]]\{2\}//g'`
		matched_unicode_name_line=`grep -ni "${emoji_name}$" ${name_unicode_file}`
		unicode_name_value=`echo "${matched_unicode_name_line}" | cut -d ':' -f 2`
		unicode_value=`echo "${unicode_name_value}" | cut -d ' '  -f 1`
		if [[ -z ${unicode_value} ]]; then
			echo "unicode_value is null matched_unicode_name_line = "${matched_unicode_name_line}", emoji_name = "${emoji_name}
			echo ${emoji_name} >> ${unicode_dir}/unicode_${category}.txt
			continue
		fi
		echo u${unicode_value} >> ${unicode_dir}/unicode_${category}.txt
		unicode_value=`echo ${unicode_value} | sed 's/\\n//g'`
		echo ${line_number} > /dev/null 
		sed -i'' -n "${line_number}s/${raw_emoji_name}/ u${unicode_value} ${emoji_name}/" ${emoji_name_file}

	done < tmp.file

done

rm *-e
rm *-n
rm tmp.file

cd ${SRC_DIR}
