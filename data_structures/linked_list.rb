class List
  def initialize
    @head = nil
    @tail = nil
  end

  def push(entry)
    if @head == nil
      @head = entry
      @tail = entry
    else
      @tail.next = entry
      @tail = entry
    end
  end

  def show
    at_tail = false
    print "<["

    unless @head
      print " "
    else
      current_entry = @head

      while at_tail == false
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

e1 = Entry.new(5)
e2 = Entry.new(10)
e3 = Entry.new(15)

list.push(e1)
list.push(e2)
list.push(e3)

list.show
