# An empty array to store tasks
tasks = []

# Display welcome message
puts "Welcome to our ToDo List!"

# Main loop for the application
loop do
  # Prompt the user for an action
  puts "\nWhat would you like to do?"
  puts "1. Add a task"
  puts "2. View your current tasks"
  puts "3. Mark a task as completed"
  puts "4. Exit"
  print "Enter your choice (1-4): "
  choice = gets.chomp.to_i

  case choice
  when 1
    # Add a task to the list
    print "Enter a task: "
    task = gets.chomp
    tasks << task
    puts "Task '#{task}' has been added to your list."
  when 2
    # View the current tasks
    puts "\nYour current tasks are:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  when 3
    # Mark a task as completed
    puts "\nWhich task would you like to mark as completed?"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
    print "Enter the number of the task to mark as completed: "
    task_number = gets.chomp.to_i
    if task_number > 0 && task_number <= tasks.length
      completed_task = tasks.delete_at(task_number - 1)
      puts "Task '#{completed_task}' has been marked as completed."
    else
      puts "Invalid task number."
    end
  when 4
    # Exit the application
    puts "Goodbye!"
    exit
  else
    # Invalid choice
    puts "Invalid choice. Please enter a number between 1 and 4."
  end
end