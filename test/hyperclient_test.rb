require 'test_helper'
require 'hyperclient'

describe Hyperclient do
  describe 'new' do
    it 'creates a new EntryPoint with the url' do
      Hyperclient::EntryPoint.expects(:new).with('http://api.example.org', nil)

      Hyperclient.new('http://api.example.org')
    end

    it 'creates a new EntryPoint with the url and a block if given' do
      block = Proc.new { }
      Hyperclient::EntryPoint.expects(:new).with('http://api.example.org', block)

      Hyperclient.new('http://api.example.org', &block)
    end
  end
end
