`timescale 1ns / 1ps



module home_automation(
    input wire time_of_day,
    input wire usage_profile,
    input wire computer_inactive,
    input wire presence_detected,
    output reg fridge_control,
    output reg computer_control
);

always @(*) begin
    fridge_control = 1;

    if (usage_profile == 1) begin
        if (computer_inactive && time_of_day == 0) begin
            computer_control = 0;
        end else begin
            computer_control = 1;
        end
    end else begin
        computer_control = 1;
    end
end

endmodule
