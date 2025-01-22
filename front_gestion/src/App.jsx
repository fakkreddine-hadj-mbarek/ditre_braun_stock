import { Routes, Route, BrowserRouter as Router } from 'react-router-dom';
import './App.css';
import Home from './component/Home';
import 'flowbite';
import BoxDetails from './component/BoxDetails';
import Login from './component/Login';
import ProtectedRoute from './Auth/ProtectedRoute';
import { AuthProvider } from './Auth/AuthProvider';
import Nav from './component/Nav';
import Stocks from './component/Stocks';
import Logs from './component/Logs';

function App() {
  return (
 <AuthProvider>
      <Routes>
        <Route path="/login" element={<><Login /></>} />
        
        {/* Wrap protected routes with ProtectedRoute */}
        <Route 
          path="/box/:id" 
          element={<ProtectedRoute ><BoxDetails /></ProtectedRoute>} 
        />
        <Route 
          path="/home" 
          element={<ProtectedRoute ><Home /></ProtectedRoute>} 
        />
         <Route 
          path="/home/logs" 
          element={<ProtectedRoute ><Nav/><Logs /></ProtectedRoute>} 
        />
         <Route 
          path="/home/stock" 
          element={<ProtectedRoute ><Nav/><Stocks /></ProtectedRoute>} 
        />
      </Routes>
      </AuthProvider>
  );
}

export default App;
