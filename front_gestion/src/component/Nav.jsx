import React,{useEffect} from 'react'
import logo from "../assets/logo1.png"
import cable from "../assets/cable.png"
import box from "../assets/cable.png"
import { useAuth } from '../Auth/AuthProvider'
import { Drawer } from 'flowbite';
import { Link } from 'react-router-dom'

function Nav() {
 

     const { user,logout } = useAuth()
    console.log(user)

     const  getInitialsFromEmail=(email)=>{
        if (!email) return "NA";
      
        // Get the part before the '@' and take the first two characters
        const initials = email.split("@")[0].slice(0, 2).toUpperCase();
      
        return initials || "NA"; // Default to 'NA' if no valid initials
      }
      

  return (
    <nav class="bg-white border-b border-gray-200 px-4 py-2.5 dark:bg-gray-800 dark:border-gray-700 fixed left-0 right-0 top-0 z-50">
    <div class="flex flex-wrap justify-between items-center">

      <div class="flex justify-start items-center">
        <button
          data-drawer-target="drawer-navigation"
          data-drawer-toggle="drawer-navigation"
          aria-controls="drawer-navigation"
          class="p-2 mr-2 text-gray-600 rounded-lg cursor-pointer md:hidden hover:text-gray-900 hover:bg-gray-100 focus:bg-gray-100 dark:focus:bg-gray-700 focus:ring-2 focus:ring-gray-100 dark:focus:ring-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"
        >
          <svg
            aria-hidden="true"
            class="w-6 h-6"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
              clip-rule="evenodd"
            ></path>
          </svg>
          <svg
            aria-hidden="true"
            class="hidden w-6 h-6"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
              clip-rule="evenodd"
            ></path>
          </svg>
          <span class="sr-only">Toggle sidebar</span>
        </button>
        <a href="https://flowbite.com" class="flex items-center justify-between mr-4">
          <img
            src={logo}
            class="mr-3 h-14 object-contain"
            alt="Flowbite Logo"
          />
          <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Stock Management</span>
        </a>
       
      </div>
      <div class="flex items-center lg:order-2">
     

        
       
        
        <button
          type="button"
          data-dropdown-toggle="apps-dropdown"
          class="p-2 text-gray-500 rounded-lg hover:text-gray-900 hover:bg-gray-100 dark:text-gray-400 dark:hover:text-white dark:hover:bg-gray-700 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
        >
          <span class="sr-only">View notifications</span>
         
          <svg
            class="w-6 h-6"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"
            ></path>
          </svg>
        </button>
        
        <div
          class="hidden overflow-hidden z-50 my-4 max-w-sm text-base list-none bg-white rounded divide-y divide-gray-100 shadow-lg dark:bg-gray-700 dark:divide-gray-600 rounded-xl"
          id="apps-dropdown"
        >
          <div
            class="block py-2 px-4 text-base font-medium text-center text-gray-700 bg-gray-50 dark:bg-gray-600 dark:text-gray-300"
          >
            Apps
          </div>
          <div class="grid grid-cols-3 gap-4 p-4">
           
          

            <Link
             to={"/home/stock"}
              class="block p-4 text-center rounded-lg hover:bg-gray-100 dark:hover:bg-gray-600 group"
            >
              <svg  class="mx-auto mb-1 w-7 h-7 text-gray-400 group-hover:text-gray-500 dark:text-gray-400 dark:group-hover:text-gray-400 " aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
  <path fill-rule="evenodd" d="M5.024 3.783A1 1 0 0 1 6 3h12a1 1 0 0 1 .976.783L20.802 12h-4.244a1.99 1.99 0 0 0-1.824 1.205 2.978 2.978 0 0 1-5.468 0A1.991 1.991 0 0 0 7.442 12H3.198l1.826-8.217ZM3 14v5a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-5h-4.43a4.978 4.978 0 0 1-9.14 0H3Z" clip-rule="evenodd"/>
</svg>

              <div class="text-sm text-gray-900 dark:text-white">
                Stock
              </div>
            </Link>
            <span
              href="#"
              class="block p-4 text-center rounded-lg hover:bg-gray-100 dark:hover:bg-gray-600 group"
            >
             <img src={cable}  class=" gray-scale mx-auto mb-1 w-7 h-7 text-gray-400 group-hover:text-gray-500 dark:text-gray-400 dark:group-hover:text-gray-400"/>
              <div class="text-sm text-gray-900 dark:text-white">
                Cables
              </div>
            </span>
            <a
              href="#"
              class="block p-4 text-center rounded-lg hover:bg-gray-100 dark:hover:bg-gray-600 group"
            >
              <svg
                aria-hidden="true"
                class="mx-auto mb-1 w-7 h-7 text-gray-400 group-hover:text-gray-500 dark:text-gray-400 dark:group-hover:text-gray-400"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path d="M4 3a2 2 0 100 4h12a2 2 0 100-4H4z"></path>
                <path
                  fill-rule="evenodd"
                  d="M3 8h14v7a2 2 0 01-2 2H5a2 2 0 01-2-2V8zm5 3a1 1 0 011-1h2a1 1 0 110 2H9a1 1 0 01-1-1z"
                  clip-rule="evenodd"
                ></path>
              </svg>
              <div class="text-sm text-gray-900 dark:text-white">
                Box
              </div>
            </a>
            <Link
              to={"/home/logs"}
              class="block p-4 text-center rounded-lg hover:bg-gray-100 dark:hover:bg-gray-600 group"
            >
              <svg class="mx-auto mb-1 w-7 h-7 text-gray-400 group-hover:text-gray-500 dark:text-gray-400 dark:group-hover:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
  <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v15a1 1 0 0 0 1 1h15M8 16l2.5-5.5 3 3L17.273 7 20 9.667"/>
</svg>

              <div class="text-sm text-gray-900 dark:text-white">
                Logs
              </div>
            </Link>
           
          </div>
        </div>
        <button
          type="button"
          class="flex mx-3 text-sm bg-gray-600 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
          id="user-menu-button"
          aria-expanded="false"
          data-dropdown-toggle="dropdown"
        >
          <span class="sr-only">Open user menu</span>
          <span
            class="w-8 h-8 rounded-full flex justify-center items-center text-white "
            
            alt="user photo"
          >{user&&getInitialsFromEmail(user.email)}</span>
        </button>
       
        <div
          class="hidden z-50 my-4 w-56 text-base list-none bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600 rounded-xl"
          id="dropdown"
        >
          <div class="py-3 px-4">
            <span
              class="block text-sm font-semibold text-gray-900 dark:text-white"
              >{user?.username} </span >
            <span
              class="block text-sm text-gray-900 truncate dark:text-white"
              >{user?.email }</span
            >
          </div>
          <ul
            class="py-1 text-gray-700 dark:text-gray-300"
            aria-labelledby="dropdown"
          >
            <li>
              <a
                href="#"
                class="block py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-400 dark:hover:text-white"
                >My profile</a
              >
            </li>
            <li>
              <a
                href="#"
                class="block py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-400 dark:hover:text-white"
                >Account settings</a
              >
            </li>
          </ul>
          
          <ul
            class="py-1 text-gray-700 dark:text-gray-300"
            aria-labelledby="dropdown"
          >
            <li>
              <button onClick={()=>logout()}
               
                class="block py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white w-full justify-start"
                >Sign out</button>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  )
}

export default Nav