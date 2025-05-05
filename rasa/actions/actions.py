# This files contains your custom actions which can be used to run
# custom Python code.
#
# See this guide on how to implement these action:
# https://rasa.com/docs/rasa/custom-actions
# This is a simple example for a custom action which utters "Hello World!"
from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.events import UserUtteranceReverted
from rasa_sdk.executor import CollectingDispatcher

class ActionDefaultFallback(Action):
    def name(self) -> Text:
        return "action_default_fallback"

    async def run(
        self,
        tracker: Tracker,
        domain: Dict[Text, Any],
        dispatcher: CollectingDispatcher,
    ) -> List[Dict[Text, Any]]:
        dispatcher.utter_message(
            template="Xin lỗi, hiện tại tôi chưa hiểu ý bạn. Bạn có thể hỏi lại được không?"
        )

        # Revert user message which led to fallback.
        return [UserUtteranceReverted()]

