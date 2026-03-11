
function G.FUNCS.play_flush()
    -- implement flush logic
end



local create_UIBox_buttonsRef = create_UIBox_buttons
function create_UIBox_buttons()
    content = create_UIBox_buttonsRef()
    local hand_button = UIBox_button({
        minh = 0.5,
        minw = 1,
        button = "play_flush",
        label = {
            "Flush"
        }
    })
    table.insert(content.nodes, hand_button)
    return content
end

