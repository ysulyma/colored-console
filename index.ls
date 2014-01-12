color = (code) ->
  ->
    process.stdout.write "\033[#{code}m"
    console.log ...
    process.stdout.write "\033[0m"

module.exports =
  color: color
  
  red   : color '0;31'
  green : color '0;32'
  brown : color '0;33'
  blue  : color '0;34'
  purple: color '0;35'
  
  alt: (->
    colors = <[ red green brown blue purple ]>
    ctr = 0
    ->
      @[colors[ctr++]] ...
      ctr %= colors.length
  )!
