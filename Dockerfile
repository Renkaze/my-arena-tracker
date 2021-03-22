FROM iprobedroid/swgoh-arena-tracker:beta-23 as builder
FROM mcr.microsoft.com/dotnet/runtime:5.0
WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "SimpleTracker.dll"]

ENV DISCORD_WEB_HOOK=https://discord.com/api/webhooks/823496636747612160/qets5r6MwOEQzRXbRjlHkODekkd3xXIdPFRUGFqdxKhOHC4szX65QUIlHniJ_IsiYi2T 
ENV ARENA_TYPE=SQUAD
ENV CUSTOM_MESSAGE_CLIMB="\<:b_up:806635468455149568\> %PLAYER_NAME% %USER_ICON% %PREVIOUS_RANK% \<:r_up:816363936902545438\> %CURRENT_RANK% \:clock3: %TIME_TO_PO%"
ENV CUSTOM_MESSAGE_DROP="\<:b_down:806635586513272842\> %PLAYER_NAME% %USER_ICON% %CURRENT_RANK% \<:l_down:816364052124139590\> %PREVIOUS_RANK%  \:clock3: %TIME_TO_PO% %NAME%"
