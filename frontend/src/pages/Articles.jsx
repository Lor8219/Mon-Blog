import React from "react";
import ArticleCard from "@components/ArticleCard";
import articles from "@assets/data.json";

function Articles() {
  return (
    <section className="container">
      <div className="row">
        {articles.map((article) => (
          <ArticleCard article={article} />
        ))}
        <ArticleCard article={articles[0]} />
      </div>
    </section>
  );
}

export default Articles;
