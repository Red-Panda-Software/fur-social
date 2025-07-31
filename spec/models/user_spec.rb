# frozen_string_literal: true

require 'rails_helper'

::RSpec.describe(::User) do
  subject(:user) do
    create(:user, password: password, password_confirmation: password, nickname: 'Noel', email: 'test@example.com')
  end

  let(:password) { 'mySecretPassword!' }

  describe('validations') do
    context 'with email' do
      it 'requires the email to be present' do
        user = described_class.new
        user.valid?

        expect(user.errors[:email]).to(include("can't be blank"))
      end
    end

    context 'with nickame' do
      it 'requires the nickname to be present' do
        user = described_class.new
        user.valid?

        expect(user.errors[:nickname]).to(include("can't be blank"))
      end

      it 'requires the nickname to be a maximum of 26 characters' do
        user = described_class.new(nickname: ::Faker::Alphanumeric.alpha(number: 26))
        user.valid?

        expect(user.errors[:nickname]).to(include('is too long (maximum is 25 characters)'))
      end
    end

    context 'with password' do
      it 'requires the password to be present' do
        user = described_class.new(password: '', password_confirmation: 'myPassword')
        user.valid?

        expect(user.errors[:password]).to(include("can't be blank"))
      end

      it 'requires the password and confirmation to match' do
        user = described_class.new(password: 'mypassword', password_confirmation: 'myPassword')
        user.valid?

        expect(user.errors[:password_confirmation]).to(include("doesn't match Password"))
      end
    end
  end

  describe('authentication') do
    it 'returns false when the wrong password is used' do
      expect(user.authenticate('random')).to(be_falsey)
    end

    it 'returns the user when the correct password is used' do
      expect(user.authenticate(password)).to(eq(user))
    end
  end

  describe('#update') do
    it 'requires the previous password when updating the password (empty)' do
      expect(user.update(password: 'something', password_challenge: '')).to(be_falsey)
    end

    it 'requires the previous password when updating the password (nil)' do
      expect(user.update(password: 'something', password_challenge: nil)).to(be_falsey)
    end

    it 'requires the previous password when updating the password (mismatch)' do
      expect(user.update(password: 'something', password_challenge: 'something_else')).to(be_falsey)
    end

    it 'requires the previous password when updating the password' do
      expect(user.update(password: 'something', password_confirmation: 'something', password_challenge: password))
        .to(be_truthy)
    end
  end
end
