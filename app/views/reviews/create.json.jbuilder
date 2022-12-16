if @review.id
  json.newReview render(partial: 'restaurants/review', formats: [:html], locals: { review: @review })
  json.newForm render(partial: 'reviews/form', formats: [:html], locals: { restaurant: @restaurant, review: Review.new })
else
  json.newForm render(partial: 'reviews/form', formats: [:html], locals: { restaurant: @restaurant, review: @review })
end
