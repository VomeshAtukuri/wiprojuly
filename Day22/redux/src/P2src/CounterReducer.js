const initialState = {
    count : 0
}
const CouterReducer = (state = initialState, action) => {
    switch(action.type) {
        case 'INCREMENT' :
            return {...state,count:state.count+1}; 
        case 'DECREMENT' :
            return {...state,count:state.count-1}; 
        case 'CUBE' :
            return {...state,count:state.count*state.count*state.count}; 
        case 'POWER' :
            return {...state,count:state.count*state.count};
        default : 
            return state;
    }
}

export default CouterReducer;