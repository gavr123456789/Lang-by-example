# Operator	Description	Example Code
# a in B    is a an element of B?	'd' in    {'a'..'z'}
# a notin B	is a not an element of B?	      40 notin {2..20}
# A + B	    union of A with B	              {'a'..'m'} + {'n'..'z'} == {'a'..'z'}
# A - B	    relative complement of A in B	  {'a'..'z'} - {'b'..'d'} == {'a', 'e'..'z'}
# A + {b}	  add element b to set A	        {'b'..'z'} + {'a'} == {'a'..'z'}
# A - {b}	  remove element b from set A	    {'a'..'z'} - {'a'} == {'b'..'z'}
# A * B	    intersection of A with B	      {'a'..'m'} * {'c'..'z'} == {'c'..'m'}
# A <= B	  is A a subset of B?	            {'a'..'c'} <= {'a'..'z'}
# A < B	    is A a strict subset of B?	    {'b'..'c'} < {'a'..'z'}