using my.bookshop as my from '../db/data-model';

service CatalogService {
    @changelog
    entity Books as projection on my.Books;
}
