#!/usr/bin/ruby

class Fraccion
    
    attr_reader :numerador, :denominador
    
    def initialize(numerador, denominador)
        # Variables de la clase
        @numerador = Integer(numerador)
        @denominador = Integer(denominador)
        minimizar
    end
    
    # Maximo Comun Divisor
    def mcd(a, b)
        n1, n2 = a.abs, b.abs
        while n2 > 0
            n1, n2 = n2, n1 % n2
        end
        n1
    end
    
    # Minimo Comun Multiplo
    def mcm(a, b)
        ((a * b) / mcd(a, b))
    end
    
    # Minimizar funcion
    def minimizar
        if @numerador != 0 && @denominador !=0
            n = mcd(@numerador, @denominador)
            
            @numerador = @numerador / n
            @denominador = @denominador / n
        end
        nil
    end
    
    # Sobrecarga operador +
    def + (other)
        n = 0
        d = 0
        if @denominador == other.denominador
            n = @numerador + other.numerador
            d = @denominador
        else
            d = mcm(@denominador, other.denominador)
            n = @numerador * (d/@denominador)
            n = n + (other.numerador * (d/other.denominador))
        end
        
        Fraccion.new(n, d)
    end
    
    # Sobrecarga operador -
    def - (other)
        n = 0
        d = 0
        if @denominador == other.denominador
            n = @numerador - other.numerador
            d = @denominador
        else
            d = mcm(@denominador, other.denominador)
            n = @numerador * (d/@denominador)
            n = n - (other.numerador * (d/other.denominador))
        end
        
        Fraccion.new(n, d)
    end
    
    # Sobrecarga operador *
    def * (other)
        n = @numerador * other.numerador
        d = @denominador * other.denominador
        
        Fraccion.new(n, d)
    end
    
    # Sobrecarga operador /
    def / (other)
        n = @numerador * other.denominador
        d = @denominador * other.numerador
        
        Fraccion.new(n, d)
    end
    
    # to string
    def to_s
        "#{@numerador}/#{@denominador}"
    end
    
    # Indicar que fuciones son privadas y cuales publicas
    private :mcd, :mcm, :minimizar
    public :to_s
    
end