import { createStore } from "@reduxjs/toolkit";
import CouterReducer from "../P2src/CounterReducer";
const store2 = createStore(CouterReducer);
export default store2;