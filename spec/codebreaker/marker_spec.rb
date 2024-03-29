require 'spec_helper'

module Codebreaker
	describe Marker do
		
		describe "#exact match count" do
			context "with no matches" do
				it "returns 0" do
					marker = Marker.new('1234','5555')
					marker.exact_match_count.should == 0
				end
			end

			context "with 1 exact match" do
				it "returns 1" do
					marker = Marker.new('1234','1555')
					marker.exact_match_count.should == 1
				end
			end

			context "with 1 number match" do
				it "returns 1" do
					marker = Marker.new('1234','2555')
					marker.exact_match_count.should == 0
				end
			end

			context "with 1 exact match and 1 number match" do
				it "returns 1" do
					marker = Marker.new('1234','1355') 
					marker.exact_match_count.should == 1
				end
			end
		end

		describe "#number match count" do
			context "with no matches" do
				it "returns 0" do
					marker = Marker.new('1234','5555')
					marker.number_match_count.should == 0
				end
			end

			context "with 1 exact match" do
				it "returns 1" do
					marker = Marker.new('1234','1555')
					marker.number_match_count.should == 0
				end
			end

			context "with 1 number match" do
				it "returns 1" do
					marker = Marker.new('1234','2555')
					marker.number_match_count.should == 1
				end
			end

			context "with 1 exact match and 1 number match" do
				it "returns 1" do
					marker = Marker.new('1234','1355') 
					marker.number_match_count.should == 1
				end
			end
		end

	end
end