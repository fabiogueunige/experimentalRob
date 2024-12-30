(define (domain simple)
(:requirements :strips :typing :adl :fluents :durative-actions)

;; Types ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(:types
    robot
    box
    location - waypoint position
);; end Types ;;;;;;;;;;;;;;;;;;;;;;;;;

;; Predicates ;;;;;;;;;;;;;;;;;;;;;;;;;
(:predicates

(robot_at ?r - robot ?p - position) ; actual position of robot
(box_at ?b - box ?wp - waypoint) ; position of box
(visited ?r - robot ?b - box) ; box has been visited by robot


);; end Predicates ;;;;;;;;;;;;;;;;;;;;

;; Actions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Copiare quello del prof (fa tutto piano e manda)