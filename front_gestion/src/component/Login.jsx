import React, { useState } from 'react'
import { useAuth } from '../Auth/AuthProvider'
import { Spin, notification } from 'antd' // Importing components from Ant Design
import { useNavigate } from 'react-router-dom'
import logo1 from "../assets/logo1.png"

function Login() {
  const [password, setPassword] = useState('')
  const [username, setUsername] = useState('')
  const { login } = useAuth()
  const [loading, setLoading] = useState(false)
  const navigate = useNavigate()

  // Handle the login
  const loginUser = async () => {
    setLoading(true) // Start loading

    try {
      await login(username, password)

      // Show success notification
      notification.success({
        message: 'Login Successful',
        description: 'You have logged in successfully!',
      })
      navigate("/home")
    } catch (error) {
      console.error(error)

      // Show error notification
      notification.error({
        message: 'Login Failed',
        description: 'There was an error with the login. Please try again.',
      })
    } finally {
      setLoading(false) // End loading
    }
  }

  return (
    <div className="flex  justify-center h-screen  bg-gray-50 py-12 px-6 lg:px-8">
      <div className="w-full max-w-sm space-y-8">
       
        <h2 className="text-center text-3xl font-bold text-gray-900">
          Sign in to your account
        </h2>

        <div className="mt-8 space-y-6">
          <div>
            <label htmlFor="email" className="block text-sm font-medium text-gray-900">
              Email address
            </label>
            <div className="mt-2">
              <input
                value={username}
                onChange={(e) => setUsername(e.target.value)}
                type="email"
                name="email"
                id="email"
                autoComplete="email"
                required
                className="block w-full px-4 py-2 text-gray-900 placeholder-gray-400 rounded-md border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
              />
            </div>
          </div>

          <div>
            <div className="flex justify-between items-center">
              <label htmlFor="password" className="block text-sm font-medium text-gray-900">
                Password
              </label>
              <a href="#" className="text-sm text-indigo-600 hover:text-indigo-500 font-semibold">
                Forgot password?
              </a>
            </div>
            <div className="mt-2">
              <input
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                type="password"
                name="password"
                id="password"
                autoComplete="current-password"
                required
                className="block w-full px-4 py-2 text-gray-900 placeholder-gray-400 rounded-md border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
              />
            </div>
          </div>

          <div>
            <button
              onClick={loginUser}
              className="w-full flex justify-center py-2 px-4 border border-transparent text-sm font-semibold rounded-md text-white bg-indigo-600 hover:bg-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
            >
              {loading ? <Spin size="small" /> : 'Sign in'}
            </button>
          </div>
        </div>

        <div className="text-center">
          <p className="text-sm text-gray-600">
            Don't have an account?{' '}
            <a href="#" className="text-indigo-600 font-semibold hover:text-indigo-500">
              Sign up
            </a>
          </p>
        </div>
      </div>
    </div>
  )
}

export default Login
