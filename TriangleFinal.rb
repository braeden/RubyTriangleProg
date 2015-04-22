#Methods
#Rest of program starts on line 200


def calcLawSin
	puts "Do you know 2 sides + 1 angle (A), OR 2 angles + 1 side (B)?"
	angle = gets.chomp
	case angle.downcase
		when 'a'
			puts "Input Side A (Opposite of Unknown Angle--ANGLE A)"
			sideA = gets.chomp.to_f
			puts "Input Side B (Opposite of Known Angle--ANGLE B)"
			sideB = gets.chomp.to_f
			puts "Input Angle B (Opposite of Known Side--SIDE B)"
			angleB = gets.chomp.to_f
			angleBdeg = angleB.to_rad
			ans = Math.asin(Math.sin(angleB)*sideA/sideB)
			puts ""
			puts "If angle(s) were in radians."
			puts ""
			puts "Angle A in Radians:"
			puts ans.round(3)
			puts "Angle A in Degrees:"
			puts ans.to_deg.round(3)
			puts ""
			#Math Assuming degrees
			ansDeg = Math.asin(Math.sin(angleBdeg)*sideA/sideB)
			puts "If angle(s) were in degrees."
			puts ""
			puts "Angle A in Degrees:"
			puts ansDeg.to_deg.round(3)
			puts "Angle A in Radians:"
			puts ansDeg.round(3)
		when 'b'
			puts "Input Side A (Opposite of Known Angle--ANGLE A)"
			sideA = gets.chomp.to_f
			puts "Input Angle A (Opposite of Known Side--SIDE A)"
			angleA = gets.chomp.to_f
			angleAdeg = angleA.to_rad
			puts "Input Angle B (Opposite of Unknown Side--SIDE B)"
			angleB = gets.chomp.to_f
			angleBdeg = angleB.to_rad
			ans = sideA * Math.sin(angleB)/Math.sin(angleA)
			puts ""
			puts "If angle(s) were in radians."
			puts ""
			puts "Side B:"
			puts ans.round(3)
			puts ""
			#Math Assuming degrees
			ansDeg  = sideA * Math.sin(angleBdeg)/Math.sin(angleAdeg)
			puts "If angle(s) were in degrees."
			puts ""
			puts "Side B:"
			puts ansDeg.round(3)
		#Redone and revised Braeden Smith
		#Everything is functional now
		#Note: The method is not a real method due to the original set up, as well as the 2 possible choices
		else
			puts "Please enter A or B"
		end
end

def calcLawCos
	puts "Do you know: 3 sides (A), 
OR
1 Angle and the Sides that create it (B), 
OR 
1 Angle and 1 Side that creates it and the Side opposite the Angle (C)?"
	angle = gets.chomp
	case angle.downcase
		when 'a'
			puts "Input Side A:"
			sideA = gets.chomp.to_f
			puts "Input Side B:"
			sideB = gets.chomp.to_f
			puts "Input Side C"
			sideC = gets.chomp.to_f
			angleA = Math.acos((sideB**2+sideC**2-sideA**2)/(2*sideB*sideC))
			angleB = Math.acos((sideA**2+sideC**2-sideB**2)/(2*sideA*sideC))
			angleC = Math.acos((sideA**2+sideB**2-sideC**2)/(2*sideA*sideB))
			puts ""
			puts "Angle A Radians:"
			puts angleA.round(3)
			puts "Angle A Degrees:"
			puts angleA.to_deg.round(3)
			puts ""
			puts "Angle B Radians:"
			puts angleB.round(3)
			puts "Angle B Degrees:"
			puts angleB.to_deg.round(3)
			puts ""
			puts "Angle C Radians:"
			puts angleC.round(3)
			puts "Angle C Degrees:"
			puts angleC.to_deg.round(3)
			puts ""
		when 'b'
			puts "Input Side A"
			sideA = gets.chomp.to_f
			puts "Input Side B"
			sideB = gets.chomp.to_f
			puts "Input Angle C (Between Sides A & B)"
			angleC = gets.chomp.to_f
			angleCdeg = angleC.to_rad
			sideC = Math.sqrt(sideA**2+sideB**2-2*sideA*sideB*Math.cos(angleC))
			sideCdeg = Math.sqrt(sideA**2+sideB**2-2*sideA*sideB*Math.cos(angleCdeg))
			puts "Side C if angle was in radians"
			puts sideC.round(3)
			puts ""
			puts "Side C if angle was in degrees"
			puts sideCdeg.round(3)
			puts ""
		when 'c'
			puts "Input Side A (1 part of the angle)"
			sideA = gets.chomp.to_f
			puts "Input Side C (Side opposite the angle"
			sideC = gets.chomp.to_f
			puts "Input Angle C (Angle that is created partly by Side A and is opposite Side C)"
			angleC = gets.chomp.to_f
			angleCdeg = angleC.to_rad
			sideB = sideA*Math.cos(angleC)+Math.sqrt(sideC**2-sideA**2*(Math.sin(angleC))**2)
			sideBdeg = sideA*Math.cos(angleCdeg)+Math.sqrt(sideC**2-sideA**2*(Math.sin(angleCdeg))**2)
			puts "Side B if angle was in radians"
			puts sideB.round(3)
			puts ""
			puts "Side B if angle was in degrees"
			puts sideBdeg.round(3)
			puts ""
		#Original by: Matt Greenapple
		#Completely Redone and revised Braeden Smith
		#Everything is functional now
		#Note: The method is not a real method due to the original set up, as well as the 3 possible choices
		else
			puts "Please enter A or B or C"
		end
end

def calcArea(base, height)
	area1 = base * height 
	area2 = area1 / 2.0
	area2.round(3)
	puts "The area of the triangle is " + area2.to_s + "."
end

def calcPTA(leg, hyp)
	hyp = hyp**2
	leg = leg**2
	ans = Math.sqrt(hyp-leg)
	return ans.round(3)
end
def calcPTB(lega, legb)
	ans = Math.sqrt(lega**2+legb**2)
	return ans.round(3)
end

def calcCos(a)
	return Math.cos(a).round(3)
end

def calcTan(a)
	return Math.tan(a).round(3)
end

def calcSin(a)
	return Math.sin(a).round(3)

end

class Numeric
#Here is where the conversion to radians from degrees
  def to_rad
    self * Math::PI / 180.0
  end
end
class Numeric
	def to_deg
	  self * 180.0 / Math::PI 
	end
end





	
	








#Program




begin
	loop {
		puts "What Triangle function do you want to perform? (pythagorean theorem, sine, cosine, tangent, law sine, law cosine, area, exit)"
		ans = gets.chomp
		case ans.downcase

		when 'pythagorean theorem'
			puts "If you know hypotenuse and one leg (A) OR If you know both legs (B)"
			angle = gets.chomp
			case angle.downcase
				when 'a'
					puts "Enter value for the leg"
					lega=gets.chomp.to_f
					puts "Enter value for the hypotenuse"
					hyp=gets.chomp.to_f
					puts "The other leg is:"
					puts calcPTA(lega, hyp)
				when 'b'
					puts "Enter value for one leg"
					lega=gets.chomp.to_f
					puts "Enter value for the other leg"
					legb=gets.chomp.to_f
					puts "The hypotenuse is:"
					puts calcPTB(lega, legb)
				end

		when 'sine'
			puts "Enter number to calculate sine "
			a = gets.chomp.to_f
			b = a.to_rad
			puts "If your input was radians"
			puts calcSin(a)
			puts "If your input was degrees"
			puts calcSin(b)


		when 'cosine'
			puts "Enter number to calculate cosine "
			a = gets.chomp.to_f
			b = a.to_rad
			puts "If your input was radians"
			puts calcCos(a)
			puts "If your input was degrees"
			puts calcCos(b)

		when 'tangent'
			puts "Enter number to calculate tangent "
			a = gets.chomp.to_f
			b = a.to_rad
			puts "If your input was radians"
			puts calcTan(a)
			puts "If your input was degrees"
			puts calcTan(a)

		when 'law sine'
			puts calcLawSin

		when 'law cosine'
			puts calcLawCos
		when 'area'
			puts "Enter Base:"
			a = gets.chomp.to_f
			puts "Enter Height:"
			b = gets.chomp.to_f
			puts calcArea(a, b)
		when 'exit'
			exit
		else
			puts "Please enter a valid command"
			puts ""
	end
	}
rescue
	#To catch exception
	puts ""
	
	puts "ERROR: Program has crashed, exception details below"
	puts ""
	puts "Look what you've done!"
	puts ""
	sleep(1)
	puts $!, $@
	puts ""
	puts "QUITTING!"
	
end


=begin

Notes:

Area was missing a when call in the actual program--fixed: Braeden
Pyth theorom, had no method at all--fixed: Braeden
Case chomp was not coded properly--fixed: Braeden
All the WHEN statments were incorrect (had individual ends)--fixed: Braeden
No error(crash) catching or typographical error catching--fixed: Braeden
calcLawSine and calcLawCos were in states of disrepair and wrong approach(Rewrote fully)--fixed both: Braeden
Reorder methods and calls--Fixed: Braeden

=end
