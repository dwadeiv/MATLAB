A_3 = A_N(3);
orth_basis(A_3)
function orthonormal_basis = orth_basis(A)
n = size(A, 1);
    orth_bas = zeros(n);
    orth_bas(:,1) = A(:,1)/norm(A(:,1));
    for i = 2:n
        v_n = A(:,i);
        sum = 0;
        for j = 1:i-1
            u_k = orth_bas(:,j);
            proj_vec = ((dot(v_n,u_k)) .* u_k);
            sum = sum + proj_vec;
        end
        orth_bas(:,i) = v_n - sum;
        orth_bas(:,i) = orth_bas(:,i)/norm(orth_bas(:,i));
        assert_orth = round(dot(orth_bas(:,i),orth_bas(:,j)))
    end
    for i = 1:n
        u_n = (norm(orth_bas(:,i)))
    end
    orth_bas
end