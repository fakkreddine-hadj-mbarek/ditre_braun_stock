import axios from 'axios';
import { createContext, useState, useEffect, useContext } from 'react';
import { useNavigate } from 'react-router-dom';

const AuthContext = createContext(); // No need for null checks here

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [jwt, setJwt] = useState(sessionStorage.getItem('jwt'));
  const navigate = useNavigate();

  // Fetch user data if JWT is present
  useEffect(() => {
    if (jwt) {
      // Validate JWT and fetch user details
      axios
        .get('http://localhost:1337/api/users/me', {
          headers: { Authorization: `Bearer ${jwt}` },
        })
        .then((response) => {
          setUser(response.data); // Set the user data
        })
        .catch((error) => {
          console.error('Failed to fetch user data:', error);
          logout(); // Clear invalid session and redirect to login
        });
    }
  }, [jwt]);

  const login = async (username, password) => {
    try {
      const response = await axios.post('http://localhost:1337/api/auth/local', {
        identifier: username,
        password: password,
      });

      const { user, jwt } = response.data;

      setUser(user);
      setJwt(jwt);

      // Store JWT token in localStorage
      sessionStorage.setItem('jwt', jwt);
    } catch (error) {
      console.error('Login failed:', error);
      throw error;
    }
  };

  const logout = () => {
    setUser(null);
    setJwt(null);

    // Remove JWT token from localStorage
    sessionStorage  .removeItem('jwt');
    navigate('/login');
  };

  return (
    <AuthContext.Provider value={{ user, jwt, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
};
