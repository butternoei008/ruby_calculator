secret_word = "noei"
guessing = ""
guess_count = 0
guess_limit = 3
out_of_guessing = false

while secret_word != guessing and !out_of_guessing
    if guess_count < guess_limit
        puts "Enter secert word: "
        guessing = gets.chomp()
        guess_count += 1
    else 
        out_of_guessing = true
    end
end

if out_of_guessing
    puts "You lose"
else
    puts "You won!!!"
end