# encoding: utf-8
# vim: ft=ruby expandtab shiftwidth=2 tabstop=2

require 'spec_helper'
require 'shellwords'

describe wp_theme('twentyfifteen') do
  it { should be_installed }
  it { should be_enabled }
end

describe wp_plugin('contact-form-7') do
  it { should be_installed }
  it { should be_enabled }
end

describe wp_plugin('akismet') do
  it { should be_installed }
  it { should be_disabled }
end

describe wp_option('permalink_structure') do
  its(:value) { should eq '/archives/%post_id%' }
end

describe wp_user('admin') do
  it { should be_exist }
  it { should have_role 'administrator' }
end

