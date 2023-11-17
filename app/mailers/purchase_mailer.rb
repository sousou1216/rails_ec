# frozen_string_literal: true

class PurchaseMailer < ApplicationMailer
  def creation_email(bill, items, cart_id)
    @bill = bill
    @items = items
    @cart_id = cart_id
    mail(
      subject: '購入完了メール',
      to: @bill.email,
      from: 'purchase@example.com'
    )
  end
end
