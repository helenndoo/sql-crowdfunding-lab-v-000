# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_FROM_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT projects.title , SUM(pledges.amount) FROM projects, pledges where projects.id = pledges.project_id group by title order by title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT users.name, users.age, SUM(pledges.amount) FROM users, pledges where users.id = pledges.user_id group by name order by name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT projects.title , (SUM(pledges.amount)-projects.funding_goal) AS goal FROM projects, pledges where projects.id = pledges.project_id group by title order by goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT users.name, SUM(pledges.amount) FROM users, pledges where users.id = pledges.user_id group by users.name order by SUM(pledges.amount) asc"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category, pledges.amount FROM projects, pledges where projects.category='music' AND projects.id = pledges.project_id"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT category, SUM(pledges.amount) FROM projects
JOIN pledges
ON projects.id = pledges.projects_id
WHERE pledges.category = 'books';"
end
