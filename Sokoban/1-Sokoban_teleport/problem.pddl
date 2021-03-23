(define (problem simple)
  (:domain sokoban-domain)
  (:objects p11 p12 p13 p14
            p21 p22 p23 p24 
            p31 p32 p33 p34 
            p41 p42 p43 p44 
            p51 p52 p53 p54 
            teleport1 teleport2)
            
  (:init
     
     (neighbor p11 p12) (neighbor p12 p13) (neighbor p13 p14)
     (neighbor p21 p22) (neighbor p22 p23) (neighbor p23 p24)
     (neighbor p31 p32) (neighbor p32 p33) (neighbor p33 p34)
     (neighbor p41 p42) (neighbor p42 p43) (neighbor p43 p44)
     (neighbor p51 p52) (neighbor p52 p53) (neighbor p53 p54)
     
     (neighbor p11 p21) (neighbor p12 p22) (neighbor p13 p23) (neighbor p14 p24)
     (neighbor p21 p31) (neighbor p22 p32) (neighbor p23 p33) (neighbor p24 p34)
     (neighbor p31 p41) (neighbor p32 p42) (neighbor p33 p43) (neighbor p34 p44)
     (neighbor p41 p51) (neighbor p42 p52) (neighbor p43 p53) (neighbor p44 p54)

    
    (neighbor_space p11 p13) (neighbor_space p12 p14)
    (neighbor_space p21 p23) (neighbor_space p22 p24)
    (neighbor_space p31 p33) (neighbor_space p32 p34)
    (neighbor_space p41 p43) (neighbor_space p42 p44)
    (neighbor_space p51 p53) (neighbor_space p52 p54)
    
    (neighbor_space p11 p31) (neighbor_space p12 p32) (neighbor_space p13 p33) (neighbor_space p14 p34)
    (neighbor_space p21 p41) (neighbor_space p22 p42) (neighbor_space p23 p43) (neighbor_space p24 p44)
    (neighbor_space p31 p51) (neighbor_space p32 p52) (neighbor_space p33 p53) (neighbor_space p34 p54)
    
     
     (has_player p42)
     (has_box p24) (has_box p31) (has_box p43)
     (has_wall p13)
     (teleport teleport1) (teleport teleport2))
     
  (:goal (and (has_box p41) (has_box p44) (has_box p53)))
)