const initialState = {
    sname : ''
}

const NameReducer = (state = initialState, action) => {
    switch(action.type) {
        case 'VOMESH' :
            return {...state,sname:'Hi I am VOMESH'};
        case 'NARAYANA' : 
            return {...state,sname:'Hi I am Narayana'};
        case 'MAHI' : 
            return {...state,sname:'HI I am Mahi'}
        default : 
            return state;
    }
}

export default NameReducer;