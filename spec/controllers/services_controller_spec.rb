
require 'rails_helper'
RSpec.describe Admin::ServicesController, type: :controller do
describe 'GET #new' do
      it 'returns http success' do
        get :new
        expect(response).to have_http_status(:success)
      end
      it 'assigns @service to a new Service' do
        service = create(:service)
        get :new, params: {id: service.to_param}
        expect(assigns(:service)).to be_a_new(Service)
      end
    end
describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
      end
      it 'assigns @services to Service.all' do
        service = create(:service)
        get :index
        expect(assigns(:services)).to eq([service])
      end
    end
describe 'POST #update' do
      let(:service) {create(:service)}
      let(:valid_attributes) { attributes_for(:service )}
      let(:new_attributes) { attributes_for(:updated_service)}
      let(:invalid_attributes) { attributes_for(:invalid_service)}
      it 'updates attributes for service' do
        patch :update, params: {id: service.to_param,service: new_attributes}
        service.reload
        # expect(service.name).to eq('example')
        # expect(service.points).to eq(800)
      end
      it 'redirects on update' do
        patch :update, params: {id: service.to_param,service: new_attributes}
        expect(response).to redirect_to(admin_services_path)
      end
      it 'renders a flash message on update' do
        patch :update, params: {id: service.to_param,service: new_attributes}
        expect(flash[:notice]).to be_present
      end
      it 'renders a flash message on failure to update' do
        patch :update, params: {id: service.to_param,service: invalid_attributes}
        expect(flash[:alert]).to be_present
      end
      it 'fails to update service' do
        expect(build(:invalid_service)).to be_invalid
      end
      it 'redirects to edit template on failure to update service' do
        patch :update, params: {id: service.to_param,service: invalid_attributes}
        expect(response).to redirect_to(edit_admin_service_path(service))
      end
    end
describe 'POST #create' do
      let(:service) {create(:service)}
      let(:valid_attributes) { attributes_for(:service )}
      let(:invalid_attributes) { attributes_for(:invalid_service)}
      it 'creates a new service' do
        expect{
          post :create, params: {service: valid_attributes}
        }.to change(Service, :count).by(1)
      end
      it 'redirects on save' do
        post :create, params: {service: valid_attributes}
        expect(response).to redirect_to(admin_services_path)
      end
      it 'renders a flash message on save' do
        post :create, params: {service: valid_attributes}
        expect(flash[:notice]).to be_present
      end
      it 'fails to create a new service' do
        expect(build(:invalid_service)).to be_invalid
      end
      it 'redirects to new template on failure to save new service' do
        post :create, params: {service: invalid_attributes}
        expect(response).to redirect_to(new_admin_service_path)
      end
    end
describe 'GET #show' do
      it 'returns http success' do
        service = create(:service)
        get :show, params: {id: service.to_param}
        expect(response).to have_http_status(:success)
      end
      it 'assigns @service to a Service' do
        service = create(:service)
        get :show, params: {id: service.to_param}
        expect(assigns(:service)).to eq(service)
      end
    end
describe 'GET #edit' do
      it 'returns http success' do
        service = create(:service)
        get :edit, params: {id: service.to_param}
        expect(response).to have_http_status(:success)
      end
      it 'assigns @service to a Service' do
        service = create(:service)
        get :edit, params: {id: service.to_param}
        expect(assigns(:service)).to eq(service)
      end
    end
describe 'DELETE #destroy' do
      let(:service) {build(:service)}
      it 'destroys a service' do
        service.save
        expect {
          delete :destroy, params: {id: service.to_param }
        }.to change(Service, :count).by(-1)
      end
      it 'renders a flash message after delete' do
        service.save
        delete :destroy, params: {id: service.to_param }
        expect(flash[:notice]).to be_present
      end
      it 'redirects to services_path after destroy' do
        service.save
        delete :destroy, params: {id: service.to_param }
        expect(response).to redirect_to(admin_services_path)
      end
    end
end
