function GroupAIStateBase:begin_gameover_fadeout()
    managers.hud:init_ending_screen()
    managers.wdu:wait(2, "zm_wait_init_score", function()
        managers.statistics:send_zm_stats()
    end)
    local element = managers.mission:get_mission_element(101184)
    element:on_executed()
end