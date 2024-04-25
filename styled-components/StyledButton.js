// Place it inside src/components

// Import React and styled-components
import React from 'react';
import styled from 'styled-components';

// Create a styled button component
const StyledButton = styled.button`
    padding: 10px 20px;
    font-size: 16px;
    background-color: #007bff;
    color: #ffffff;
    border: none;
    border-radius: 5px;
    cursor: pointer;

    &:hover {
        background-color: #0056b3;
    }
`;

// Define a functional component using the styled button
const App = () => {
    return (
        <div>
            <StyledButton>Click Me!</StyledButton>
        </div>
    );
};

export default App;