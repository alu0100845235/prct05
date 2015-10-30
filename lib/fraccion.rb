#!/usr/bin/ruby

class Fraccion
    
    attr_reader :numerador, :denominador
    
    def initialize(numerador, denominador)
        # Variables de la clase
        @numerador = Integer(numerador)
        @denominador = Integer(denominador)
    end
    
    # Funciones aritmeticas
    def sumar(numerador, denominador)
        if @denominador == denominador
            @numerador = @numerador + numerador
        else
            den = mcm(@denominador, denominador)
            num = @numerador * (den/@denominador)
            num = num + (numerador * (den/denominador))
            @denominador = den
            @numerador = num
        end
        
        minimizar
    end
  
    def restar(numerador, denominador)
        if @denominador == denominador
            @numerador = @numerador - numerador
        else
            den = mcm(@denominador, denominador)
            num = @numerador * (den/@denominador)
            num = num - (numerador * (den/denominador))
            @denominador = den
            @numerador = num
        end
        
        minimizar
    end
    
    def multiplicar(numerador, denominador)
        @numerador = @numerador * numerador
        @denominador = @denominador * denominador
        
        minimizar
    end
    
    def dividir(numerador, denominador)
        @numerador = @numerador * denominador
        @denominador = @denominador * numerador
        
        minimizar
    end
    
    # Sobrecarga operador +
    def + (other)
        aux = Fraccion.new(@numerador, @denominador)
        aux.sumar(other.numerador, other.denominador)
        aux
    end
    
    # Sobrecarga operador -
    def - (other)
        aux = Fraccion.new(@numerador, @denominador)
        aux.restar(other.numerador, other.denominador)
        aux
    end
    
    # Sobrecarga operador *
    def * (other)
        aux = Fraccion.new(@numerador, @denominador)
        aux.multiplicar(other.numerador, other.denominador)
        aux
    end
    
    # Sobrecarga operador /
    def / (other)
        aux = Fraccion.new(@numerador, @denominador)
        aux.dividir(other.numerador, other.denominador)
        aux
    end
    
    # to string
    def to_s
        "#{@numerador}/#{@denominador}"
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
    
    # Indicar que fuciones son privadas y cuales publicas
    private :mcd, :mcm
    public :sumar, :restar, :multiplicar, :dividir, :minimizar, :to_s
    
end