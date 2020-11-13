import React, { useState, useEffect, useContext } from 'react';
import GamewideInfo from "../../Utils/GamewideInfo";


function ChatPanel(props) {
   
    const gamewideInfo = useContext(GamewideInfo);
    console.log("ChatPanel:", gamewideInfo);

    return (
        <div className="message-output-box">
            <ul className="list-group chat-output"></ul>
            {
                gamewideInfo.map(action => {
                    return <li key={action.actionName}>{action.actionName}</li>
                })

            }   
            
            <div id="anchor"></div>
        </div>
    );

}


export default ChatPanel;