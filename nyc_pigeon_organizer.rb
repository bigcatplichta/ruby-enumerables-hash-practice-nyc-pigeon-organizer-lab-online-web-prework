require 'pry'

def nyc_pigeon_organizer(data)
  reorg_hash = {}
  
  data.collect do | k, v |
    v.each do | key, name_list |
      name_list.each do | name |
          reorg_hash[name] = {} unless reorg_hash[name]
          if !reorg_hash[name][k] 
             reorg_hash[name][k] = [] 
          else    
          binding.pry
         
      end
    end
  end
end