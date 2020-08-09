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

# Generate a list of strings with the name and size (eg. "Alpha - 30")
def company_strings(companies)
    companies.map do |company|
        "#{company.name} - #{company.size}"
    end
end 

p company_strings(companies)


#Combine all the sizes with reduce
def sizes(companies)
    companies.reduce(0) do |sum, company|
       sum + "#{company.size}".to_i
    end 
end 

p sizes(companies)


#Filter the list to show only companies over 100
def companies_over_100_employees(companies)
    companies.select do |company|
        if company.size > 100
            "#{company.name}"
        end 
    end
end

p companies_over_100_employees(companies)


#Find the company named "Beta"
def company_name_beta(companies)
    companies.find do |company|
        if company.name == 'Beta'
            company
        end
    end 
end 

p company_name_beta(companies)


#Find the largest company
def largest_company(companies)
    values = companies.map do |company|
        company.size
    end
    max = values.max
    companies.find do |company|
        if max == company.size
            return company.name
        end
    end
end 

p largest_company(companies)

#Sort the companies from largest to smallest
def sort(companies)
    companies.sort_by do |company|
        -company.size
    end 
end 

p sort(companies)