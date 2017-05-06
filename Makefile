all: pdf

zip: pdf
	zip openSUSE新手指南.zip *.pdf
README.tex:
	echo "% !!!请不要修改这个文件，这个文件是make自动生成!!!" >  README.tex
	pandoc README.md -t latex >> README.tex
	echo "% !!!请不要修改这个文件，这个文件是make自动生成!!!" >> README.tex
pdf: README.tex
	xelatex openSUSE新手指南.tex
clean:
	rm -f *.backup *.log *.toc *.out *.aux *.lof
