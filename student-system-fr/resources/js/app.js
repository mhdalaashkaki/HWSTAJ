import './bootstrap';
import Framework7 from 'framework7/lite-bundle';
import Framework7App from 'framework7';
import 'framework7/framework7-bundle.css';

const app = new Framework7({
    el: '#app',
    theme: 'auto',
    routes: [
        { path: '/about/', url: '/about' },
    ],
});
