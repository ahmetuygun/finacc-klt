package de.c24.finacc.klt.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 * @author Jörn Schricker
 */
@Path("/")
@Produces("application/json")
public class RestService {

    /**
     * testmap
     * @return map containung fisch and suppe
     */
	
	List<Person> personList = new ArrayList<Person>();
	
    @GET
    @Path("/testit")
    public Map<String, String> getTestMap() {
        Map<String, String> returnMap = new HashMap<>();
        returnMap.put("fisch", "suppe");
        return returnMap;
    }
    
    @GET
    @Path("/age/{age}")
    public String age(@PathParam("age") int  age) {
       
    	if(age<18)
    		return  "{ \"name\" :  \"too young\"}";
    	if(age>67)
    		return  "{ \"name\" :  \"too old\"}";
    	if(isPrime(age))
    		return "{ \"name\" :  \"funny\"}";
    	return "{ \"name\" :  \"OK\"}";    }
    
    @GET
    @Path("/save/{name}/{surname}/{age}")
    public String save(@PathParam("name") String name, @PathParam("surname") String surname, @PathParam("age") int  age) {


    	Person person=new Person();
    	person.setAge(age);
    	person.setLastname(surname);
    	person.setName(name);
    	personList.add(person);

    	
    	return "{ \"result\" :  \"saved\"}";    
    }
    
    
    @GET
    @Path("/getAll")
    public List<Person> getAll() {	
    	return personList;    
    }
    
    
    public boolean isPrime(int num) {
    	
        boolean flag = false;
        for(int i = 2; i <= num/2; ++i)
        {
            if(num % i == 0)
            {
                flag = true;
                break;
            }
        }
       return !flag;
         
    } 

    
    

}
