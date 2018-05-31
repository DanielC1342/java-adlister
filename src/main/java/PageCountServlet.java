import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class PageCountServlet extends HttpServlet {
    private Integer pgCount = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        pgCount++;
        out.println("<h1>" + pgCount + "</h1>");
    }
}
