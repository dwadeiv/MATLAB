function vectors = orth_basis(v1,v2)
    vectors = {[0 0];[0 0]}
    vectors(1) = v1/norm(v1);
    vectors(2) = v2/norm(v2);
    
end