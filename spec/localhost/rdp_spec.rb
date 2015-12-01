require 'spec_helper'

describe port(3389) do
  it { should be_listening.with('tcp') }
end
