import React, { useEffect, useState } from "react";
import Card from "./Card";
import axios from "axios";
import { useAuth } from "../Auth/AuthProvider";

function Home() {
  const [data, setData] = useState(null);
    const { user ,jwt} = useAuth()
  // State to store the fetched data
  const [url, setUrl] = useState(
    "http://localhost:1337/api/boxes?populate=*&pagination[pageSize]=50"
  );
  const [search, setSearch] = useState("");
  const [isLoading, setIsLoading] = useState(false); // Loading state

  const fetchData = async () => {
    setIsLoading(true); // Start loading
    console.log("jwt",jwt)
    try {
      const { data: response = [] } = await axios.get(url,{ headers:{
        Authorization:
          `Bearer ${jwt}`,
      }},);
      setData(response); // Update the state with the fetched data
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setIsLoading(false); // End loading
    }
  };

  useEffect(() => {
    console.log("fakhri user",user)
    fetchData(); // Fetch data when the component mounts or URL changes
  }, [url]);

  return (
    <>
      <div className="bg-gray-100   w-screen  p-4">
        <div className="pt-5 flex items-center max-w-sm mx-auto">
          <label htmlFor="simple-search" className="sr-only">
            Search
          </label>
          <div className="relative w-full">
            <div className="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
              <svg
                className="w-4 h-4 text-gray-500 dark:text-gray-400"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 18 20"
              >
                <path
                  stroke="currentColor"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth="2"
                  d="M3 5v10M3 5a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 10a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm12 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm0 0V6a3 3 0 0 0-3-3H9m1.5-2-2 2 2 2"
                />
              </svg>
            </div>
            <input
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              type="text"
              id="simple-search"
              className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5"
              placeholder="Search branch name..."
              required
            />
          </div>
          <button
            onClick={() => {
              const newUrl = search
              ? `http://localhost:1337/api/boxes?populate=*&pagination[pageSize]=50&filters[cable_id][reference][$contains]=${search.trim().replace(/\s+/g, '').slice(0, 12)}`
              : "http://localhost:1337/api/boxes?populate=*&pagination[pageSize]=50";
            
            setUrl(newUrl);
              

            }}
            className="p-2.5 ml-2 text-sm font-medium text-white bg-blue-700 rounded-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300"
          >
            <svg
              className="w-4 h-4"
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 20 20"
            >
              <path
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
              />
            </svg>
            <span className="sr-only">Search</span>
          </button>
        </div>

        {isLoading ? (
          <div className="flex justify-center items-center mt-6">
            <div className="w-8 h-8 border-4 border-blue-500 border-t-transparent rounded-full animate-spin"></div>
          </div>
        ) : (
          <div className="flex flex-wrap justify-center items-center gap-8 mt-6 w-full h-full ">
            {data?.data?.map((card, index) => (
              <div
                key={index}
                className="max-w-xs w-full flex-grow flex-shrink"
                style={{ minWidth: "200px" }}
              >
                <Card key={index} data={card} />
              </div>
            ))}
          </div>
        )}

        {data?.meta && (
          <section className="flex items-center justify-center mt-6">
            <nav
              className="relative flex items-center bg-white rounded-md shadow-md p-4 dark:bg-gray-800"
              aria-label="Pagination"
            >
              <button
                disabled={data.meta.pagination.page === 1}
                onClick={() =>
                  setUrl(
                    `http://localhost:1337/api/boxes?populate=*&pagination[page]=${
                      data.meta.pagination.page - 1
                    }&pagination[pageSize]=50`
                  )
                }
                className={`px-3 py-2 text-sm font-medium border rounded-l-lg ${
                  data.meta.pagination.page === 1
                    ? "text-gray-400 bg-gray-200 cursor-not-allowed"
                    : "text-blue-600 hover:bg-blue-100"
                }`}
              >
                prev
              </button>

              <span className="px-4 text-gray-500">
                Page {data.meta.pagination.page} of{" "}
                {data.meta.pagination.pageCount}
              </span>

              <button
                disabled={
                  data.meta.pagination.page === data.meta.pagination.pageCount
                }
                onClick={() =>
                  setUrl(
                    `http://localhost:1337/api/boxes?populate=*&pagination[page]=${
                      data.meta.pagination.page + 1
                    }&pagination[pageSize]=50`
                  )
                }
                className={`px-3 py-2 text-sm font-medium border rounded-r-lg ${
                  data.meta.pagination.page === data.meta.pagination.pageCount
                    ? "text-gray-400 bg-gray-200 cursor-not-allowed"
                    : "text-blue-600 hover:bg-blue-100"
                }`}
              >
                next
              </button>
            </nav>
          </section>
        )}
      </div>
    </>
  );
}

export default Home;
