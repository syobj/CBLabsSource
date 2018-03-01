import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

// Models
import { ApplicationLibrary } from '../model/application-library';

@Injectable()
export class ApplicationLibraryService {
    private requestHeaders = new Headers();

    constructor(private http: Http) {
        this.requestHeaders.append('Access-Control-Allow-Origin', '*');
        this.requestHeaders.append('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
        this.requestHeaders.append('Access-Control-Allow-Methods', 'PUT,POST,GET,DELETE,OPTIONS');
    }

    getTypes(): Promise<String[]> {
        const getTypesUrl = '/api/getTypes';
        return this.http.get(getTypesUrl, {headers: this.requestHeaders})
            .toPromise()
            .then(response => response.json() as String[]);
    }

    search(type: String, term: String): Observable<ApplicationLibrary[]> {
        const searchUrl = `/api/search?type=${type}&term=${term}`;
        return this.http.get(searchUrl, {headers: this.requestHeaders})
                        .map(response => response.json() as ApplicationLibrary[]);
    }
}
