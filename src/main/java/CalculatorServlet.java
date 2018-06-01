import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("numberInput.jsp").forward(request,response);


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double num1 = Double.parseDouble(request.getParameter("num1"));
        double num2 = Double.parseDouble(request.getParameter("num2"));
        String operator = request.getParameter("operator");

        double result;

        if(operator.equals("+") ){
             result = num1 + num2 ;
        }
        else if(operator.equals("*")){
            result = num1 * num2;
        }
        else {
            result = 0.0;
        }
        request.setAttribute("result", result);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
