import React from "react";
import PropTypes from "prop-types";
import ArticleType from "../types/article";

function ArticleCard({ article }) {
  return <div>{article.title}</div>;
}

ArticleCard.propTypes = {
  article: PropTypes.instanceOf(ArticleType).isRequired,
};

export default ArticleCard;
