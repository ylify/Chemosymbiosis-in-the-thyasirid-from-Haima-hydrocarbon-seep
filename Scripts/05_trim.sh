
#trim with trimal
for i in *.fasta;
        do j=$(echo $i| sed 's/\///')
        echo $j
        Sout=$j'_trim.fasta'
        echo $Sout
        /home/share/trimal-1.4.1/source/trimal -in $j -fasta -out $Sout -automated1
done

mkdir trimed

mv *trim.fasta trimed

