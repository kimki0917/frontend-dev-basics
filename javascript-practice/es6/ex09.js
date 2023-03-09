/***
 * 
 *  Parenthesis-less function & Template Literal
 * 
 */

const div = function(s, ...v){
    //console.log(type(s), s instanceof Array, s.length);
    console.log(s, v);

    return function(props){
        return '<div></div>'
    }
}

const StyleDiv = div`
    color: ${(props)=>{props.color ? props.color : '#111'}};
    font-size: 20px;
    font-weight: bold;
`;