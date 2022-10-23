require 'swagger_helper'

RSpec.describe 'donations', type: :request do

  path '/donations' do

    get('list donations') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_donation_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create donation') do
      response(200, 'successful') do

        consumes 'application/json'        
        parameter donation_name: :car, in: :body, schema: {          
         type: :object,          
         properties: {            
          donation_name: { type: :string },            
          donation_amount: { type: :integer },
          region_id:  { type: :integer },
          user_id:  { type: :integer }     
         },          
         required: %w[user_id region_id donation_name donation_amount]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_donation_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/donations/{id}' do
    # You'll want to customize the parameter types...
    parameter donation_name: 'id', in: :path, type: :string, description: 'id'

    get('show donation') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_donation_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update donation') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'        
        parameter donation_name: :car, in: :body, schema: {          
         type: :object,          
         properties: {            
          donation_name: { type: :string },            
          donation_amount: { type: :integer },
          region_id:  { type: :integer },
          user_id:  { type: :integer }     
         },          
         required: %w[user_id region_id donation_name donation_amount]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_donation_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update donation') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'        
        parameter donation_name: :car, in: :body, schema: {          
         type: :object,          
         properties: {            
          donation_name: { type: :string },            
          donation_amount: { type: :integer },
          region_id:  { type: :integer },
          user_id:  { type: :integer }     
         },          
         required: %w[user_id region_id donation_name donation_amount]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_donation_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete donation') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_donation_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
