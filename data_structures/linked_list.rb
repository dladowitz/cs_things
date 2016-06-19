class List
  def initialize
    @head = nil
    @tail = nil
  end

  def push(character)
    entry = Entry.new(character)

    if @head == nil
      @head = entry
      @tail = entry
    else
      @tail.next = entry
      @tail = entry
    end
  end

  def pop
    original_tail = @tail
    current_entry = @head

    (self.length - 2).times do |entry|
      current_entry = current_entry.next
    end

    current_entry.next = nil
    @tail = current_entry

    return original_tail.data
  end

  def show
    print "<["

    unless @head
      print " "
    else
      current_entry = @head

      while true
        print current_entry.data

        if current_entry.next
          print ", "
          current_entry = current_entry.next
        else
          break
        end
      end
    end

    print "]>"
    puts ""
  end

  def length
    unless @head
      return 0
    else
      count = 1
      current_entry = @head

      while true
        if current_entry.next
          count += 1
          current_entry = current_entry.next
        else
          break
        end
      end
    end

    return count
  end


end

class Entry
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

list = List.new
# puts list.show

list.push(5)
list.push(10)
list.push("A")
list.push("B")

list.show
puts list.length
puts list.pop
list.show
