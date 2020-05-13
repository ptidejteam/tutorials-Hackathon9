IO.puts "\n\n----- Hackathon 04/2020 - Equality is hard -----\n\n"

defmodule User do
    defstruct name: "John", age: 27
    defimpl String.Chars, for: User do
        def to_string(user) do
            "#{user.name}(#{user.age} years old)"
        end
    end
end


defmodule Main do
  def main do

    IO.puts("Use of structure 'User', which default to: " <> "#{%User{}}")

    IO.puts("Operator '=='\n---------------")
    
    IO.puts("+ Reflexivity")
    IO.puts("  +++ Basic types")
    IO.puts("     (2     ==  2)      => " <> "#{(2 == 2)}")
    IO.puts("     (2.0   ==  2.0)    => " <> "#{(2.0 == 2.0)}")
    IO.puts("     (2.0   ==  2)      => " <> "#{(2.0 == 2)}")
    IO.puts("     (1.0   == 1.01)    => " <> "#{1.0 == 1.01}")
    IO.puts("  +++ Strings")
    IO.puts("     ('abc' ==  'abc')  => " <> "#{('abc' == 'abc')}")
    IO.puts("     ('' ==  '')  => " <> "#{('' == '')}")


    IO.puts("  +++ Structures")
    john = %User{}
    IO.puts("     john == john  => " <> "#{(john == john)}")

    IO.puts("  +++ Functions")
    sum1 = fn (a, b) -> a + b end
    sum2 = fn (a, b) -> a + b end
    IO.puts("     (fun  ==  fun)     => " <> "#{(sum1 == sum1)}")
    IO.puts("     (fun  ==  fun2)    => " <> "#{(sum1 == sum2)}")

    IO.puts("+ Symmetry")

    john1 = %User{}
    john2 = %User{}
    john2bis = %User{}
    
    IO.puts("  +++ Structures")
    IO.puts("     john1 == john2 => " <> "#{(john1 == john2)}")
    IO.puts("     john2 == john1 => " <> "#{(john2 == john1)}")


    IO.puts("+ Transitive")
    IO.puts("  +++ Structures")
    IO.puts("     john1 == john2bis => " <> "#{(john1 == john2bis)}")
    IO.puts("     john2bis == john2 => " <> "#{(john2bis == john2)}")





    IO.puts("\n\nOperator '==='\n---------------")

    IO.puts("+ Reflexivity")
    IO.puts("  +++ Basic types")
    IO.puts("     (2     === 2)      => " <> "#{(2 === 2)}")
    IO.puts("     (2.0   === 2)      => " <> "#{(2.0 === 2)}")
    IO.puts("     (2.0   === 2.0)      => " <> "#{(2.0 === 2.0)}")
    IO.puts("     (2     === 2.0)    => " <> "#{(2 === 2.0)}")

    IO.puts("  +++ Structures")
    john = %User{}
    IO.puts("     john === john => " <> "#{(john === john)}")

    
    IO.puts("  +++ '==' vs '==='")
    john3 = %User{age: 27.0}
    IO.puts("     john1 == john3.0  (age is 27.0, not 27) => " <> "#{(john1 == john3)}")
    IO.puts("     john1 === john3.0 (age is 27.0, not 27) => " <> "#{(john1 === john3)}")
    IO.puts("     john3.0 === john1 (age is 27.0, not 27) => " <> "#{(john3 === john1)}")


    ben1 = %User{name: "Jane"}
    IO.puts("     john1 == ben1 => " <> "#{(john1 == ben1)}")

    IO.puts("\n\nOperator '=', i.e. 'Match' operator\n---------------")
    x = 1
    1 = x
    y = 1.0
    1.0 = y
    y = x
    x = 1.0

    IO.puts(" 
    x = 1
    1 = x
    y = 1.0
    1.0 = y
    y = x
    1.0 = x

    What are the values of 'x' and 'y'?  
        x:#{x}, y:#{y}
    ")

    IO.puts("And this is because '=' means 'try to fit the value of expression on the right to the shape on the left and assigning values accordingly.'")

    IO.puts("\nPointer equality does not exist per-se but a (bad) (simple) (dirty) proxy may be developped: https://stackoverflow.com/questions/52258516/how-to-compare-two-structures-via-pointer-equality-in-elixir-erlang")

    # Accessing and updating structs
    # When we discussed maps, we showed how we can access and update the fields of a map. The same techniques (and the same syntax) apply to structs as well:

    # iex> john = %User{}
    # %User{age: 27, name: "John"}
    # iex> john.name
    # "John"
    # iex> jane = %{john | name: "Jane"}
    # %User{age: 27, name: "Jane"}
    # iex> %{jane | oops: :field}
    # ** (KeyError) key :oops not found in: %User{age: 27, name: "Jane"}

    # When using the update syntax (|), the VM is aware that no new keys will be added to the struct, allowing the maps underneath to share their structure in memory. In the example above, both john and jane share the same key structure in memory.


  end
end

Main.main

