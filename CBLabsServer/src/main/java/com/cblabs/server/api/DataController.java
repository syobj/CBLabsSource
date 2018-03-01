package com.cblabs.server.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cblabs.server.dao.ApplicationLibraryMapper;
import com.cblabs.server.model.ApplicationLibrary;

/**
 * API Controller
 *
 * @author user001
 *
 */
@RestController
@RequestMapping(value = { "/api" })
public class DataController {

    @Autowired
    private ApplicationLibraryMapper appLibMapper;

    /**
     * getAllAppLibs
     *
     * @return
     * @throws Exception
     */
    @GetMapping(value = { "/getAllAppLibs" })
    public ResponseEntity<List<ApplicationLibrary>> data() throws Exception {
        List<ApplicationLibrary> appLibs = appLibMapper.getAll();

        return new ResponseEntity<List<ApplicationLibrary>>(appLibs, HttpStatus.OK);
    }

    /**
     * getTypes
     *
     * @return
     * @throws Exception
     */
    @GetMapping(value = { "/getTypes" })
    public ResponseEntity<List<String>> getTypes() throws Exception {
        List<String> types = appLibMapper.getTypes();

        return new ResponseEntity<List<String>>(types, HttpStatus.OK);
    }

    /**
     * getAppLibsByType
     *
     * @param type
     * @return
     * @throws Exception
     */
    @GetMapping(value = { "/getAppLibsByType/{type}" })
    public ResponseEntity<List<ApplicationLibrary>> getAppLibsByType(@PathVariable("type") String type)
            throws Exception {
        List<ApplicationLibrary> appLibs = appLibMapper.getAppLibsByType(type);

        return new ResponseEntity<List<ApplicationLibrary>>(appLibs, HttpStatus.OK);
    }

    /**
     * search
     *
     * @param type
     * @param term
     * @return
     * @throws Exception
     */
    @GetMapping(value = { "/search" })
    public ResponseEntity<List<ApplicationLibrary>> search(@RequestParam(name = "type", required = false) String type,
            @RequestParam(name = "term", required = false) String term) throws Exception {
        List<ApplicationLibrary> appLibs = appLibMapper.search(type, term);

        return new ResponseEntity<List<ApplicationLibrary>>(appLibs, HttpStatus.OK);
    }
}
