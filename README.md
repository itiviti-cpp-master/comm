# comm command line utility

```bash
comm [OPTION] [FILE]
```

options:
* `-1` - suppress column 1 (lines unique to FILE1)
* `-2` - suppress column 2 (lines unique to FILE2)
* `-3` - suppress column 3 (lines that appear in both files)

### Example
```bash
$ cat e_1.txt 
AAA
BBB
CCC
$ cat e_2.txt 
AAA
CCC
EEE
$ comm e_1.txt e_2.txt 
		AAA
BBB
		CCC
	EEE
$ comm -12 e_1.txt e_2.txt 
AAA
CCC
```
