(rps("rock", "paper"),  => "paper"
rps("rock", "scissors")) => "rock"
(rps("rps("rock", "paper")", rps("rock", "scissors")), "rock")
-> (rps("paper", "rock"), "rock")
=> ("paper", "rock")

rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
rps(rps("paper", "rock"), "rock")
rps("paper", "rock")
=> "paper"