def toggle_light(n)
  lights = (1..n).to_a
  lights.each_with_object({}) do |light, hash|
    light.step(by: light, to: n) do |toggle|
      hash[toggle] == 'on' ? hash[toggle] = 'off' : hash[toggle] = 'on'
    end
  end.select { |key, value| value == 'on' }.keys
end

toggle_light(5)
toggle_light(10)
toggle_light(1000)
