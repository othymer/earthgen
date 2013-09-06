#lang racket

(provide tile
         tile-id
         tile-tiles
         tile-corners
         tile-edges
         tile-tiles->vector
         tile-corners->vector
         tile-edges->vector
         tile-coordinates
         
         corner
         corner-id
         corner-tiles
         corner-corners
         corner-edges
         corner-tiles->vector
         corner-corners->vector
         corner-edges->vector
         corner-coordinates
         
         edge
         edge-id
         edge-tiles
         edge-corners
         edge-tiles->vector
         edge-corners->vector
         
         grid
         grid-subdivision-level
         grid-tiles
         grid-corners
         grid-edges
         grid-tiles->vector
         grid-corners->vector
         grid-edges->vector)

(struct tile
  (id
   coordinates
   tiles->vector
   corners->vector
   edges->vector)
  #:transparent)

(struct corner
  (id
   coordinates
   tiles->vector
   corners->vector
   edges->vector)
  #:transparent)

(struct edge
  (id
   tiles->vector
   corners->vector)
  #:transparent)

(struct grid
  (subdivision-level
   tiles->vector
   corners->vector
   edges->vector)
  #:transparent)

(define (tile-tiles a)
  (vector->list
   (tile-tiles->vector a)))

(define (tile-corners a)
  (vector->list
   (tile-corners->vector a)))

(define (tile-edges a)
  (vector->list
   (tile-edges->vector a)))

(define (corner-tiles a)
  (vector->list
   (corner-tiles->vector a)))

(define (corner-corners a)
  (vector->list
   (corner-corners->vector a)))

(define (corner-edges a)
  (vector->list
   (corner-edges->vector a)))

(define (edge-tiles a)
  (vector->list
   (edge-tiles->vector a)))

(define (edge-corners a)
  (vector->list
   (edge-corners->vector a)))

(define (grid-tiles a)
  (vector->list
   (grid-tiles->vector a)))

(define (grid-corners a)
  (vector->list
   (grid-corners->vector a)))

(define (grid-edges a)
  (vector->list
   (grid-edges->vector a)))