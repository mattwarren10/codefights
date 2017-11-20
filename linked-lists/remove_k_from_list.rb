# Definition for singly-linked list:
class ListNode
  attr_accessor :value, :next
  def initialize(val)
    @value = val
    @next = nil
  end

	def removeKFromList(l, k)
		
		if l.include?(k)
			l.first.each do |n|
			if n == k
				l.delete(k)
			end
			end
		end
		l
	end
end

l = ListNode.new([3, 1, 2, 3, 4, 5])
p l.removeKFromList(l, 3)
