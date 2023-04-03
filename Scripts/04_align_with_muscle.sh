#align with muscle
for i in *.fa;
        do j=$(echo $i| sed 's/\///')
        echo $j
        Sout=$j'_align.fasta'
        echo $Sout
        muscle5.1.linux_intel64 -align $j -output $Sout
done

mkdir aligned

mv *align.fasta aligned && cd aligned


