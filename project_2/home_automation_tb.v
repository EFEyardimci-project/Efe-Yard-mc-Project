`timescale 1ns / 1ps



module home_automation_tb;
    reg usage_profile;
    reg time_of_day;
    reg computer_inactive;
    reg presence_detected;

    wire fridge_control;
    wire computer_control;

    home_automation uut (
        .usage_profile(usage_profile),
        .time_of_day(time_of_day),
        .computer_inactive(computer_inactive),
        .presence_detected(presence_detected),
        .fridge_control(fridge_control),
        .computer_control(computer_control)
    );

    initial begin
        $display("usage_profile time_of_day computer_inactive presence_detected | fridge_control computer_control");
        $display("-----------------------------------------------------------------------------------");

        for (integer i = 0; i < 16; i = i + 1) begin
            {usage_profile, time_of_day, computer_inactive, presence_detected} = i;
            #10;
            $display("%b %b %b %b | %b %b", usage_profile, time_of_day, computer_inactive, presence_detected, fridge_control, computer_control);
        end
    end
endmodule
