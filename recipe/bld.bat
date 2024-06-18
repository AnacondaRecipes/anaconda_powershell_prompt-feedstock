SET MENU_DIR=%PREFIX%\Menu
IF NOT EXIST (%MENU_DIR%) MKDIR %MENU_DIR%

COPY %RECIPE_DIR%\%PKG_NAME%.ico %MENU_DIR%
IF ERRORLEVEL 1 EXIT 1

COPY %RECIPE_DIR%\menu.json %MENU_DIR%\%PKG_NAME%_menu.json
IF ERRORLEVEL 1 EXIT 1
