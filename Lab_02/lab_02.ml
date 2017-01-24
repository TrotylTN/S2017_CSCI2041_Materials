let circle_area_v1 diameter =
    3.1415 *. (diameter /. 2.0) *. (diameter /. 2.0)

let circle_area_v2 diameter =
    let pi = 3.1415 in
        let radius = diameter /. 2.0 in
            pi *. radius *. radius

let rec product alist =
    match alist with
    | [] -> 1
    | hd::tl -> (hd * product tl)

let rec sum_diffs alist =
    match alist with
    | [] -> 0
    | hd1::[] -> 0
    | hd1::(hd2::tl) -> (hd1 - hd2 + sum_diffs (hd2::tl))

let distance (x1,y1) (x2,y2) =
    let x_dis = x2 -. x1 in
        let y_dis = y2 -. y1 in
            sqrt (x_dis *. x_dis +. y_dis *. y_dis)

let triangle_perimeter (x1,y1) (x2,y2) (x3,y3) =
    let edge12 = distance (x1,y1) (x2,y2) in
        let edge23 = distance (x2,y2) (x3,y3) in
            let edge13 = distance (x1,y1) (x3,y3) in
                edge12 +. edge23 +. edge13
