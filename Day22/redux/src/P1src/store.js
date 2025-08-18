import { createStore } from "@reduxjs/toolkit";
import NameReducer  from "../P1src/nameReducer";
const Store = createStore(NameReducer);

export default Store;