"""
G(t) - Расход массовый
p(t) - Давление
T(t) - Температура
x(t) - мольная доля компонента
"""
@connector Stream begin
    G(t), [connect = Flow] # Расход массовый
    p(t)
    T(t)
    #x(t)
end

@mtkmodel OneStream begin
    @components begin
        in = Stream()
        out = Stream()
    end
    @variables begin #[guess = 0.0]
        Δp(t) 
        ΔT(t)   #[guess = 0.0]
        G(t)    #[guess = 0.1]
    end
    @equations begin
        Δp ~ in.p - out.p
        ΔT ~ in.T - out.T
        G ~ in.G
        in.G ~ out.G
    end
end
