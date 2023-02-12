#  def block_word?(string)
#    blocks = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
#    array = string.upcase.chars
#  
#    blocks.map! do |group|
#      group.chars.map do |l|
#        array.count(l) > 1 ? (return false) : l
#        array.include?(l) ? l = '0' : l
#      end.join
#    end
#  
#    blocks.each { |x| x == '00' ? (return false) : x }
#    true
#  end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

#  def block_word?(string)
#    up_string = string.upcase
#    BLOCKS.none? { |block| up_string.count(block) >= 2 }
#  end

def block_word?(string)
  up_string = string.upcase
  BLOCKS.each { |x| up_string.count(x) >= 2 ? (return false) : x }
  true
end

block_word?('BBABY')
block_word?('BATCH')
block_word?('BUTCH')
block_word?('jest')
