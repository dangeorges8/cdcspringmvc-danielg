package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Repository
@Transactional
public class ProdutoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Produto produto) {
		manager.persist(produto);
	}

	public List<Produto> listar() {
		String query = "select distinct(p) from Produto p join fetch p.precos";
		return manager.createQuery(query, Produto.class).getResultList();
	}

	public Produto find(Integer id) {
		String jpql = "select distinct(p) from Produto p join fetch p.precos preco "
				+ "where p.id = :id";
		return manager.createQuery(jpql, Produto.class).setParameter("id", id).
				getSingleResult();
	}
	
	public BigDecimal somaPrecosPorTipoPreco(TipoPreco tipoPreco) {
		String jpql = "select sum(preco.valor) from Produto p join p.precos preco where"
				+ " preco.tipo = :tipoPreco";
		TypedQuery<BigDecimal> query = manager.createQuery(jpql, BigDecimal.class);
		
		query.setParameter("tipoPreco", tipoPreco);
		
		return query.getSingleResult();
	}
}
