# todo_list Tests
complete => takes no args and returns instance array of completes
incomplete => takes no args and returns instance array of incompletes
give_up! => takes no args - moves all items from incomplete to complete

# todo tests
task => returns instance variable @task as a string
mark_done! => ????
done? => check @task is inside complete array. Maybe check incomplete to make sure it exists

# Integration tests
add(String) => pushes to instance variable => check via incomplete method
give_up! => iterates over incomplete calls mark_done! to move them to complete
