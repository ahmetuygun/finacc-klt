package de.c24.finacc.klt.rest;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import java.util.Map;

/**
 * tests a little bit RestService
 * @author Jörn Schricker
 */
public class RestServiceTest {

    /**
     * testit
     */
    @Test
    public void restTestit() {
        RestService restService = new RestService();
        Map<String, String> testMap = restService.getTestMap();
        assertEquals("suppe", testMap.get("fisch"));
    }
    
    @Test
    public void restAge() {
        RestService restService = new RestService();
        String testMap = restService.age(12);
        assertEquals("OK", 67);
    }
}
