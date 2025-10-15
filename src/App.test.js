import { render, screen } from '@testing-library/react';
import App from './App';

test('renders Docker message', () => {
  const { getByText } = render(<App />);
  const element = getByText(/docker/i);
  expect(element).toBeInTheDocument();
});
