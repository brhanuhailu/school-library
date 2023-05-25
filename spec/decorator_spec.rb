require_relative './decorator/base'

describe Decorator do
    describe '#initialize' do
        it 'should create a new decorator' do
        decorator = Decorator.new('decorator')
        expect(decorator).to be_an_instance_of(Decorator)
        end
    end
    
    describe '#name' do
        it 'should return the name of the decorator' do
        decorator = Decorator.new('decorator')
        expect(decorator.name).to eql('decorator')
        end
    end
    end