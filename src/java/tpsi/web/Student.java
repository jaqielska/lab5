package tpsi.web;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Student
 */
public class Student extends Person {
    
    private String groupId;
    private List<Double> grades = new ArrayList<>();
    
    public Student(String firstName, String lastName, String emailAddress) {
        super(firstName, lastName, emailAddress);
       
    }
    
   
}
 
