
@mtkmodel TankOut begin
    @components begin
        out = Stream()
    end
    @parameters begin
        d = 1.0 # Sets the default resistance
        #H = 10.0
        p = 101320.0
        ρ = 1000.0
        g = 9.8
        T = 300.0
    end
    @variables begin
        H(t)
        V(t)
    end
    @equations begin
        H ~ (4 * V)/(pi*d^2)
        out.p ~ p + ρ * g * H
        D(V) ~ out.G/ρ
        out.T ~ T
    end
end



@mtkmodel TankIn begin
    @components begin
        in = Stream()
    end
    @parameters begin
        d = 1.0
        Ht = 10.0
        p = 101320.0
        ρ = 1000.0 
        g = 9.8
    end
    @variables begin
        H(t)
        V(t)
    end
    @equations begin
        H ~ (4 * V)/(pi*d^2)
        in.p ~ p + ρ * g * H
        D(V) ~ -in.G/ρ
    end
end