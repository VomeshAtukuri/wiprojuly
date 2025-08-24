import { render, screen, fireEvent } from "@testing-library/react";
import "@testing-library/jest-dom";
import ButtonExample from "./Button";

describe("Button Click Event to be Captured", () => {
  test("Default Message to be Tested", () => {
    render(<ButtonExample />);
    expect(screen.getByText(/Clicked 0 times/i)).toBeInTheDocument();
  });

  test("Button Click to be Activated", () => {
    render(<ButtonExample />);
    fireEvent.click(screen.getByRole("button"));
    expect(screen.getByText(/Clicked 1 times/i)).toBeInTheDocument();
  });
});
