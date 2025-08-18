import { useDispatch, useSelector } from "react-redux";
import { mahi,vomesh,narayana } from "./actions";

const Names = () => {
    const sname = useSelector( (state) => state.sname)
    const dispatch = useDispatch();
    return (
        <div>
            <h1>Student Name is : {sname}</h1>
            <input type="button" value="Mahi" onClick={() => dispatch(mahi())} />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="Vomesh" onClick={() => dispatch(vomesh())} /> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="Narayana" onClick={() => dispatch(narayana())} />
        </div>
    )
}

export default Names;