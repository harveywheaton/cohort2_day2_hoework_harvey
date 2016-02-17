/A library of functions from Cohort 1 Day 2 that perform a varety of functions (see comments within each function for details of each one).  This library is tested by the test suite contained in ruby_functions_spec.rb and is a demonstration of TDD. HW/


/ return_10 - returns a fixednum 10/
def return_10()
  return(10)
end

/ add - exects two numbers, returns the sum/
def add(a,b)
  return a+b
end

/subtract - expects two numbers a and b, returns a minus b/
def subtract(a,b)
  return a-b
end

/multiply - expects two numbers a and b, returns a times b/
def multiply(a,b)
  return a*b
end

/divide - expects two numbers a and b, returns a divided by b/
def divide(a,b)
  return a/b
end

/length_of_string - returns the length of a single string passed to the function/
def length_of_string(string)
  return string.length
end

/join_string - returns concatenation of the two passed strings/
def join_string(str1,str2)
  return str1+str2
end

/add_string_as_number - takes two strings, converts to a number and returns the sum as a number/
def add_string_as_number(str1,str2)
  return str1.to_i+str2.to_i
end

/takes a number 1-12 and returns the full month name/
def number_to_full_month_name(month_number)
  months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
  return months.at(month_number-1)
end
/takes a number 1-12 and returns the 3 shar short month name/
def number_to_short_month_name(month_number)
  short_months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
  return short_months.at(month_number-1)
end

/returns the volume of a cube given the edge length/
def volume_of_cube(cube_length)
  return cube_length**cube_length
end

/volume_of_sphere - returns the volume of a sphere when passed the radius/
def volume_of_sphere(radius)
  return (radius**radius)*3.14
end

/days_until-christmas - returns days until Xmas of the CURRENT year from the date passed as a parameter/
def days_until_christmas(start_date)

  current_date = Time.new
  current_year=current_date.year

  if current_date.month == 12 && current_date.day >25 then
    current_year=current_year+1
  end

  xmas = Date.new(current_year.to_i,12,25)

  return (xmas-start_date).to_i

end

/age_of_person - takes a date as a parameter and returns the persons age in years/
def age_of_person(birth_date)
  current_year = Time.new.year.to_int
  birth_year = birth_date.year.to_int
  return current_year-birth_year

end



