-- More releases & versions:

-- My site: https://shhnotrightnow.xyz/magic8
-- GitHub: https://github.com/HaloCold/Magic-8-Ball

-- Version 1

local answers = {"My sources say so.", "Most likely.", "Please ask again later.", "Most answers disagree.", "Most likely not."}

function rollAnswers()
    wait(0.1) -- Stops script exhaustion
    local gen = math.random(1, 5)
    if not answers[gen] then
      repeat until answers[gen]
    end
    -- Loops until the generated number is an actual answer
  
    return answers[gen]
end

function countdown()
  local Introduction = [[
  Magic 8 Ball by HaloCold
  
  Think of your question and the Magic 8 Ball will answer.
  Counting down from 5..
  ]]
  
  print(Introduction) -- Print the introduction above
  wait(1)
  
  -- A countdown from 5 (at introduction print)
  
  print("4..")
  wait(1)
  print("3..")
  wait(1)
  print("2..")
  wait(1)
  print("1..")
  wait(1)
  
  -- Generates an answer and rolls it at the same time
  
  print(rollAnswers())
end
