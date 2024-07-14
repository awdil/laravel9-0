@php
    $title = getAppTitle();
    $footerText = getFooterText();
    $seopage = getSeoSetting();
    $pages = getPages();
@endphp
<!--Footer-->
			<footer class="footer">
				<div class="container">
					<div class="row align-items-center flex-row-reverse">
						<div class="col-md-12 col-sm-12 mt-3 mt-lg-0 text-center">
							{!!$footerText->copyright!!}
						</div>
					</div>
				</div>
			</footer>
			<!-- End Footer-->		
	