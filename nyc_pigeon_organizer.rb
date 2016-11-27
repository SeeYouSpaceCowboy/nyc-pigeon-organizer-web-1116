def nyc_pigeon_organizer(data)
  new_data = {}

  name = []
  data.each{|key, value|
    value.each{|key, value|
      value.each{|key, value|
        name.push(key)
      }
    }
  }

  name.uniq!

  name.each{|name|
    new_data[name] = {}
    data.each{|key, value|
      new_data[name][key] = []
    }
  }

  data.each{|key, value|
    if key == :color
      value.each{|key, value|
        new_data.each{|k, v|
          if value.include?(k)
            new_data[k][:color].push(key.to_s)
          end
        }
      }
    elsif key == :gender
      value.each{|key, value|
        new_data.each{|k, v|
          if value.include?(k)
            new_data[k][:gender].push(key.to_s)
          end
        }
      }
    elsif key == :lives
      value.each{|key, value|
        new_data.each{|k, v|
          if value.include?(k)
            new_data[k][:lives].push(key.to_s)
          end
        }
      }
    end
  }

  new_data
end
