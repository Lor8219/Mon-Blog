import React from "react";
import { Helmet } from "react-helmet";
import ArticleCard from "@components/ArticleCard";
import articles from "@assets/data.json";

function Articles() {
  return (
    <section className="container">
      <Helmet>
        <title>Evadez-Vous - Travel Blog</title>
        <meta
          name="description"
          content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum."
        />
      </Helmet>
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
