@echo off
:MENU
title           PYIMG 			--by Lrst_6963
color 3f
cls
ECHO.
echo "                                              ___           ___      "
	echo "     ___           __             ___        /  /\         /  /\     "
	echo "    /  /\         |  |\          /__/\      /  /::|       /  /::\    "
	echo "   /  /::\        |  |:|         \__\:\    /  /:|:|      /  /:/\:\   "
	echo "  /  /:/\:\       |  |:|         /  /::\  /  /:/|:|__   /  /:/  \:\  "
	echo " /  /::\ \:\      |__|:|__    __/  /:/\/ /__/:/_|::::\ /__/:/_\_ \:\ "
	echo "/__/:/\:\_\:\     /  /::::\  /__/\/:/~~  \__\/  /~~/:/ \  \:\__/\_\/ "
	echo "\__\/  \:\/:/    /  /:/~~~~  \  \::/           /  /:/   \  \:\ \:\   "
	echo "     \  \::/    /__/:/        \  \:\          /  /:/     \  \:\/:/   "
	echo "      \__\/     \__\/          \__\/         /__/:/       \  \::/    "
	echo "                                             \__\/         \__\/     "
	echo "									--By Lrst_6963"
ECHO.***********************************************
ECHO.             
ECHO.
ECHO.              1.��ȡͼƬ
ECHO.
ECHO.              2.???????
ECHO.
ECHO.              3.�˳�
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
set choice=
set /p choice=��ֱ�������Ӧ���ֻس���
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto PYIMG
if /i "%choice%"=="2" goto EXIT
if /i "%choice%"=="3" goto EXIT
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU


:PYIMG
cls
set /p sl=������Ҫˢ������ͼ������200����
cls
echo.
echo.
echo. �������ԪͼƬ��https://api.yimian.xyz/img^?type=moe
echo.
echo. ���Bing��ֽ��https://api.yimian.xyz/img^?type=wallpaper
echo.
echo. ���1920x1080�ߴ����ԪͼƬ��https://api.yimian.xyz/img^?type=moe^&size=1920x1080
echo.
echo. ���������ͼ��43000^+��https://img.paulzzh.tech/touhou/random
echo.
echo. ����ͼƬ�ӿڣ�https://www.xzccc.com/api/acg/
echo.
echo. ɬͼ�ӿڣ����ã���������ã�����http://setu.awsl.ee/
echo.
echo. ��ѻ�����ͼƬAPI�ӿ�:https://api.r10086.com/�����ۺ�1.php
echo.
echo. �������ԪͼƬAPI-ӣ����http://www.dmoe.cc/random.php
echo.
echo. https://api.r10086.com/Ե֮��1.php
echo.
echo. ����С�����ͼƬ��ACG��������http://img.xjh.me/random_img.php?type=bg^&ctype=acg
echo.
echo  ����С�����ͼƬ����������http://img.xjh.me/random_img.php^?type=bg
echo.
echo. ������ͼ��https://api.yuzhitu.cn//sjbz/api.php^?method=mobile^&lx=suiji
echo.
echo. �����ǿգ�https://api.dongmanxingkong.com/suijitupian/acg/1080p/index.php
echo.
echo.		https://yingserver.cn/open/acgimg/acgurl.php
echo.
echo.
echo.	http://l-by.cn/api/api/api.php������Ԫ������ح
echo.	http://l-by.cn/api/mcapi/mcapi.php��mc��������ح
echo.	http://l-by.cn/api/gqapi/gqapi.php�������ֽ��
echo.
echo.	https://api.dujin.org/pic/
echo.
echo.
set /p jk=������ͼƬ�ӿ�,��Ϊurl�����������Щ�����ã���
cls
color 1f
set /p mv=������ͼƬ����
echo.
for /L %%F IN (1,1,%sl%) DO wget -O %mv%_%%F.jpg %jk%
cls
color cf
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���
echo.			��ȡ %sl% ��ͼ ��ɣ���

pause
goto MENU

:EXIT
exit