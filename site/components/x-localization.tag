<x-localization>
    <p>sadpanda</p>
    <ul>
        <li><a onclick="{ onClick }">en</a></li>
        <li><a onclick="{ onClick }">hu</a></li>
        <li><a onclick="{ onClick }">jp</a></li>
    </ul>    
    
    <script>
        riot.mixin('i18n')
    
        this.i18n.setLanguage('hu')
        this.i18n.localise('Hello') // -> Hello
        
        this.onClick = function(e) {
                this.i18n.trigger('lang',  e.target.innerHTML)
        }
        
        this.i18n.trigger('lang',  'en')
        this.i18n.localise('Hello')
    </script>
</x-localization>