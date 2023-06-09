import React from "react";
import { Outlet } from "react-router-dom";

function UserLayout() {
  return (
    <div>
      <h1 className="text-center text-secondary">My Travel Blog </h1>
      <Outlet />
    </div>
  );
}

export default UserLayout;
