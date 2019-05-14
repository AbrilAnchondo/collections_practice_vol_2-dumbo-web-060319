# your code goes here
def begins_with_r(array)
  if array.all? do |item|
       item[0] == "r" 
     end
   true
  else
   false
  end
end

def contain_a(array)
  elements = []
  array.each do |item|
   if item.include?"a"
     elements.push(item)
   end
  end 
  elements
end

def first_wa(array)
  
  array.each do |item|
    if item[0,2] == "wa"
     return item
    end
  end
end 

def remove_non_strings(array)
  answer = []
  array.each do |item|
    if item.class == String
       answer << item
     end
  end
answer
end

def count_elements(array)
   #name_hash = Hash.new(0)
   #array.each {|item| name_hash[item] +=1 }
   #name_hash
   
   #array.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
   
   array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(data, more_data)
  data.merge(more_data)
  
  
end