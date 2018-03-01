import { Component, OnInit, AfterViewInit } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Subject } from 'rxjs/Subject';

// Models
import { ApplicationLibrary } from '../model/application-library';

// Observable class extensions
import 'rxjs/add/observable/of';

// Observable operators
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/debounceTime';
import 'rxjs/add/operator/distinctUntilChanged';
import 'rxjs/add/operator/switchMap';

// Services
import { ApplicationLibraryService } from '../service/application-library.service';

@Component ({
    templateUrl: './application-library.component.html',
    styleUrls: ['./application-library.component.css']
})
export class ApplicationLibraryComponent implements OnInit, AfterViewInit {

    private appLibs: Observable<ApplicationLibrary[]>;
    private searchTerms = new Subject<String[]>();

    private types: String[] = [];
    private selectedType: String = 'ALL';
    private inputedTerm: String = '';

    constructor(private appLibService: ApplicationLibraryService) {

    }

    onTypeChanged(type: String): void {
        this.selectedType = type;
        // if (type === 'ALL') {
        //     this.appLibService.getAllAppLibs()
        //         .then(response => this.appLibs = response as ApplicationLibrary[]);
        // } else {
        //     this.appLibService.getAppLibsByType(type)
        //         .then(response => this.appLibs = response as ApplicationLibrary[]);
        // }
        this.searchTerms.next([this.selectedType, this.inputedTerm]);
    }

    search(term: String): void {
        this.inputedTerm = term;
        this.searchTerms.next([this.selectedType, term]);
    }

    ngOnInit(): void {
        // this.appLibService.getAllAppLibs()
        //     .then(response => this.appLibs = response as ApplicationLibrary[]);
        this.appLibService.getTypes()
            .then(response => this.types = response as String[]);

        this.appLibs = this.searchTerms
            .debounceTime(300)
            .distinctUntilChanged()
            .switchMap(term => term ? this.appLibService.search(term[0], term[1]) : Observable.of<ApplicationLibrary[]>([]))
            .catch(error => {
                console.log(error);
                return Observable.of<ApplicationLibrary[]>([]);
            });
    }

    ngAfterViewInit(): void {
        this.onTypeChanged(this.selectedType);
    }
}
