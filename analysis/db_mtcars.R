mtcars |> 
  ggplot(
    aes(
      x = cyl,
      y = hp,
      shape = as.factor(gear)
    )
  )+
  geom_point()+
  geom_smooth(
    method = "lm"
  )


mtcars |> 
  ggplot(
    aes(
      x = cyl,
      y = hp
    )
  )+
  geom_point()