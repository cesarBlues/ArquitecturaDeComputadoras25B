
module compuertasLogicas(
    input entradaA,
    input entradaB,
    output and_en,    // Habilitar AND
    output nand_en,   // Habilitar NAND
    output or_en,     // Habilitar OR
    output nor_en,    // Habilitar NOR
    output not_en,    // Habilitar NOT
    output xor_en,    // Habilitar XOR
    output xnor_en,   // Habilitar XNOR
);

    // Compuerta AND
    assign and_en = entradaA & entradaB;
    
    // Compuerta NAND
    assign nand_en = ~(entradaA & entradaB);
    
    // Compuerta OR
    assign or_en = entradaA | entradaB;
    
    // Compuerta NOR
    assign nor_en = ~(entradaA | entradaB);
    
    // Compuerta NOT (solo de entradaA)
    assign not_en = ~entradaA;
    
    // Compuerta XOR
    assign xor_en = entradaA ^ entradaB;
    
    // Compuerta XNOR
    assign xnor_en = ~(entradaA ^ entradaB);

endmodule
