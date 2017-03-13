require 'spec_helper'

describe 'infinality::install' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let :facts do
        facts
      end

      context 'configure the infinality ppa' do
        it { should contain_apt__ppa('ppa:no1wantdthisname/ppa') }
      end

      context 'install infinality with defaults' do
        it { should contain_package('fontconfig-infinality').with_ensure('latest') }
        it { should contain_package('libcairo-gobject2').with_ensure('latest') }
        it { should contain_package('libcairo2').with_ensure('latest') }
        it { should contain_package('libfreetype6').with_ensure('latest') }
      end

      it { should contain_apt__ppa('ppa:no1wantdthisname/ppa').that_notifies('Class[apt::update]') }
      it { should contain_package('fontconfig-infinality').that_requires('Class[apt::update]') }
      it { should contain_package('libcairo-gobject2').that_requires('Class[apt::update]') }
      it { should contain_package('libcairo2').that_requires('Class[apt::update]') }
      it { should contain_package('libfreetype6').that_requires('Class[apt::update]') }
    end
  end
end
