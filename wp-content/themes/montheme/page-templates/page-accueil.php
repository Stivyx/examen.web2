<?php
/*
Template Name: Page d'accueil
*/
get_header(); ?>

<div class="page-accueil">


	<section class="accueil-bandeau">
		<div class="row" >
			<div class="large-6 column colonne-gauche">
				<h1>
					<?php the_field("titre_principal"); ?> <br>
				<span class="sous-titre" ><?php the_field("sous_titre_principal"); ?></span>
				</h1>
			</div>
			<div class="large-6 column colonne-droite ">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/commode-bois.jpg" alt="commode bois">
			</div>	
		</div>
</section>




<section class="accueil-propos row text-center">
	<h2>
		<?php the_field("titre_à_propos"); ?>
	</h2>
	<p class="text-left" >
		<?php the_field("texte_à_propos"); ?>
	</p>
	<a href="<?php echo esc_url( home_url( '/' ) ); ?>contact-2/" class="cta">Contactez nous</a>
</section>





<section class="accueil-fonctionnement">
	<div class="">
		<h2 class="text-center" >
			<?php the_field("titre_fonctionnement"); ?>
		</h2>
		<div class="content row">
			<article class="medium-4 column text-center">
			<div>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/definition-projet.jpg" alt="definition-projet">
			</div>
			<div class="descriptif">
				<h3 class="text-center" ><?php the_field("titre_etape_1_fonctionnement"); ?></h3>
				<p>
					<?php the_field("texte_etape_1_fonctionnement"); ?>
				</p>
			</div>
		</article>
		<article class="medium-4 milieu column text-center">
			<div>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/simulation-3d.jpg" alt="definition-projet">
			</div>
			<div class="descriptif">
				<h3 class="text-center" ><?php the_field("titre_etape_2_fonctionnement"); ?></h3>
				<p>
					<?php the_field("texte_etape_2_fonctionnement"); ?>
				</p>
			</div>
		</article>
		<article class="medium-4 column text-center">
			<div>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/livraison-installation.jpg" alt="definition-projet">
			</div>
			<div class="descriptif">
				<h3 class="text-center" ><?php the_field("titre_etape_3_fonctionnement"); ?></h3>
				<p>
					<?php the_field("texte_etape_3_fonctionnement"); ?>
				</p>
			</div>
		</article>
		</div>
	</div>
</section>








<section class="accueil-realisations row text-center large-text-left">
	<h2 class="text-center" >
		Nos dernières réalisations
	</h2>
	

	<?php
		$args = array( 'numberposts' => 4, 'order'=> 'ASC', 'category_name' => 'realisations' );
		$postslist = get_posts( $args );
		foreach ($postslist as $post) :  setup_postdata($post); 
	?>

		<article class="prestation large-3 medium-6 column">
		<?php the_post_thumbnail(); ?>
		<h3><?php the_title(); ?></h3>
		<p><?php the_excerpt(); ?></p>
		<a href="<?php the_permalink(); ?>" class="cta">Voir le produit</a>
	</article>

	<?php endforeach; ?>
	<?php wp_reset_query(); ?>

</section>




<section class="accueil-contact row">
	<h2 class="text-center" >
		<?php the_field("titre_contact"); ?>
	</h2>
	<div class="medium-6 column">
		<p class="infos" >Les champs marqués d’un <span class="obligatoire" >*</span> sont obligatoires.</p>
		<?php the_field("accueil-formulaire"); ?>
	</div>
	<div class="medium-6 column">
		<h3>Olivier HASS</h3>
		<?php the_field("informations_de_contact"); ?>
		

	</div>
</section>




</div>

<?php get_footer();
