import { useSelector, useDispatch } from "react-redux";
import { increment, decrement } from "../P2src/actions";
export default function CounterComponent() {
    const count = useSelector((state) => state.count);
    const dispatch = useDispatch();
    return (
        <div style={{ textAlign: "center" , display:"flex", flexDirection:"column", gap:"10px"}}>
            <h1>Counter Component</h1>
            <h2>{count}</h2>
            <button onClick={() => dispatch({ type: "INCREMENT"})}>Increment</button>
            <button onClick={() => dispatch(decrement())}>Decrement</button>
            <button onClick={() => dispatch({ type: "CUBE"})}>Cube</button>
            <button onClick={() => dispatch({ type: "POWER"})}>Power</button>
        </div>
    );
}