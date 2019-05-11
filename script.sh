# Escriba su código aquí
sed 's#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#' data.csv > out.1
sed 's#;[a-z,N]#;\\N#' out.1 > out.2
sed 's#;;#;\\N;#' out.2 > out.3
sed 's#,#.#g' out.3 > out.4
sed 's#;[0-9][0-9][0-9];[0-9]#;\\N#' out.4 > out.5
sed 's#;#,#g' out.5 > out.6
grep -v \N out.6 > out.7
cat out.7
rm out.*