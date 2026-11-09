# 项目自带的补充宏包；其余仍使用系统和个人 TeX Live 宏包。
$ENV{'TEXINPUTS'} = './texmf/tex//:' . ($ENV{'TEXINPUTS'} // '');
