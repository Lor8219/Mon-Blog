import { BrowserRouter, Routes, Route } from "react-router-dom";
import UserLayout from "@pages/layout/UserLayout";
import AdminLayout from "@pages/admin/AdminLayout";
import Articles from "@pages/Articles";
import OneArticle from "@pages/OneArticle";
import ArticleAdmin from "@pages/admin/ArticleAdmin";
import "./App.css";

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Routes>
          <Route path="/" element={<UserLayout />}>
            <Route path="" element={<Articles />} />
            <Route path="articles/:id" element={<OneArticle />} />
          </Route>
          <Route path="/administration" element={<AdminLayout />}>
            <Route path="articles" element={<ArticleAdmin />} />
          </Route>
        </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
