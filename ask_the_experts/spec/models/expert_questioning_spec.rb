require_relative '../spec_helper_lite.rb'
needs 'models'
require 'expert_questioning'

describe ExpertQuestioning do

  context 'when starting the questioning' do
    it "assigns an available expert to the question"
    it "notifies the questioner that the answer is qued"
    it "notifies the assigned expert of the question"
  end

  context 'when finishing the question' do
    it 'stores the expert answer'
    it 'notifies the questioner of the answer'
  end

  it 'initializes with a questioner and a question' do
    questioner = Object.new
    question = "what?"
    expect {
      described_class.new(questioner, question)
    }.to_not raise_error
  end

  it 'errors without a questioner and question' do
    expect { described_class.new }.to raise_error(ArgumentError, "wrong number of arguments (given 0, expected 2)")
  end

end
