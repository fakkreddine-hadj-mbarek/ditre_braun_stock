import React from 'react';
import { FolderOpenOutlined } from '@ant-design/icons';
import box from "../assets/box.svg";
import "../css/card.css";
import { Link } from 'react-router-dom';

function Card({ data }) {
  console.log("fakhri",data.cable_id.idf)
    

  return (
    <Link to={`/box/${data.documentId}`} onClick={()=>{redirect()}} className="card p-4 !h-12 transition-transform transform hover:scale-105 hover:shadow-lg"> {/* Add hover scaling and shadow */}
      <div className="p-6 bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700 flex flex-col justify-center items-center transition-all ease-in-out">
        <div className="w-full flex justify-center">
          <img src={box} alt="My Icon" className="object-contain w-1/3" />
        </div>

        <div className="w-full mt-4 space-y-3"> {/* Added space between items */}
          <span className="flex items-center gap-2">
            <p className="text-base font-semibold text-gray-900 hover:underline dark:text-white">Id:</p>
            <p className="text-sm font-medium text-gray-500 dark:text-gray-400">#{data.uid}</p>
          </span>
          <span className="inline-flex items-center bg-red-100 text-red-800 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-red-900 dark:text-red-300">
                <span className="w-2 h-2 me-1 bg-red-500 rounded-full"></span>
               IDF: {data.cable_id.idf}
              </span>

          <span className="flex items-center gap-2">
            <p className="text-base font-semibold text-gray-900 hover:underline dark:text-white">Status:</p>
            {data.Active ? (
              <span className="inline-flex items-center bg-green-100 text-green-800 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300">
                <span className="w-2 h-2 me-1 bg-green-500 rounded-full"></span>
                Active
              </span>
            ) : (
              <span className="inline-flex items-center bg-red-100 text-red-800 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-red-900 dark:text-red-300">
                <span className="w-2 h-2 me-1 bg-red-500 rounded-full"></span>
                Empty
              </span>
            )}
          </span>

          <span className="flex items-center gap-2">
            <p className="text-base font-semibold text-gray-900 hover:underline dark:text-white">Updated At:</p>
            <p className="text-sm font-medium text-gray-500 dark:text-gray-400">{data.updatedAt}</p>
          </span>
        </div>
      </div>
    </Link>
  );
}

export default Card;
