/* ====================================
   Onload functions
   ==================================== */

var aeApp = aeApp || {};


  // force widow back to top
  window.onbeforeunload = function(){ window.scrollTo(0,0); }

  aeApp.hamburgerNav = function(){
      $('.hamburger').click(function(e){
        e.preventDefault();
        if($('body').hasClass('activeNav')){
          $('body').addClass('navOut');
          $('body').removeClass('activeNav');
          setTimeout(function(){
            $('body').removeClass('navOut');
            $('body').removeClass('activeNav');
          }, 400);
        } else {
          $('body').addClass('activeNav');
        }
      });
      $('.nav-work').click(function(e){
        if($('body').has('.home-page')){
          $('body').removeClass('activeNav');
        }
      });
      $('.hidden-nav a').click(function(e){
        e.preventDefault();
        var href = e.target;
        $('body').addClass('navOut');
        setTimeout(function(){
          window.location.href = href;
          if ($(e.target).hasClass('nav-info') || $(e.target).hasClass('nav-contact') ) {
            $('body').addClass('sub-page-transition');
          }
          $('body').removeClass('activeNav');
        }, 400);
      });

      $('.primary-nav a').click(function(e){
        e.preventDefault();
        var href = e.target;
        if ($(e.target).hasClass('nav-info') || $(e.target).hasClass('nav-contact') ) {
          $('body').addClass('sub-page-transition');
        }
        setTimeout(function(){
          window.location.href = href;
          $('body').removeClass('activeNav');
        }, 400);
      });

      $('.site-title').click(function(e){
        e.preventDefault();
        var href = '/';
        console.log(href);
        $('body').addClass('back-home');
        setTimeout(function(){
          window.location.href = href;
        }, 400);
      });
  };

  aeApp.scrollThings = function(){
    window.onscroll = function(e) {
      var scrollPosition = window.pageYOffset;
      var windowSize     = window.innerHeight;
      var bodyHeight     = document.body.offsetHeight + 534;
      var distanceToBottom = Math.max(bodyHeight - (scrollPosition + windowSize), 0);
      var speed = (distanceToBottom / 100).toFixed(2);
      var opacity = 1 - (scrollPosition * 0.003);
      var opacityNumber = Math.max(opacity.toFixed(2), 0);
      if(speed < 1) {
        $('.section-bg').css('opacity', speed)
      } else {
        $('.section-bg').css('opacity', 1);
      }

      var newPositioin = - scrollPosition / 2;
      if (scrollPosition <= 665) {
        $('.site-intro').css({
          'opacity': opacityNumber,
          'visibility': 'visible',
          'transform': 'translateY('+ newPositioin +'px)'
        });
        $('.to-white').css({
          'opacity': opacityNumber
        })
      } else if (scrollPosition > 665) {
        $('.site-intro').css({
          'opacity': 0,
          'visibility': 'hidden'
        });
        $('.to-white').css({
          'opacity': 0
        })
      }
    }
  };

  // Define load object
  aeApp.onload = function() {
    aeApp.hamburgerNav();
    aeApp.scrollThings();

  };

  (function($, window, document) {
    aeApp.onload();


    var primaryVideo;
    var inview;
    var portfolioVideo;
    var portfolioVideoContainer;

    if (document.querySelector('.primary-video')) {
      primaryVideo = document.querySelector('.primary-video');
      inview = new Waypoint.Inview({
        element: primaryVideo,
        enter: function () {
          if (document.querySelector('.hamburger').classList.contains('on')) {
            document.querySelector('.hamburger').classList.remove('on');
          }
        },
        exited: function () {
          document.querySelector('.hamburger').classList.add('on');
        }
      });
    }

    var portfolioVideoControls = function(){
      portfolioVideo = document.querySelector('.portfolio-video');
      portfolioVideoContainer = document.querySelector('.portfolio-video-container');
      portfolioVideoContainer.addEventListener('click', function(){
        if (!(portfolioVideo.paused || portfolioVideo.ended)) {
            portfolioVideo.pause();
            portfolioVideo.parentNode.classList.add('paused');
        } else {
          portfolioVideo.play();
          portfolioVideo.parentNode.classList.remove('paused');
          portfolioVideo.parentNode.classList.remove('ended');
        }
      });
      portfolioVideo.addEventListener('ended', function(){
        portfolioVideo.parentNode.classList.add('ended');
      });
      inview = new Waypoint.Inview({
        element: portfolioVideo,
        exited: function () {
          if (!(this.element.getElementsByTagName('video').paused || this.element.getElementsByTagName('video').ended)) {
            portfolioVideo.pause();
          }
          portfolioVideo.parentNode.classList.add('paused');
        }
      });
    }

    if (document.querySelector('.portfolio-video')) {
      portfolioVideoControls();
    }


    var source,
        video,
        nextModule,
        nextSource,
        activeModule,
        lazyLoad,
        firstLazyLoad,
        source,
        thumbnailMoudule,
        credit,
        helfCredits;

    if (document.getElementsByClassName('lazy-load')[0]) {
      lazyLoad = document.getElementsByClassName('lazy-load');
      firstLazyLoad = document.getElementsByClassName('lazy-load')[0];
      if (firstLazyLoad.getElementsByTagName('video')[0]) {
        source = firstLazyLoad.getElementsByTagName('video')[0].getAttribute('data-src');
        firstLazyLoad.getElementsByTagName('video')[0].removeAttribute("data-src");
        firstLazyLoad.getElementsByTagName('video')[0].setAttribute('src', source);
      }
      for (var i = 0; i < lazyLoad.length; i++) {
        inview = new Waypoint.Inview({
          element: lazyLoad[i],
          enter: function(direction){
            activeModule = this.element;
            inViewPort(activeModule);
            if (activeModule.nextElementSibling) {
              if (activeModule.nextElementSibling.classList.contains('lazy-load')) {
                activeModule = activeModule.nextElementSibling;
                preloadNextUp(activeModule);
              }
            }
          },
          exited: function () {
            if (this.element.getElementsByTagName('video')[0]) {
              if (!(this.element.getElementsByTagName('video').paused || this.element.getElementsByTagName('video').ended)) {
                this.element.getElementsByTagName('video')[0].pause();
              }
            }
          }
        });
      }

      inViewPort = function(activeModule){
        if (activeModule.getElementsByTagName('video')[0]) {
          lazyLoadContent('video', activeModule);
        }
        if (activeModule.getElementsByTagName('img')[0]) {
          lazyLoadContent('img', activeModule);
        }
        if(! activeModule.classList.contains('animate-in')){
          activeModule.classList.add('animate-in');
        }
      }

      var preloadNextUp = function(activeModule){
        if (activeModule.getElementsByTagName('video')[0]) {
          lazyLoadContent('video', activeModule);
        } else if (activeModule.getElementsByTagName('img')[0]) {
          lazyLoadContent('img', activeModule);
        }
      }
    }

    var lazyLoadContent = function(contentType, activeModule){
      if (activeModule.getElementsByTagName(contentType)){
        if (activeModule.getElementsByTagName(contentType)[0].getAttribute('data-src')) {
          source = activeModule.getElementsByTagName(contentType)[0].getAttribute('data-src');
          activeModule.getElementsByTagName(contentType)[0].removeAttribute('data-src');
          activeModule.getElementsByTagName(contentType)[0].setAttribute('src', source);
        }
        if (contentType === "video") {
          activeModule.getElementsByTagName(contentType)[0].play();
        }
      }
    }

    var caseStudyLinks;
    var thumbnailMoudule;
    var textBlock;

    var alternatingPosts = function(){
      caseStudyLinks = document.querySelectorAll('.case-study-link');
      for (var i = 0; i < caseStudyLinks.length; i++) {
        if(i % 2 === 0) {
          caseStudyLinks[i].classList.add('right-img');
          caseStudyLinks[i].classList.remove('left-img');
          thumbnailMoudule = caseStudyLinks[i].querySelector('.title-and-thumbnail');
          textBlock = caseStudyLinks[i].querySelector('.text-block');
          textBlock.classList.add('move-right');
          textBlock.classList.remove('move-left');
          thumbnailMoudule.classList.remove('offset-md-0');
          thumbnailMoudule.classList.add('offset-md-1');
          thumbnailMoudule.classList.add('order-last-md');
        }
      }
    };
    if (document.querySelector('.home-page') || document.querySelector('.info-page')) {
      alternatingPosts();
    }

    // move credits to two columns
    if (document.querySelectorAll('.credit')) {
      credit = document.querySelectorAll('.credit');
      halfCredits =  Math.ceil(credit.length / 2);
      for (var i = 0; i < credit.length; i++) {
        if (i >= halfCredits) {
          credit[i].remove();
          document.querySelector('.credits-row-two').appendChild(credit[i]);
        }
      }
    }

    if (document.querySelector('.section-change')) {
      var waypoint = new Waypoint({
        element: $('.section-change'),
        handler: function(direction) {
          if (direction == 'down') {
            $('.to-white').addClass('on');
          } else {
            $('.to-white').removeClass('on');
          }
        },
        offset: '50%'
      })
    }
    var href;
    var pageTransition = function(e, selector, transitionName){
      e.preventDefault();
      href = e.target.parentNode;
      selector.addClass(transitionName);
      setTimeout(function(){
        window.location.href = href;
      }, 300);
    }

    $('.site-intro a').click(function(e){
      pageTransition(e, $('body'), 'home-transitioning');
    });


    if (document.querySelector('#work')) {
      $('#work a').hover(function(e){
        $(this).closest('.case-study-link').addClass('active-hover');
      }, function(){
        $(this).closest('.case-study-link').removeClass('active-hover');
      });
      $('#work a').click(function(e){
        pageTransition(e, $('body'), 'home-transitioning');
      })
    }

    $('.next-project-module').click(function(e){
      pageTransition(e, $('transition'), 'nextProject');
      e.preventDefault();
      href = e.target.parentNode;
      $('.transition').addClass('nextProject');
      setTimeout(function(){
        window.location.href = href;
      }, 300);
    });

    var clipboard = new Clipboard('.cpy-clip');

    clipboard.on('success', function() {
      $('.cpy-clip').addClass('copied');
    });

    // clipboard.on('error', function(e) {
    //     console.error('Action:', e.action);
    //     console.error('Trigger:', e.trigger);
    // });


  }(window.jQuery, window, document));
