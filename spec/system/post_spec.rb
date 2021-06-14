require 'rails_helper'

describe '表示のテスト' do
    context '新規投稿画面' do
      before do
        visit new_post_path
      end
      it 'タイトル入力欄がある' do
        have_field 'post[title]'
      end
      it '本文入力欄がある' do
        have_field 'post[body]'
      end
      it 'アップロードフィールドがある' do
        have_field 'post[post_images_images][]'
      end
      it 'ファイルがアップロードできる' do
        find_by_id('post_title').set("title")
        find_by_id('post_body').set("created")
        attach_file("post[post_images_images][]", Rails.root.join('spec', 'fixtures', '142_refileDownloadImage.png'))
        click_on "記事を作成する"
      end
    end
end
