import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import "@testing-library/jest-dom";
import NameForm from "./NameForm";

describe("NameForm Component Testing", () => {
  test("user can type name and click button", async () => {
    render(<NameForm />);

    // find input and type
    const input = screen.getByPlaceholderText(/Please Enter Your Name/i);
    await userEvent.type(input, "Rajesh");

    // find button and click
    const button = screen.getByRole("button", { name: /Show/i });
    await userEvent.click(button);

    // verify results
    expect(screen.getByText(/Rajesh/)).toBeInTheDocument();
    expect(
      screen.getByText(/Entered Value is Rajesh/i)
    ).toBeInTheDocument();
  });

  test("does not show name before clicking Show button", () => {
    render(<NameForm />);

    // make sure nothing is shown initially
    expect(screen.queryByText(/Rajesh/)).toBeNull();
    expect(screen.queryByText(/Entered Value is Rajesh/i)).toBeNull();
  });
});
