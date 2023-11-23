require 'securerandom'

namespace :promotion_code do
  desc "プロモーションコードの作成" #desc → description（説明）
  task generate: :environment do #task_nameは自由につけられる
    # 7桁の英数字と100-1000の数値のペアを10個作成
    10.times do
      key = SecureRandom.alphanumeric(7)
      value = rand(100..1000)
      # データベースに保存
      Promotion.create(code: key, price: value)
    end
  end
end
