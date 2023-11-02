# pinに指定した文字列でto以下のファイルを参照する
# preload: trueでjsファイルを読み込む前にライブラリを読み込むようにする
pin 'application', preload: true
pin 'bootstrap', to: 'bootstrap.min.js', preload: true
