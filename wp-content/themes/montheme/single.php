<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>

<div class="row page-single" role="main">
<?php do_action( 'foundationpress_before_content' ); ?>
<?php while ( have_posts() ) : the_post(); ?>
	<div class="medium-6 large-5 column text-center image">
		<?php 
			$image = get_field('image_grand_format');
			$size = 'full'; // (thumbnail, medium, large, full or custom size)

			if( $image ) {
				echo wp_get_attachment_image( $image, $size );
			}
		?>
	</div>
	<article class="medium-6 large-6 column">
		<header>
			<h1 class="entry-title"><?php the_title(); ?></h1>
		</header>
		<?php do_action( 'foundationpress_post_before_entry_content' ); ?>
		<div class="entry-content">
			<?php the_content(); ?>

			<a class="cta" href="<?php echo esc_url( home_url( '/' ) ); ?>">Retourner à l’accueil</a>
		</div>
	</article>
<?php endwhile;?>
</div>
<?php get_footer();
