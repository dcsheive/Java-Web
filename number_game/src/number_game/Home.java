package number_game;
import java.util.Random;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String again = request.getParameter("again");
		if (again != null) {
			session.setAttribute("number", null);
			session.setAttribute("wrong", null);
			session.setAttribute("boxClass", null);
		}
		if (session.getAttribute("number")==null) {
        	Random r = new Random();
        	int number = r.nextInt(100) +1;
        	session.setAttribute("number", number);
        }
		int number = (int) session.getAttribute("number");
		String wrong = (String) session.getAttribute("wrong");
		String boxClass = (String) session.getAttribute("boxClass");
        request.setAttribute("number", number);
        request.setAttribute("wrong", wrong);
        request.setAttribute("boxClass", boxClass);
    	RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
        view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String strguess =  request.getParameter("guessNum");
		int guess = Integer.parseInt(strguess);
		int num = (int) session.getAttribute("number");
	    if (guess < num) {
	    	session.setAttribute("boxClass", "red");
        	session.setAttribute("wrong", "low");
	    } else if ( guess > num) {
	    	session.setAttribute("boxClass", "red");
	    	session.setAttribute("wrong", "high");	    	
	    } else if (guess == num ) {
	    	session.setAttribute("boxClass", "green");
	    	session.setAttribute("wrong", "right");	    	
	    }
        response.sendRedirect("/number_game/Home");
	}

}
