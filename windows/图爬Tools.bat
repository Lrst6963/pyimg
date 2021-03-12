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
ECHO.              1.爬取图片
ECHO.
ECHO.              2.???????
ECHO.
ECHO.              3.退出
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto PYIMG
if /i "%choice%"=="2" goto EXIT
if /i "%choice%"=="3" goto EXIT
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU


:PYIMG
cls
set /p sl=请输入要刷多少张图（建议200）：
cls
echo.
echo.
echo. 随机二次元图片：https://api.yimian.xyz/img^?type=moe
echo.
echo. 随机Bing壁纸：https://api.yimian.xyz/img^?type=wallpaper
echo.
echo. 随机1920x1080尺寸二次元图片：https://api.yimian.xyz/img^?type=moe^&size=1920x1080
echo.
echo. 东方的随机图，43000^+：https://img.paulzzh.tech/touhou/random
echo.
echo. 动漫图片接口：https://www.xzccc.com/api/acg/
echo.
echo. 涩图接口（弃用，浏览器能用，）：http://setu.awsl.ee/
echo.
echo. 暗鸦の随机图片API接口:https://api.r10086.com/动漫综合1.php
echo.
echo. 随机二次元图片API-樱花：http://www.dmoe.cc/random.php
echo.
echo. https://api.r10086.com/缘之空1.php
echo.
echo. 岁月小筑随机图片（ACG背景）：http://img.xjh.me/random_img.php?type=bg^&ctype=acg
echo.
echo  岁月小筑随机图片（背景）：http://img.xjh.me/random_img.php^?type=bg
echo.
echo. 随机输出图：https://api.yuzhitu.cn//sjbz/api.php^?method=mobile^&lx=suiji
echo.
echo. 动漫星空：https://api.dongmanxingkong.com/suijitupian/acg/1080p/index.php
echo.
echo.		https://yingserver.cn/open/acgimg/acgurl.php
echo.
echo.
echo.	http://l-by.cn/api/api/api.php（二次元动漫）丨
echo.	http://l-by.cn/api/mcapi/mcapi.php（mc酱动漫）丨
echo.	http://l-by.cn/api/gqapi/gqapi.php（高清壁纸）
echo.
echo.	https://api.dujin.org/pic/
echo.
echo.
set /p jk=请输入图片接口,可为url（上面可能有些不能用）：
cls
color 1f
set /p mv=请输入图片名：
echo.
for /L %%F IN (1,1,%sl%) DO wget -O %mv%_%%F.jpg %jk%
cls
color cf
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！
echo.			爬取 %sl% 张图 完成！！

pause
goto MENU

:EXIT
exit