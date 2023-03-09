
// 1.
//unnamed export 모듈에서 대상을 하나 import 할 떄는 이동을 한다
export default function(a, b){
    return a + b;
}

//오류: 이름없이 export 하기 떄문에 하나만 export 할 수 있다
export default function(a, b){
    return a - b;
}