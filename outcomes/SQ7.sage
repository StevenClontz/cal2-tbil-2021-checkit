def generator():
    n=var("n")
    
    
    
    terms=[randint(1,5)*n^2+randint(1,5), randint(1,5)*randint(2,5)^n, randint(1,5)*(randint(2,5)^n)*(n^(randint(1,3))), randint(1,5)*factorial(n), randint(1,5)*factorial(n)*randint(2,5)^n, randint(1,5)*factorial(n)*n^(randint(1,3)), randint(1,5)*(n^n), randint(1,5)*(n^n)*factorial(n), randint(1,5)*(n^n)*randint(2,5)^n, randint(1,5)*(n^n)*n^(randint(1,3))]
    
    lim=1
    
    while (lim!=0):
        shuffle(terms)
        num=terms[0]
        denom=terms[1]
        Sequence(n)=num/denom
        Ratio=Sequence(n+1)/Sequence(n)
        Seq=Sequence(n)
        lim=Seq.limit(n=oo)
    
    Converge=False
    
    if abs(Ratio.limit(n=oo))<1:
        Converge=True
    
    Series1={
        "Sequence":Seq,
        "Converge":Converge,
    }
    
    
    
    
    
    
    
    
    Problems=[Series1]
    shuffle(Problems)

    return {
      "Problems": Problems,  
    }
