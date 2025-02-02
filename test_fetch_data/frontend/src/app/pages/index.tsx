
import React, { useState, useEffect } from 'react';
import Data from '../types';

function MyComponent() {
  const [data, setData] = useState<Data | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('http://localhost:8080/names');
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        const jsonData = await response.json();
        setData(jsonData);
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, []);

  return (
    <div>
      <div>
        {data ? (
          <p>Data: {JSON.stringify(data)}</p>
        ) : (
          <p>Loading...</p>
        )}
      </div>
      <div>
        {data ? (
          <div>
            {data.map((item) => (
              <div key={item.id}>
                <div>########</div>
                <p>Name: {item.name}</p>
                <p>Age: {item.age}</p>
                <p>Email: {item.email}</p>
                <img src={item.profilePictureUrl} alt="Profile picture" />
                <div>...............</div>
              </div>
            ))}
          </div>
          
          
        ) : (
          <p>Loading...</p>
        )}
      </div>

    </div>
  );
}

export default MyComponent;

 
 
