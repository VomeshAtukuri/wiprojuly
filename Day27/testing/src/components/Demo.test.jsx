import { render, screen } from '@testing-library/react';
import '@testing-library/jest-dom';
import Demo from './Demo';

describe('Demo Component', () => {
  test('renders welcome message', () => {
    render(<Demo />);
    expect(screen.getByText(/Welcome to React Testing/i)).toBeInTheDocument();
  });
});
