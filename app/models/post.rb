class Post < ApplicationRecord
    # レコードとファイルを削除する場合、dependent指定する
    has_many :post_images, dependent: :destroy

    accepts_attachments_for :post_images, attachment: :image, append: true
end
