
modal_split_okra <- data.frame(
  group = 1:6,
  car_availability = c(FALSE, FALSE, TRUE, TRUE, TRUE, TRUE),
  distance = c("walking distance", "further away", "walking distance", 
               "walking distance", "further away", "further away"),
  user_type = c("mixed", "mixed", "staff", "student", "staff", "student"),
  car_pct = c(1, 2, 52, 33, 75, 45),
  public_transport_pct = c(39, 84, 16, 27, 14, 45),
  bike_pct = c(10, 9, 12, 9, 9, 7),
  walk_pct = c(49, 5, 20, 30, 2, 2),
  description = c(
    "no car availability, living within walking distance from the university",
    "no car availability, living further away from the university",
    "car availability, living within walking distance from the university, member of staff",
    "car availability, living within walking distance from the university, student",
    "car availability, living further away from the university, member of staff",
    "car availability, living further away from the university, student"
  )
)

# Print the dataframe
print(modal_split_okra)

# Check that percentages sum to approximately 100% for each group
rowSums(modal_split_okra[, c("car_pct", "public_transport_pct", "bike_pct", "walk_pct")])
