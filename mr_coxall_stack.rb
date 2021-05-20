#!/usr/bin/env ruby

##
# This program pushes a user input to a program with a class containing an
# arraylist. Then pops and peeks it.
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-20
# frozen_string_literal: true

# This class adds a number to a stack
class MrCoxallStack
  # Initializes the array
  def initialize
    @array_list = []
  end

  # Method that add the number to the array
  def push_arr(push_number)
    @array_list.push(push_number)
  end

  # Method that returns the last element in the array
  def peek_stack
    @array_list[@array_list.length.to_i - 1]
  end

  # Method that removes the last element and returns it
  def pop_stack
    raise RangeError if @array_list.size.to_i.zero?

    @array_list.pop
  end

  # Creates a string with the user inputted number
  def show_stack
    counter = 0
    new_string = ''
    if !@array_list.empty?
      # Loop for the size of the array
      while counter != @array_list.length.to_i
        # Adds the elements to the array
        new_string = if counter != @array_list.length.to_i - 1
                       "#{new_string}#{@array_list[counter]}, "
                     else
                       new_string + @array_list[counter].to_s
                     end
        counter += 1
      end
    else
      new_string = 'null'
    end
    # Returns the new string
    new_string
  end
end
