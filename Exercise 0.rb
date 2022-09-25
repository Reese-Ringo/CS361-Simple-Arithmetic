=begin

Name: Reese Ringo

This program includes basic arithmetic functions, including checking for divide by zero errors and a usage message.

=end

def add(n1, n2)
    @out = n1 + n2
    puts @out.to_f
end

def sub(n1, n2)
    @out = n1 - n2
    puts @out.to_f
end

def mul(n1, n2)
    @out = n1 * n2
    puts @out.to_f
end

def div(n1, n2)
    if n2 === 0
        puts "Can't divide by zero"
    else
        @out = n1 / n2
        puts @out.to_f
    end
end

def calc()
    while true do
        print "SuperMathyBot> "
        @command = gets.split
        #print @command
        @op = @command[0]
        @param1 = @command[1].to_f
        @param2 = @command[2].to_f

        if @op === "add"
            add(@param1, @param2)
        elsif @op === "sub"
            sub(@param1, @param2)
        elsif @op === "mul"
            mul(@param1, @param2)
        elsif @op === "div"
            div(@param1, @param2)
        elsif @op === "quit"
            break
        else
            puts "usage: add|sub|mul|div v0 v1
            quit"
        end
    end
end

calc()