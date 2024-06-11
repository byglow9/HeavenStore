require 'rails_helper'

RSpec.describe User, type: :model do
    context "Validar campos obrigatorios" do
      it "Valida se campo nome esta preenchido" do
        user = build(:user)

        expect(user.valid?).to eq(true)

      end
      it "Valida se campo nome não esta preenchido" do
        user = build(:user, name: nil)

        expect(user.valid?).to eq(false)

      end





      it "Valida se campo telefone esta preenchido" do
        user = build(:user)

        expect(user.valid?).to eq(true)

      end
      it "Valida se campo telefone não esta preenchido" do
        user = build(:user, phone: nil)

        expect(user.valid?).to eq(false)

      end
    


      it "Valida se campo email esta preenchido" do
        user = build(:user)
  
          expect(user.valid?).to eq(true)
  
        end
        it "Valida se campo email não esta preenchido" do
          user = build(:user, email: nil)
  
          expect(user.valid?).to eq(false)
  
        end




      it "Valida se campo senha esta preenchido" do
      user = build(:user)

        expect(user.valid?).to eq(true)

      end
      it "Valida se campo senha não esta preenchido" do
        user = build(:user, password: nil)

        expect(user.valid?).to eq(false)

      end

      it 'validar emails unicos' do
        user1 = create(:user)
        user2 = build(:user, email: user1.email)

        expect(user2.valid?).to eq(false)
      end

      it 'validar mensagem de erro para email unicos' do
        user1 = create(:user)
        user2 = build(:user, email: user1.email )

        user2.save

        expect(user2.valid?).to eq(false)
        expect(user2.errors.size).to be_positive
      
      end



      
    end
    
end
