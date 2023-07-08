def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

Discussion
Our solution breaks the problem down into two smaller problems: printing a single row of the diamond, and a method to iterate through those rows.

Iterating through the rows is most easily handled if you recognize that the bottom part of the diamond is the mirror image of the top part, with the center row of the diamond between these two parts. Our solution takes this into account and iterates first from the first row to the middle row of the diamond, and then iterates in the reverse direction from the row just below the center to the bottom row. We use the variable distance to keep track of how far we are from the center row, with the center row being a distance of 0 from itself.

For each iteration, we call the print_row method. print_row uses the grid size and the distance from the center row to determine how many stars are needed, and to center those stars within our grid.

We could have done all this in one method, but the result would have either been pretty messy, or it would repeat itself. By breaking things down into sub-problems, we were able to solve this problem easily.

Further Exploration
Try modifying your solution or our solution so it prints only the outline of the diamond:

diamond(5)

  *
 * *
*   *
 * *
  *