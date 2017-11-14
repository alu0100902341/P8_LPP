require "./lib/gema/alimento"

class Grupo_alimento < Alimento
include Comparable
attr_reader :nombre_gp


	def initialize(nombre_grupo, datos_alimento)


		@nombre_gp = nombre_grupo

		super(datos_alimento[0], datos_alimento[1], datos_alimento[2], datos_alimento[3])

	end

	def to_s

		"Grupo: #{@nombre_gp}"
		super

	end

	def <=>(other) #1 if self>other; 0 if self==other; -1 if self<other
		puts "Nombre GP :  #{@nombre_gp} == #{other.nombre_gp}"
		comparison = @nombre_gp <=> other.nombre_gp
		if comparison == 0
			puts "Nombre Alimento :  #{@nombre} == #{other.nombre}"
			comparison = @nombre <=> other.nombre
			if comparison == 0
				puts "Kcal :  #{self.kcal} == #{other.kcal}"
				comparison = self.kcal <=> other.kcal
			end
		end

		return comparison

	end

	def <(other) # self < other = -1
		puts "#{self.kcal} < #{other.kcal}"
		self.kcal <=> other.kcal
	end

	def >(other) # self > other = 1
		puts "#{self.kcal} < #{other.kcal}"
		self.kcal <=> other.kcal
	end

	def <=(other) # self <= other = -1 || 0
		puts "#{self.kcal} <= #{other.kcal}"
		self.kcal <=> other.kcal
	end

	def >=(other) # self >= other = 1 || 0
		puts "#{self.kcal} >= #{other.kcal}"
		self.kcal <=> other.kcal
	end


end
