import React, { useEffect, useState } from 'react';

import { useAuth } from '../Auth/AuthProvider';

import { Navigate } from 'react-router-dom';

function ProtectedRoute({ children }) {
  const { user, jwt} = useAuth();
 

  const loader = () => {
   
      if (jwt){
        console.log("jwt",jwt)
     
        return children
      }else{
        return  <Navigate to={"/login"}/> 
        
      }



      
    
      
    }
  

  return (<>{loader()}</>);
}

export default ProtectedRoute;
