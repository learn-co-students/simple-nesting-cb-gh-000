                      # Multitype Collections Lab #

# Method demonstrates how to retrieve a nested hash by returning ':grace_hopper'
# from ':programmer_hash'.
def hopper
	programmer_hash =
 	{
    :grace_hopper => {
      :known_for => "COBOL",
      :languages => ["COBOL", "FORTRAN"]
    },
    :alan_kay => {
      :known_for => "Object Orientation",
      :languages => ["Smalltalk", "LISP"]
    },
    :dennis_ritchie => {
      :known_for => "Unix",
      :languages => ["C"]
    }
  }
  return programmer_hash[:grace_hopper]
end


# Method demonstrates what combination (or chain) of keys would of keys would be
# required to return the answer to the question: What is Alan Kay known for?
def alan_kay_is_known_for
  programmer_hash =
  {
    :grace_hopper => {
      :known_for => "COBOL",
      :languages => ["COBOL", "FORTRAN"]
    },
    :alan_kay => {
      :known_for => "Object Orientation",
      :languages => ["Smalltalk", "LISP"]
    },
    :dennis_ritchie => {
      :known_for => "Unix",
      :languages => ["C"]
    }
 }
  return programmer_hash[:alan_kay][:known_for]
end


# Method demonstrates how to return a specific value from a nested hash.
def dennis_ritchies_language
  programmer_hash =
  {
    :grace_hopper => {
      :known_for => "COBOL",
      :languages => ["COBOL", "FORTRAN"]
    },
    :alan_kay => {
      :known_for => "Object Orientation",
      :languages => ["Smalltalk", "LISP"]
    },
    :dennis_ritchie => {
      :known_for => "Unix",
      :languages => ["C"]
    }
  }
  # Using the #join method in order to strip the brackets from the return.
  return programmer_hash[:dennis_ritchie][:languages].join
end


# Method demonstrates how to add an additional hash to a nested hash.
def adding_matz
  programmer_hash =
  {
    :grace_hopper => {
      :known_for => "COBOL",
      :languages => ["COBOL", "FORTRAN"]
    },
    :alan_kay => {
      :known_for => "Object Orientation",
      :languages => ["Smalltalk", "LISP"]
    },
    :dennis_ritchie => {
      :known_for => "Unix",
      :languages => ["C"]
    }
  }
  programmer_hash[:yukihiro_matsumoto] = {
    :known_for => "Ruby",
    :languages => ["LISP","C"]
  }
  return programmer_hash
end


# Method demonstrates how to manipulate a value from a specific nested hash.
def changing_alan
  programmer_hash =
  {
    :grace_hopper => {
      :known_for => "COBOL",
      :languages => ["COBOL", "FORTRAN"]
    },
    :alan_kay => {
      :known_for => "Object Orientation",
      :languages => ["Smalltalk", "LISP"]
    },
    :dennis_ritchie => {
      :known_for => "Unix",
      :languages => ["C"]
    }
  }
  programmer_hash[:alan_kay][:known_for] = "GUI"
  return programmer_hash
end


# Method demonstrates how to add a value to a specific nested hash.
def adding_to_dennis
  programmer_hash =
  {
    :grace_hopper => {
      :known_for => "COBOL",
      :languages => ["COBOL", "FORTRAN"]
    },
    :alan_kay => {
      :known_for => "Object Orientation",
      :languages => ["Smalltalk", "LISP"]
    },
    :dennis_ritchie => {
      :known_for => "Unix",
      :languages => ["C"]
    }
  }
  # Using the 'shovel' method (<<), the string ("Assembly") is added to the
  # nested hash without over-riding the already entered strings.
  programmer_hash[:dennis_ritchie][:languages] << "Assembly"
  return programmer_hash
end
