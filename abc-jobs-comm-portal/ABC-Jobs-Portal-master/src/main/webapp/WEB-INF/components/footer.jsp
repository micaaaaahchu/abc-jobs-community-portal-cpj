<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<footer>
  <section id="footer" class="mt-5 bg-secondary">
    <div class="container">
      <div class="footer-content d-flex flex-column flex-md-row">
        <div class="footer-brand me-5 pe-lg-5 mb-2">
            <style>
                .footer-logo img {
                    width: 130px;
                    height: 50px;
                    transition: transform 0.3s ease-in-out;
                }

                .footer-logo img:hover {
                    transform: scale(1.1);
                }
            </style>
            <a class="footer-logo" href="<%= request.getContextPath() %>"><img src="images/logo/abcportal-logo.png"></a>

        </div>
        <div class="footer-links d-flex justify-content-between flex-wrap">
          <ul class="links text-center">
            <span class="fw-semibold text-dark">GENERAL</span>
            <li>Sign up</li>
            <li>Help center</li>
            <li>About</li>
            <li>Developers</li>
            <li>Careers</li>
          </ul>
          <ul class="links text-center">
            <span class="fw-semibold text-dark">DIRECTORIES</span>
            <li>Jobs</li>
            <li>Articles</li>
            <li>Companies</li>
            <li>Topics</li>
            <li>Featured Jobs</li>
          </ul>
          <ul class="links text-center">
            <span class="fw-semibold text-dark">OUR SOCIALS</span>
            <li>Twitter</li>
            <li>Facebook</li>
            <li>Instagram</li>
            <li>Youtube</li>
          </ul>
          <ul class="links text-center">
            <span class="fw-semibold text-dark">LEGAL</span>
            <li>Privacy policy</li>
            <li>Terms of service</li>
          </ul>
        </div>
      </div>
      <p class="mt-2 text-center fw-bold"> Copyright © ABC Jobs Pte. Ltd. 2023. All Rights Reserved.</p>
    </div>
  </section>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>