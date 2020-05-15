require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this
 def generate_list_of_companies companies
    companies.map { |company| "#{company.name} - #{company.size}" }
 end

def combine_company_sizes companies
    companies.reduce(0) { |combined_size, company| combined_size += company.size }
end

def select_companies_over_some_size companies, size
    companies.select { |company| company.size > size}
end

def show_companies_over_100 companies
    select_companies_over_some_size(companies, 100)
end

def find_company_by_name companies, name
    companies.find { |company| company.name == name }
end

def find_company_named_Beta companies
    find_company_by_name(companies, "Beta")
end

def find_largest_company companies
    companies.reduce { |largest_company, company|
        company.size > largest_company.size ?
            largest_company = company : largest_company }
end

def sort_companies_by_largest_size companies
    companies.sort { |company_a, company_b| company_b.size <=> company_b.size }
end
 binding.pry