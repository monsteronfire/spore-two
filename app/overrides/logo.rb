Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "logo", 
                     :replace_contents => "#logo", 
                     :text => "<h1>Amigurumi Playhouse</h1>")

Deface::Override.new(:virtual_path => "admin/shared/_header", 
                     :name => "navbar logo", 
                     :replace_contents => ".navbar-header", 
                     :text => "<h1>Amigurumi Playhouse</h1>")