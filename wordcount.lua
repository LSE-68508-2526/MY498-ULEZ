local words = 0 

function Str(el)
    if el.text:match("%P") then
        words = words + 1
    end
end

function Pandoc(el)
    io.stderr:write("\n===== BODY WORD COUNT: " .. words .. "=====\n\n")
end