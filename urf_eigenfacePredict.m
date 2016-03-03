function C = urf_eigenfacePredict (model, Xtest, k)

	Q = model.W' * (Xtest - model.mu);  %multiplica os autovetores pela matriz com as eigenfaces
	C = knn(model.P, model.y, Q, k);    %chama a fun��o knn usando como par�metros:
                                            %model.P = matriz das imagens de treino do banco de dados 
                                            %model.y= n�mero de imagens na matriz P
                                            %Q = resultado da multiplica��o acima
                                            %k = n�mero de imagens a serem analisadas
end