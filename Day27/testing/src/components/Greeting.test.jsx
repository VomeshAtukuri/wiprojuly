import React from "react";
import '@testing-library/jest-dom'; 
import { render, screen } from "@testing-library/react";

import Greeting from "./Greeting";

describe("Greeting Component Testing", () => {
  test("renders Good Morning message", () => {
    render(<Greeting />);
    expect(screen.getByText("Good Morning to All...")).toBeInTheDocument();
  });
  test("does not render Good Afternoon by default", () => {
    render(<Greeting />);
    expect(screen.queryByText("Good Afternoon to All...")).toBeNull();
  });
  test("does not render Good Evening by default", () => {
    render(<Greeting />);
    expect(screen.queryByText("Good Evening to All...")).toBeNull();
  });
});
