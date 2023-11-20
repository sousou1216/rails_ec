# frozen_string_literal: true

class PurchaseMailer < ApplicationMailer
  def creation_email(bill, items)
    @bill = bill
    @items = items
    mail(
      subject: '購入完了メール',
      to: @bill.email,
      from: 'purchase@example.com'
    )
  end
end
