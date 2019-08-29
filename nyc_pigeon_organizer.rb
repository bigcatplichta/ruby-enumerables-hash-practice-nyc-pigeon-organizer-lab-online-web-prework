def nyc_pigeon_organizer(data)
  reorg_hash = {}
  
  data.collect do | k, v |
    v.each do | key, name_list |
      name_list.each do | name |
          reorg_hash[name] = {} unless reorg_hash[name]
          if !reorg_hash[name][k]
          reorg_hash[name][k] = [key.to_s] 
          else 
          reorg_hash[name][k].push(key.to_s)
          end
      end
    end
  end
  reorg_hash
end