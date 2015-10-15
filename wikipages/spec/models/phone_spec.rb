require '../rails_helper'

describe Phone do
  it "should validate the presence of a phone number" do
    phone = Phone.new({:number => ''  })
    expect(phone.save).to eq false
  end

  it 'should belong to a contact' do
    a_phone = Phone.new({:number => '12312'})
    a_contact = Contact.new(:name => "bob")
    a_contact.phones << a_phone
    expect(a_phone.contact).to eq a_contact
  end

end
