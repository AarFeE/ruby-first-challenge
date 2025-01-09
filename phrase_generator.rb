subjects = ["El perro", "La tortuga", "Mi amigo", "El Sebas"]
predicates = ["corre rápido", "es muy sabio", "ama programar", "canta muy mal"]

def random_picker(range)
    rand(range)
end

subject = subjects[random_picker(0...subjects.length)]
predicate = predicates[random_picker(0...predicates.length)]

def phrase_gen(sub, pred)
    if sub.length > 8
        sub += " inteligente"
    end

    if pred.include?("programar")
        pred += "!"
    end

    return sub + " " + pred
end

puts phrase_gen(subject, predicate)