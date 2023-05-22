import { BrowserRouter, Routes, Route } from "react-router-dom";
import Articles from "@pages/Articles";
import OneArticle from "@pages/OneArticle";
import "./App.css";

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <h1 className="text-center text-secondary">My Travel Blog </h1>
        <Routes>
          <Route path="/" element={<Articles />} />
          <Route path="/articles/:id" element={<OneArticle />} />
        </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
