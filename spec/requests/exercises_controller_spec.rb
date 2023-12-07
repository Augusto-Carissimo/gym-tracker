require 'rails_helper'

RSpec.describe "ExercisesController", type: :request do
  let!(:exercise) { create(:exercise) }

  describe 'Exercise#index' do
    it 'render index template' do
      get exercises_path
      expect(assigns[:exercises]).to eq([exercise])
      expect(response).to render_template(:index)
      expect(response).to have_http_status(:ok)
      expect(response).to be_successful
    end
  end

  describe 'Exercise#show' do
  it 'render show template' do
    get exercise_path(exercise)
    expect(response).to render_template(:show)
    expect(response).to have_http_status(:ok)
    expect(response.body).to include(exercise.name)
  end
end

  describe 'Exercise#new' do
    it 'render new template' do
      get new_exercise_path
      expect(response).to render_template(:new)
      expect(response).to have_http_status(:ok)
      expect(assigns[:exercise]).to be_a(Exercise)
    end
  end

  describe 'Exercise#create' do
    it 'creates Exercise' do
      expect { post exercises_path, params: { exercise: { name: 'Squat' } } }
        .to change(Exercise, :count).by(1)
      expect(Exercise.last.name).to eq('Squat')
      expect(response).to have_http_status(200)
    end
  end

  describe 'Exercise#edit' do
    it 'render edit template' do
      get edit_exercise_path(exercise)
      expect(response).to render_template(:edit)
      expect(response).to have_http_status(:ok)
      expect(response).to be_successful
    end
  end


  describe 'Exercise#update' do
    it 'update Exercise name' do
      patch exercise_path(exercise), params: { exercise: { name: 'Deadlift' } }
      expect(exercise.reload.name).to eq('Deadlift')
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(exercise_path)
    end
  end

  describe 'Exercise#destroy' do
    it 'delete Exercise' do
      expect { delete exercise_path(exercise) }.to change(Exercise, :count).by(-1)
    end
  end
end

