#!/usr/bin/env perl
# latex ...tex -> dvi へのコンパイルのコマンドに関する指定
# uplatex ... コンパイルのコマンド
# -shell-escape ... オプション，任意の外部コマンド実行可能
# -synctex=1 ... オプション，SyncTeXを有効にする．
# SyncTeXはPDF文書の特定の箇所と対応するTeXソースを参照できる仕組み
# -halt-on-error ... オプション，エラーが起きた時に自動でlatexコマンドを終了してくれる
$latex            = 'uplatex -shell-escape -synctex=1 -halt-on-error';
# -interaction=batchmode ... オプション． エラーが起きた時，最後まで処理せず，中断する
$latex_silent     = 'uplatex -shell-escape -synctex=1 -halt-on-error -interaction=batchmode';
# bibtex ... BibTeXを使う時のコマンドに関する指定
# BibTeX ... 参考文献を特定のフォーマットにまとめたbibファイルを読み込み，TeXファイル内で参照できるようにするシステム 
$bibtex           = 'pbibtex';
# dvipdf ... dvi -> pdfへのコンパイルのコマンドに関する指定
$dvipdf           = 'dvipdfmx %O -o %D %S';
# makeindex ... 索引作成ツールの指定
$makeindex        = 'mendex %O -o %D %S';
# max_repeat ... コンパイルの繰り返し回数
# 目次や参考文献は2回コンパイルしないと一覧が作れない云々の理由で設定できるようになっている
$max_repeat       = 5;
# pdf_mode ... コンパイルのモードを指定する
# 3 ... texからdviを生成し，更にpdfファイルを生成するモード
$pdf_mode     = 3; # generates pdf via dvipdfmx

# 古いPDFファイルを削除せず上書きする
$pvc_view_file_via_temporary = 0;
# pdf_previewer ... 生成したpdfファイルを開くコマンドの指定
# xdg-open .. デフォルトで設定しているPDFビューワを使ってpdfファイルを開く
$pdf_previewer    = "xdg-open";
