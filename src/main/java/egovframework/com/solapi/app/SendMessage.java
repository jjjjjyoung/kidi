package egovframework.com.solapi.app;

import java.io.IOException;

import egovframework.com.request.Message;
import egovframework.com.response.MessageModel;
import egovframework.com.utilities.APIInit;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class SendMessage {
	public void sendLms(String from, String to, String content, String subject) {
        Message message = new Message(from, to, content, subject);
        Call<MessageModel> api = APIInit.getAPI().sendMessage(APIInit.getHeaders(), message);
        api.enqueue(new Callback<MessageModel>() {
            @Override
            public void onResponse(Call<MessageModel> call, Response<MessageModel> response) {
                // 성공 시 200이 출력됩니다.
                if (response.isSuccessful()) {
                    System.out.println("statusCode : " + response.code());
                    MessageModel body = response.body();
                    System.out.println("groupId : " + body.getGroupId());
                    System.out.println("messageId : " + body.getMessageId());
                    System.out.println("to : " + body.getTo());
                    System.out.println("from : " + body.getFrom());
                    System.out.println("type : " + body.getType());
                    System.out.println("statusCode : " + body.getStatusCode());
                    System.out.println("statusMessage : " + body.getStatusMessage());
                    System.out.println("customFields : " + body.getCustomFields());
                } else {
                    try {
                        System.out.println(response.errorBody().string());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }

            @Override
            public void onFailure(Call<MessageModel> call, Throwable throwable) {
                throwable.printStackTrace();
            }
        });
    }
}
