require_relative 'helpers.rb'


class BinarySearch
  include MyHelpers

  def initialize
    @answer = nil
    @upper_bound = nil
    @reasonable_min = 0
    @reasonable_max = nil
    @steps = 0

    start
  end

  private

  def start
    puts "\nStarting......"
    set_start_params
    run_search
  end


  def set_start_params
    set_upper_bound
    set_answer
  end


  def run_search
    current_guess = nil
    puts " "

    while current_guess != @answer
      @steps += 1
      current_guess = make_guess

      check_answer(current_guess)
    end
  end

  def check_answer(current_guess)
    if current_guess > @answer
      @reasonable_max = current_guess - 1
      puts "Guess is too high. New range is between #{@reasonable_min} and #{@reasonable_max}"
    elsif current_guess < @answer
      @reasonable_min = current_guess + 1
      puts "Guess is too low. New range is between #{@reasonable_min} and #{@reasonable_max}"
    else
      puts "Yep we found the answer in #{@steps} #{pluralize(@steps, 'step')}."
      puts "It is #{@answer}."
    end
  end


  def make_guess
    guess = (@reasonable_max + @reasonable_min) / 2
    puts "Guess ##{@steps} is: #{guess}."

    return guess
  end


  # TODO see if we can combine these methods
  def set_upper_bound
    choice = nil
    puts "First I need an upper limit for the search."
    puts "Enter (1) to choose it your self."
    puts "Enter (2) and I'll set it myself."

    while choice != "1" && choice != "2"
      choice = gets.chomp
      if choice == "1"
        puts "What do you want to set the upper bound to be?"
        @upper_bound = gets.chomp.to_i
      elsif choice == "2"
        @upper_bound = rand 100000
      else
        puts "I don't understand that. Please enter a 1 or a 2."
      end
    end
    @reasonable_max = @upper_bound
    puts "Great, the upper bound is set at #{@upper_bound}."
  end


  def set_answer
    choice = nil
    puts "\nI also need an answer for the search."
    puts "Enter (1) to choose it your self."
    puts "Enter (2) and I'll set it myself."

    while choice != "1" && choice != "2"
      choice = gets.chomp
      if choice == "1"
        puts "What do you want the answer to be?"
        @answer = gets.chomp.to_i
      elsif choice == "2"
        @answer = rand @upper_bound
      else
        puts "I don't understand that. Please enter a 1 or a 2."
      end
    end

    puts "Great, the answer is set at #{@answer}."
  end
end
