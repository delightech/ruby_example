module Mod
    class ClassInMod
        def echo(val)
            puts val
        end
    end
end

m = Mod::ClassInMod.new
m.echo("abc")
