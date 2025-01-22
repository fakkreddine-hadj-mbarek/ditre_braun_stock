    import React, { useEffect, useState ,useRef} from 'react';

    import { useParams } from 'react-router-dom';
    import axios from 'axios';
    import { PlusOutlined, MinusOutlined, DeleteOutlined } from '@ant-design/icons';
    import cable from "../assets/cable.png";
    import { Spin, Modal, message } from 'antd';
    import logo1 from "../assets/logo1.png"
import { useAuth } from '../Auth/AuthProvider';
import { useReactToPrint } from "react-to-print";
import ReactToPrint from 'react-to-print';
    

    function BoxDetails() {
        const contentRef = useRef(null);
        const reactToPrintFn = useReactToPrint({ contentRef });
      
        
            // Ref for the content you want to print
            
        
        



        const {jwt}=useAuth()
        const [messageApi, contextHolder] = message.useMessage();


        const [actionmodal, setactionmodal] = useState(false);
        const showaction = () => {
            setactionmodal(true);
          };
        
          const handleactionok = () => {
            setactionmodal(false);
          };
        
          const handleCancelaction = () => {
            setactionmodal(false);
          };



        const error = () => {
            messageApi.open({
                type: 'error',
                content: 'Amount is wrong',
            });
        };

        const showAddModalAdd = () => {
            setshow(true);
        };
        
        // Function to hide the modal
        const hideAddModalAdd = () => {
            setshow(false);
        };
        const [projectName, setProjectName] = useState('');
        const [reference, setReference] = useState('');
        const [idf, setIdf] = useState('');
        const [idb, setIdb] = useState('');
        const [longeur, setLongeur] = useState('');
        const [section, setSection] = useState('');
        const [qte, setQte] = useState('');
        const { id } = useParams();
        const [data, setData] = useState(null);
        const [action, setaction] = useState(null);
        const [loading, setLoading] = useState(true);
        const [isWithdrawModalVisible, setIsWithdrawModalVisible] = useState(false);
        const [isAddModalVisible, setIsAddModalVisible] = useState(false);
        const [show, setshow] = useState(false);
        const [withdrawQuantity, setWithdrawQuantity] = useState('');
        const [addQuantity, setAddQuantity] = useState('');
        const [isDeleteModalVisible, setIsDeleteModalVisible] = useState(false);  // Delete modal visibility
        const handleAdde = async () => {
            const newCable = {
                project_name: projectName,
                reference: reference,
                idf: idf,
                idb: idb,
                
                qte: Number(qte),
            };
        
            if (Object.values(newCable).some(value => !value)) {
                messageApi.open({ type: 'error', content: 'All fields are required' });
                return;
            }
        
            try {
                console.log("data fa",{
                    data: newCable
                })
                const response = await axios.post(`http://localhost:1337/api/cables`, {
                    data: newCable
                },{ headers:{
                    Authorization:
                      `Bearer ${jwt}`,
                  }});
                console.log("Added cable:", response.data);
        
                await axios.put(`http://localhost:1337/api/boxes/${id}`, {
                    data: { Active: true, cable_id: response.data.data.documentId }
                },{ headers:{
                    Authorization:
                      `Bearer ${jwt}`,
                  }});
        
                messageApi.open({ type: 'success', content: 'Cable added successfully' });
                // Clear form inputs
                setProjectName('');
                setReference('');
                setIdf('');
                setIdb('');
                setLongeur('');
                setSection('');
                setQte('');
                hideAddModalAdd();
                fetch(); // Refetch data after adding cable
            } catch (error) {
                console.error("Error adding cable:", error);
                messageApi.open({ type: 'error', content: 'Error adding cable' });
            }
        };
        

        const fetch = async () => {
            setLoading(true);
            try {
                const { data: response } = await axios.get(`http://localhost:1337/api/boxes/${id}?populate=*`,{ headers:{
                    Authorization:
                      `Bearer ${jwt}`,
                  }});
                setData(response?.data || null);
            } catch (error) {
                console.log(error);
            } finally {
                setLoading(false);
            }
        };

        useEffect(() => {
            fetch();
        }, [id]);

        if (loading) {
            return <Spin />;
        }

        const showWithdrawModal = () => {
            setIsWithdrawModalVisible(true);
        };

        const showAddModal = () => {
            setIsAddModalVisible(true);
        };

        const showDeleteModal = () => {
            setIsDeleteModalVisible(true);
        };

        const hideWithdrawModal = () => {
            setIsWithdrawModalVisible(false);
        };

        const hideAddModal = () => {
            setIsAddModalVisible(false);
        };

        const hideDeleteModal = () => {
            setIsDeleteModalVisible(false);
        };

        const handleWithdraw = async () => {
            const withdrawValue = Number(withdrawQuantity);
            if (withdrawValue <= 0 || isNaN(withdrawValue)) {
                error();
                return;
            }

            const availableQuantity = Number(data.cable_id.qte);
            if (withdrawValue > availableQuantity) {
                error();
                setWithdrawQuantity(availableQuantity.toString());
                return;
            }

            try {
                const updatedQuantity = availableQuantity - withdrawValue;
                await axios.put(`http://localhost:1337/api/cables/${data.cable_id.documentId}`, {
                    data: { qte: updatedQuantity }
                },{ headers:{
                    Authorization:
                      `Bearer ${jwt}`,
                  }});
                  setaction({action:"sortie",data:data,qteup:withdrawValue})
                setData({ ...data, cable_id: { ...data.cable_id, qte: updatedQuantity } });
                setWithdrawQuantity('');
                hideWithdrawModal();
                showaction()
            } catch (error) {
                console.error("Error updating quantity:", error);
                error();
            }
        };

        const handleAdd = async () => {
            const addValue = Number(addQuantity);
            if (addValue > 0 && !isNaN(addValue)) {
                try {
                    const updatedQuantity = data.cable_id.qte + addValue;
                    setaction({action:"add",data:data,qteup:addValue})
                    await axios.put(`http://localhost:1337/api/cables/${data.cable_id.documentId}`, {
                        data: { qte: updatedQuantity }
                    },{ headers:{
                        Authorization:
                          `Bearer ${jwt}`,
                      }});

                    setData({ ...data, cable_id: { ...data.cable_id, qte: updatedQuantity } });
                    setAddQuantity('');
                    hideAddModal();
                    showaction()
                    showaction
                } catch (error) {
                    console.error("Error adding quantity:", error);
                }
            }
        };

        const handleDelete = async () => {
            try {
                await axios.put(`http://localhost:1337/api/boxes/${id}`, {
                    data: { Active: false }
                },{ headers:{
                    Authorization:
                      `Bearer ${jwt}`,
                  }});

                await axios.delete(`http://localhost:1337/api/cables/${data.cable_id.documentId}`,{ headers:{
                    Authorization:
                      `Bearer ${jwt}`,
                  }});
                messageApi.open({ type: 'success', content: 'Cable deleted successfully' });
                hideDeleteModal();
            } catch (error) {
                console.error("Error deleting cable:", error);
                messageApi.open({ type: 'error', content: 'Error deleting cable' });
            }
        };

        return (
            <>
              
                <div className='bg-gray-100 w-screen flex items-center justify-center h-screen'>
                    {contextHolder}
                    {data?.Active ? (
                        <div className="w-full h-full">
                            <div className="h-full p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
                                <div className="flex justify-between items-center pb-4 mb-4 rounded-t border-b sm:mb-5 dark:border-gray-600">
                                    <h3 className="text-xl font-semibold text-gray-900 dark:text-white">
                                        Cable Details : <span className="inline-flex items-center bg-green-100 text-green-800 text-base font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300">
                                            <span className="w-2 h-2 me-1 bg-green-500 rounded-full"></span>
                                            #{data.uid}
                                        </span>
                                    </h3>
                                    <button
                                                onClick={showDeleteModal}
                                                className="flex items-center gap-2 px-4 py-2 bg-red-500 text-white rounded-md "
                                            >
                                                <DeleteOutlined /> Delete
                                            </button>
                                </div>

                                <div>
                                    <div className='flex justify-center overflow-hidden items-center h-full'>
                                        <div className='flex flex-col w-1/2 gap-3'>
                                            <span className="flex items-center gap-2">
                                                <p className="text-lg font-semibold text-gray-900 hover:underline dark:text-white">Project:</p>
                                                <p className="text-base font-medium text-gray-500 dark:text-gray-400">{data.cable_id.project_name}</p>
                                            </span>
                                            <span className="flex items-center gap-2">
                                                <p className="text-lg font-semibold text-gray-900 hover:underline dark:text-white">Reference:</p>
                                                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">#{data.cable_id.reference}</p>
                                            </span>
                                            <span className="flex items-center gap-2">
                                                <p className="text-lg font-semibold text-gray-900 hover:underline dark:text-white">ID FILE:</p>
                                                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">#{data.cable_id.idf}</p>
                                            </span>
                                        </div>
                                        <div className='flex flex-col gap-3 w-1/2'>
                                            <span className="flex items-center gap-2">
                                                <p className="text-lg font-semibold text-gray-900 hover:underline dark:text-white">ID Bobine:</p>
                                                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">#{data.cable_id.idb}</p>
                                            </span>
                                            <span className="flex items-center gap-2">
                                                <p className="text-lg font-semibold text-gray-900 hover:underline dark:text-white">Length (m):</p>
                                                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">{data.cable_id.longeur} m</p>
                                            </span>
                                            <span className="flex items-center gap-2">
                                                <p className="text-lg font-semibold text-gray-900 hover:underline dark:text-white">Section (mm):</p>
                                                <p className="text-sm font-medium text-gray-500 dark:text-gray-400">{data.cable_id.section} mm</p>
                                            </span>
                                        </div>
                                        <img src="https://kabelkonfektion.com/site/templates/media/logo.svg" />
                                    </div>
                                    <div>
                                        <div className="flex items-center gap-4 mt-4">
                                            <img className="w-10 h-10 rounded-full" src={cable} alt="Cable Icon" />
                                            <span className="font-semibold text-gray-900">Quantity: <span className='text-base font-medium text-gray-500 dark:text-gray-400'>{data.cable_id.qte}</span></span>
                                        </div>
                                        <div className="flex gap-4 mt-4">
                                            <button
                                                onClick={showWithdrawModal}
                                                className="flex items-center gap-2 px-4 py-2 bg-red-500 text-white rounded-md hover:bg-red-600"
                                            >
                                                <MinusOutlined /> Withdraw
                                            </button>
                                            <button
                                                onClick={showAddModal}
                                                className="flex items-center gap-2 px-4 py-2 bg-green-500 text-white rounded-md hover:bg-green-600"
                                            >
                                                <PlusOutlined /> Add
                                            </button>
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ) : (
                        <button
                        onClick={showAddModalAdd}
                        className="flex flex-col items-center justify-center w-40 h-40 max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700 gap-5"
                    >
                        <PlusOutlined style={{fontSize:"20px"}}/>
                        <p className="font-normal text-gray-700 dark:text-gray-400">Add Cable</p>
                    </button>
                    )}
                </div>

                {/* Withdraw Modal */}
                <Modal
                    title="Withdraw Quantity"
                    visible={isWithdrawModalVisible}
                    onOk={handleWithdraw}
                    onCancel={hideWithdrawModal}
                    okText="Withdraw"
                    okButtonProps={{
                        className: "bg-blue-500 text-white hover:bg-blue-600"
                    }}
                >
                    <input
                        type="number"
                        value={withdrawQuantity}
                        onChange={(e) => setWithdrawQuantity(e.target.value)}
                        className="w-full p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                        placeholder="Enter quantity"
                    />
                </Modal>

                {/* Add Modal */}
                <Modal
                    title="Add Quantity"
                    visible={isAddModalVisible}
                    onOk={handleAdd}
                    onCancel={hideAddModal}
                    okText="Add"
                    okButtonProps={{
                        className: "bg-blue-500 text-white hover:bg-blue-600"
                    }}
                >
                    <input
                        type="number"
                        value={addQuantity}
                        onChange={(e) => setAddQuantity(e.target.value)}
                        className="w-full p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                        placeholder="Enter quantity"
                    />
                </Modal>
                <Modal
    title="Add Cable"
    visible={show}
    onOk={handleAdde}
    onCancel={hideAddModalAdd}
    okText="Add"
    okButtonProps={{
        className: "bg-blue-500 text-white hover:bg-blue-600"
    }}
>
    <div className="space-y-4">
        <div>
            <label className="block text-sm font-medium text-gray-700">Project Name</label>
            <input
                type="text"
                value={projectName}
                onChange={(e) => setProjectName(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter project name"
            />
        </div>
        <div>
            <label className="block text-sm font-medium text-gray-700">Reference</label>
            <input
                type="text"
                value={reference}
                onChange={(e) => setReference(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter reference"
            />
        </div>
        <div>
            <label className="block text-sm font-medium text-gray-700">ID File (IDF)</label>
            <input
                type="text"
                value={idf}
                onChange={(e) => setIdf(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter IDF"
            />
        </div>
        <div>
            <label className="block text-sm font-medium text-gray-700">ID Bobine (IDB)</label>
            <input
                type="text"
                value={idb}
                onChange={(e) => setIdb(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter IDB"
            />
        </div>
        <div>
            <label className="block text-sm font-medium text-gray-700">Length (m)</label>
            <input
                type="number"
                value={longeur}
                onChange={(e) => setLongeur(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter length"
            />
        </div>
        <div>
            <label className="block text-sm font-medium text-gray-700">Section (mm)</label>
            <input
                type="number"
                value={section}
                onChange={(e) => setSection(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter section"
            />
        </div>
        <div>
            <label className="block text-sm font-medium text-gray-700">Quantity</label>
            <input
                type="number"
                value={qte}
                onChange={(e) => setQte(e.target.value)}
                className="w-full p-2 border border-gray-300 rounded-md"
                placeholder="Enter quantity"
            />
        </div>
    </div>
</Modal>

                {/* Delete Modal */}
                <Modal
                    title="Confirm Delete"
                    visible={isDeleteModalVisible}
                    onOk={handleDelete}
                    onCancel={hideDeleteModal}
                    okText="Delete"
                    okButtonProps={{
                        className: "bg-red-500 text-white hover:bg-red-600"
                    }}
                    cancelButtonProps={{
                        className: "text-gray-500 hover:text-gray-700"
                    }}
                >
                    <p>Are you sure you want to delete this cable and set the box as inactive?</p>
                </Modal>

                <Modal
  title="Basic Modal"
  open={actionmodal}
  onOk={handleactionok}
  onCancel={handleCancelaction}
  footer={null} // You can remove the default footer if needed
  className="rounded-lg shadow-xl p-8"
>

  <div ref={contentRef} className="w-full flex flex-col justify-center items-center space-y-8">
    {/* Logo */}<div className='flex justify-between'>
    <img
      src="https://kabelkonfektion.com/site/templates/media/logo.svg"
      width={150}
      height={100}
      alt="Logo"
      className="mb-6"
    />
    <img
      src={logo1}
      width={150}
      height={100}
      alt="Logo"
      className="mb-6"
    />
    </div>
    

    {/* Title */}
    <p className="text-gray-900 text-4xl font-semibold dark:text-white">
      {action?.action === "add" ? "Bon de Reception" : "Bon de sortie"}
    </p>

    {/* Table */}
    <table className="min-w-full table-auto border-separate border-spacing-2 rounded-lg shadow-lg">
      <thead>
        <tr>
          <th className="px-6 py-4 text-left text-sm font-semibold text-gray-700 dark:text-white bg-gray-200 dark:bg-gray-700 rounded-tl-lg">
            Field
          </th>
          <th className="px-6 py-4 text-left text-sm font-semibold text-gray-700 dark:text-white bg-gray-200 dark:bg-gray-700 rounded-tr-lg">
            Value
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            Projet:
          </td>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            {data.cable_id.project_name}
          </td>
        </tr>
        <tr>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            Reference:
          </td>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            {data.cable_id.reference}
          </td>
        </tr>
        <tr>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            ID FILE IDF:
          </td>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            {data.cable_id.idf}
          </td>
        </tr>
        <tr>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            ID Bobine IDB:
          </td>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            {data.cable_id.idb}
          </td>
        </tr>
        <tr>
          <td className="px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600 bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-300">
            Quantite precedante:
          </td>
          <td className=" bg-blue-100 px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            {action?.data.cable_id.qte}
          </td>
        </tr>
        <tr>
          <td
            className={`px-6 py-4 text-lg font-medium ${
              action?.action === "add"
                ? "bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-300"
                : "bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-300"
            } border-b border-gray-300 dark:border-gray-600`}
          >
            Quantite a {action?.action === "add" ? "Ajouter" : "Sortie"}:
          </td>
          <td
            className={`px-6 py-4 text-lg font-medium ${
              action?.action === "add"
                ? "bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-300"
                : "bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-300"
            } border-b border-gray-300 dark:border-gray-600`}
          >
            {action?.qteup}
          </td>
        </tr>
        <tr>
        <td className=" bg-green-100 px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
        Quantite Actuel
          </td>
          <td className=" bg-green-100 px-6 py-4 text-lg font-medium text-gray-800 dark:text-gray-300 border-b border-gray-300 dark:border-gray-600">
            {data.cable_id.qte}
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <button  class="text-white mt-2 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800" onClick={() => reactToPrintFn()}>Print</button>
 
</Modal>;

            </>
        );
    }

    export default BoxDetails;
