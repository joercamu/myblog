class PagesController < ApplicationController
    
    def contact
    
    end
    def technologies
        @techs = [
            {'name'=>'smartphones','path'=>'http://www.anapi.com/web/wp-content/uploads/2013/11/compatible.png'},
            {'name'=>'HTML5','path'=>'http://www.w3.org/html/logo/downloads/HTML5_Logo_256.png'},
            {'name'=>'jQuery','path'=>'http://sribasu.com/wp-content/uploads/2013/08/jquery-cheat.png'},
            {'name'=>'BootStrap','path'=>'http://www.w3schools.com/bootstrap/bs.png'},
            {'name'=>'MySql','path'=>'http://3.bp.blogspot.com/-danBOFeDg7g/U6n9PNOeNFI/AAAAAAAABOk/j-1KteaO9Yc/s1600/wordpress_mysql_backup.png'},
            {'name'=>'Ruby','path'=>'https://devops.profitbricks.com/static/img/logo-ruby.png'},
            {'name'=>'php','path'=>'http://www.alsacreations.com/xmedia/doc/full/php-elephant.png'},
            {'name'=>'pentaho','path'=>'http://www.beacon.com.ve/sites/default/files/pentaho-logo.jpg'},
            {'name'=>'phoneGap','path'=>'http://phonegap.com/css/images/graphic_build_bot.png'},
            {'name'=>'jQuery mobile','path'=>'http://www.3creatives.com/wp-content/uploads/2013/08/jquery-mobile.png'},
            {'name'=>'postgresql','path'=>'http://3.bp.blogspot.com/-H9Vx0ecAx_E/U6xfwVosNqI/AAAAAAAAAe4/QNCuwOf50HI/s1600/postgresql_logo-555px.png'},
            {'name'=>'ajax','path'=>'https://manuais.iessanclemente.net/images/7/74/Ajax_p.jpg'}
                ]
    end
    def about_us
        
    end
    def follow
        
    end
end