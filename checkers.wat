(module
  (memory $mem 1)

  (func $indexForPosition (param $x i32) (param $y i32) (result i32)
    (i32.add
      (i32.mul
        (i32.const 8)
        (local.get $y)
      )
      (local.get $x)
    )
  )

  ;; Offset = ( x + y * 8 ) * 4 --- because WebAssembly index by bytes
  (func $offsetForPosition (param $x i32) (param $y i32) (result i32)
    (i32.mul
      (call $indexForPosition (local.get $x) (local.get $y))
      (i32.const 4)
    )
  )

  ;; Determine if a piece has been crowned

  ;; Determine if a piece is white

  ;; Determine if a piece is black

  ;; Adds a crown to a given piece (no mutation)

  ;; Removes a crown from a given piece (no mutation)
)
