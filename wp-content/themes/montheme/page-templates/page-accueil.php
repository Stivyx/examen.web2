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
					Structures Intérieurs <br>
				<span class="sous-titre" >Conception Création de mobilier bois</span>
				</h1>
			</div>
			<div class="large-6 column colonne-droite ">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/commode-bois.jpg" alt="commode bois">
			</div>	
		</div>
</section>




<section class="accueil-propos row text-center">
	<h2>
		À propos de nous
	</h2>
	<p class="text-left" >
		Structures intérieurs est une entreprise de conception et de création de meubles et petits mobilier en bois. Nous réalisons également de l’aménagement sur mesure telle que des dressing, des bibliothèques ou des bureaux.
		Les pièces que nous réalisons sont produites à l’unité ou en très petites quantités. Tous nos produits sont fait main et sur mesure.
	</p>
	<a href="#" class="cta">Contactez nous</a>
</section>





<section class="accueil-fonctionnement">
	<div class="">
		<h2 class="text-center" >
			Notre fonctionnement
		</h2>
		<div class="content row">
			<article class="medium-4 column text-center">
			<div>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/definition-projet.jpg" alt="definition-projet">
			</div>
			<div class="descriptif">
				<h3 class="text-center" >Définition du projet</h3>
				<p>
					Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.
				</p>
			</div>
		</article>
		<article class="medium-4 milieu column text-center">
			<div>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/simulation-3d.jpg" alt="definition-projet">
			</div>
			<div class="descriptif">
				<h3 class="text-center" >Simulation 3D</h3>
				<p>
					Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.
				</p>
			</div>
		</article>
		<article class="medium-4 column text-center">
			<div>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/livraison-installation.jpg" alt="definition-projet">
			</div>
			<div class="descriptif">
				<h3 class="text-center" >Livraison et installation</h3>
				<p>
					Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.
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
	<article class="prestation large-3 medium-6 column">
		<img src="<?php echo get_template_directory_uri(); ?>/assets/images/etageres.jpg" alt="Etagères murales">
		<h3>Étagères murales</h3>
		<p>Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus...</p>
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>etageres-murales/" class="cta">Voir le produit</a>
	</article>
	<article class="prestation large-3 medium-6 column">
		<img src="<?php echo get_template_directory_uri(); ?>/assets/images/commode-angle.jpg" alt="Etagères murales">
		<h3>Commode d’angle</h3>
		<p>Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus...</p>
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>commode-dangle/" class="cta">Voir le produit</a>
	</article>
	<article class="prestation large-3 medium-6 column">
		<img src="<?php echo get_template_directory_uri(); ?>/assets/images/boite-vinyles.jpg" alt="Etagères murales">
		<h3>Boite à vinyles</h3>
		<p>Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus...</p>
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>boite-a-vinyles/" class="cta">Voir le produit</a>
	</article>
	<article class="prestation large-3 medium-6 column">
		<img src="<?php echo get_template_directory_uri(); ?>/assets/images/enceinte-rose.jpg" alt="Etagères murales">
		<h3>Enceinte rose</h3>
		<p>Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus...</p>
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>enceinte-rose/" class="cta">Voir le produit</a>
	</article>
</section>




<section class="accueil-contact row">
	<h2 class="text-center" >
		Contact
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
