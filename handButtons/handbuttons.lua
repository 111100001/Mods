
function G.FUNCS.play_high_card()
    -- implement high card logic
end
function G.FUNCS.play_pair()
    -- implement pair logic
end
function G.FUNCS.play_two_pair()
    -- implement two pair logic
end
function G.FUNCS.play_three_of_a_kind()
    -- implement three of a kind logic
end
function G.FUNCS.play_straight()
    -- implement straight logic
end
function G.FUNCS.play_flush()
    -- implement flush logic
end
function G.FUNCS.play_full_house()
    -- implement full house logic
end
function G.FUNCS.play_four_of_a_kind()
    -- implement four of a kind logic
end
function G.FUNCS.play_straight_flush()
    -- implement straight flush logic
end
function G.FUNCS.play_royal_flush()
    -- implement royal flush logic
end



local create_UIBox_buttonsRef = create_UIBox_buttons
function create_UIBox_buttons()
    local content = create_UIBox_buttonsRef()

    local function create_button(name, label, colour)
        return UIBox_button({
            minh = 0.5,
            maxh = 0.5,
            minw = 1,
            button = name,
            label = {label},
            colour = colour
        })
    end

    local hand_buttons_grid = {
        n = G.UIT.C,
        config = {align = "tm", padding = 0.05},
        nodes = {
            {
                n = G.UIT.C,
                config = {align = "tm", padding = 0.05},
                nodes = {
                    create_button("play_pair", "Pair", G.C.BLUE),
                    create_button("play_two_pair", "Two Pair", G.C.BLUE),
                    create_button("play_three_of_a_kind", "Three of a Kind", G.C.BLUE),
                    
                }
            },
            {
                n = G.UIT.C,
                config = {align = "tm", padding = 0.05},
                nodes = {
                    create_button("play_flush", "Flush", G.C.BLUE),
                    create_button("play_full_house", "Full House",G.C.BLUE),
                    create_button("play_four_of_a_kind", "Four of a Kind",G.C.BLUE),
                    
                    
                }
            },
            {
                n = G.UIT.C,
                config = {align = "tm", padding = 0.05},
                nodes = {
                    create_button("play_straight", "Straight", G.C.BLUE),
                    create_button("play_straight_flush", "Straight Flush", G.C.BLUE),
                    create_button("play_royal_flush", "Royal Flush", G.C.BLUE)
                }
            }
        }
    }
    table.insert(content.nodes, hand_buttons_grid)
    return content
end

