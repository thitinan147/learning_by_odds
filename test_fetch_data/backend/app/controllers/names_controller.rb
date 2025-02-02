class NamesController < ApplicationController
    def index
      render json: [
        {
          id: 1,
          name: "John Doe",
          age: 30,
          email: "john.doe@example.com",
          profilePictureUrl: "https://example.com/profiles/john.jpg"
        },
        {
          id: 2,
          name: "Jane Smith",
          age: 25,
          email: "jane.smith@example.com",
          profilePictureUrl: "https://example.com/profiles/jane.jpg"
        },
        {
          id: 3,
          name: "Michael Brown",
          age: 35,
          email: "michael.brown@example.com",
          profilePictureUrl: "https://example.com/profiles/michael.jpg"
        }
      ];
      
    end
  end
  