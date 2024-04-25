import { useState } from "react";
import ReactDOM from "react-dom/client";

function FavoriteColor() {
  const [color, setColor] = useState("red");

  return (
    <>
      <h1>My favorite color is {color}!</h1>
      <button
        type="button"
        onClick={() => setColor("blue")}
      >Blue</button>
    </>
  )
}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<FavoriteColor />);

// Alternate

// import { useState } from "react";
// import ReactDOM from "react-dom/client";

// function FavoriteColor() {
//   const [color, setColor] = useState("red");

//   return (
//     <>
//       <h1>My favorite color is {color}!</h1>
//       <button
//         type="button"
//         onClick={() => {
//           ReactDOM.unstable_batchedUpdates(() => {
//             setColor((prevColor) => (prevColor === "red" ? "blue" : "red"));
//           });
//         }}
//       >
//         {color === "red" ? "Blue" : "Red"}
//       </button>
//     </>
//   );
// }

// const root = ReactDOM.createRoot(document.getElementById("root"));
// root.render(<FavoriteColor />);
