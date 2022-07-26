# frozen_string_literal: true

include_controls 'inspec-aws'

require './test/library/common'

tfstate = StateFileReader.new

kms_key_id = tfstate.read['outputs']['kms-key']['value']['kms']['kms_key']['kms']['arn'].to_s
cw_log_id = tfstate.read['outputs']['log-group']['value']['log_group']['name'].to_s
cw_log_custom_id = tfstate.read['outputs']['log-group-custom-name']['value']['log_group']['name'].to_s
cw_log_separator_id = tfstate.read['outputs']['log-group-custom-separator']['value']['log_group']['name'].to_s
cw_log_kms_id = tfstate.read['outputs']['log-group-kms']['value']['log_group']['name'].to_s

control 'default' do
  describe aws_cloudwatch_log_group(cw_log_id) do
    it { should exist }
    its('retention_in_days') { should eq 365 }
    its('kms_key_id') { should eq nil }
    its('tags') do
      should include('Name' => '/kitchen/lg-default',
                     'environment' => 'dev',
                     'terraform' => 'true',
                     'kitchen' => 'true')
    end
  end

  describe aws_cloudwatch_log_group(cw_log_custom_id) do
    it { should exist }
    its('retention_in_days') { should eq 365 }
    its('kms_key_id') { should eq nil }
    its('tags') do
      should include('Name' => 'this-is-my-name-override',
                     'environment' => 'dev',
                     'terraform' => 'true',
                     'kitchen' => 'true')
    end
  end

  describe aws_cloudwatch_log_group(cw_log_separator_id) do
    it { should exist }
    its('retention_in_days') { should eq 365 }
    its('kms_key_id') { should eq nil }
    its('tags') do
      should include('Name' => 'kitchen-lg-default',
                     'environment' => 'dev',
                     'terraform' => 'true',
                     'kitchen' => 'true')
    end
  end

  describe aws_cloudwatch_log_group(cw_log_kms_id) do
    it { should exist }
    its('retention_in_days') { should eq 365 }
    its('kms_key_id') { should cmp kms_key_id }
    its('tags') do
      should include('Name' => 'kitchen-kms',
                     'environment' => 'dev',
                     'terraform' => 'true',
                     'kitchen' => 'true')
    end
  end
end
