config.load_autoconfig()

c.auto_save.session = True
c.content.autoplay = False
c.content.default_encoding = 'UTF-8'
c.content.geolocation = False
c.content.tls.certificate_errors = 'ask'
c.content.webrtc_ip_handling_policy = 'disable-non-proxied-udp'
c.content.headers.do_not_track = True
c.content.blocking.enabled = True
c.content.cookies.accept = 'no-3rdparty'
c.scrolling.smooth = True
c.confirm_quit = ['multiple-tabs', 'downloads']
c.tabs.show = 'never'
c.tabs.background = True
c.tabs.favicons.show = 'pinned'
c.statusbar.show = 'in-mode'
c.colors.webpage.preferred_color_scheme = 'auto'
c.window.hide_decoration = True
c.hints.auto_follow = 'never'
c.url.default_page = 'https://sestolab.pp.ua/startpage'
c.url.start_pages = c.url.default_page
c.url.searchengines = {'DEFAULT': c.url.default_page + '?q={}'}

config.bind('tb', 'config-cycle statusbar.show always in-mode')
config.bind('tt', 'config-cycle tabs.show always never')
config.bind('tdm', 'config-cycle colors.webpage.darkmode.enabled;; config-cycle content.user_stylesheets "css/darkmode-fix.css" "";; restart')

config.bind('xs', 'config-source')

config.bind(',M', 'spawn --detach mpv --force-window yes "{url}"')
config.bind(',m', 'hint links spawn --detach mpv --force-window "{hint-url}"')
config.bind(',am', 'hint all spawn --detach mpv --force-window "{hint-url}"')
config.bind(',i', 'hint images spawn --detach display "{hint-url}"')
config.bind(',v', 'hint links spawn --detach vlc "{hint-url}"')

#password autofill
config.bind('<z><l>', 'spawn --userscript qute-pass -d dmenu')
config.bind('<z><u><l>', 'spawn --userscript qute-pass -d dmenu --username-only')
config.bind('<z><p><l>', 'spawn --userscript qute-pass -d dmenu --password-only')
config.bind('<z><o><l>', 'spawn --userscript qute-pass -d dmenu --otp-only')

