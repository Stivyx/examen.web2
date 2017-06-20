<?php
/*
Template Name: Page de contact
*/
get_header(); ?>

<div class="page-contact">


	
	<section class="contact row">
		<h2 class="text-center" >
			<?php the_field("titre_contact"); ?>
		</h2>
		<div class="medium-6 column">
			<p class="infos" >Les champs marqués d’un <span class="obligatoire" >*</span> sont obligatoires.</p>
			<?php the_field("contact-formulaire"); ?>
		</div>
		<div class="medium-6 column">
			<h3>Olivier HASS</h3>
			<?php the_field("informations_de_contact"); ?>
		</div>
	</section>




</div>

<?php get_footer();
