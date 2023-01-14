class WillsController < ApplicationController

  def will_app_top_page
    # @title = "本の題名"

    # # 指定したファイルの中身を文字列で返す
    # # layoutオプションの値をfalseにしておくと、レイアウトが適用されていない状態で取得できる
    # template = render_to_string('wills/will_app_top_page', layout: false)

    # # HTMLファイルを生成
    # send_data(template, filename: "will_app_top_page.html")
  end

  def index
    @wills = Will.all
  end
end
