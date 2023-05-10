package egovframework.com.utilities;

import egovframework.com.request.MessageIds;
import egovframework.com.request.Message;
import egovframework.com.request.MessageList;
import egovframework.com.response.*;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.*;
import com.google.gson.JsonObject;

// 문서 : https://docs.solapi.com/rest-api-reference/message-api-v4
// 일부 API는 Query Parameter를 추가로 사용할 수 있습니다.
public interface SolapiMsgV4 {
    // 심플 메시지
    @POST("messages/v4/send")
    Call<MessageModel> sendMessage(@Header("Authorization") String auth,
                                   @Body Message message);
    // 여러건 발송
    @POST("messages/v4/send-many")
    Call<GroupModel> sendMessages(@Header("Authorization") String auth,
                                   @Body JsonObject messages);
    // 그룹 메시지 - 그룹 생성
    @POST("messages/v4/groups")
    Call<GroupModel> createGroup(@Header("Authorization") String auth);

    // 그룹 메시지 - 그룹 목록
    @GET("messages/v4/groups")
    Call<GroupListModel> getGroups(@Header("Authorization") String auth);

    // 그룹 메시지 - 그룹 정보
    @GET("messages/v4/groups/{groupId}")
    Call<GroupModel> getGroupInfo(@Header("Authorization") String auth,
                                  @Path("groupId") String groupId);

    // 그룹 메시지 - 그룹 삭제
    @DELETE("messages/v4/groups/{groupId}")
    Call<GroupModel> deleteGroupInfo(@Header("Authorization") String auth,
                                     @Path("groupId") String groupId);

    // 그룹 메시지 - 그룹 메시지 추가
    @PUT("messages/v4/groups/{groupId}/messages")
    Call<AddMessageListModel> addGroupMessage(@Header("Authorization") String auth,
                                              @Path("groupId") String groupId,
                                              @Body MessageList messages);

    // 그룹 메시지 - 그룹 메시지 발송
    @POST("messages/v4/groups/{groupId}/send")
    Call<ResponseBody> sendGroupMessage(@Header("Authorization") String auth,
                                        @Path("groupId") String groupId);

    // 그룹 메시지 - 그룹 메시지 삭제
    @HTTP(method = "DELETE", path = "messages/v4/groups/{groupId}/messages", hasBody = true)
    Call<DeleteGroupModel> deleteGroupMessages(@Header("Authorization") String auth,
                                               @Path("groupId") String groupId,
                                               @Body MessageIds messageIds);

    // 메시지 조회
    @GET("messages/v4/list")
    Call<GetMessageListModel> getMessageList(@Header("Authorization") String auth);

    @GET("messages/v4/list")
    Call<GetMessageListModel> getMessageList(@Header("Authorization") String auth,
                                             @Query("limit") int limit,
                                             @Query("startKey") String startKey);

    @GET("messages/v4/list")
    Call<GetMessageListModel> getMessageByMID(@Header("Authorization") String auth,
                                             @Query("messageId") String messageId);

    @GET("messages/v4/list")
    Call<GetMessageListModel> getMessageByGID(@Header("Authorization") String auth,
                                             @Query("groupId") String groupId);

    @GET("messages/v4/list")
    Call<GetMessageListModel> getMessageByGID(@Header("Authorization") String auth,
                                             @Query("groupId") String groupId,
                                             @Query("limit") int limit,
                                             @Query("startKey") String startKey);

    // 카카오톡채널 연동 정보 조회
    @GET("/kakao/v1/plus-friends/{pfId}")
    Call<KakaotalkChannel> getKakaotalkChannel(@Header("Authorization") String auth,
                                               @Path("pfId") String pfId);
    // 카카오톡 알림톡 템플릿 목록 조회
    @GET("/kakao/v1/templates")
    Call<KakaoTemplateList> getKakaoTemplateList(@Header("Authorization") String auth);

    @GET("/kakao/v1/templates")
    Call<KakaoTemplateList> getKakaoTemplateList(@Header("Authorization") String auth,
                                               @Query("pfId") String pfId);
    @GET("/kakao/v1/templates")
    Call<KakaoTemplateList> getKakaoTemplateList(@Header("Authorization") String auth,
                                               @Query("pfId") String pfId,
                                               @Query("status") String status);
    // 알림톡 템플릿 정보 조회
    @GET("/kakao/v1/templates/{templateId}")
    Call<KakaoTemplate> getKakaoTemplate(@Header("Authorization") String auth,
                                               @Path("templateId") String templateId);

    // 단가 조회
    @GET("/pricing/v1/messaging")
    Call<UnitPrice> getUnitPrice(@Header("Authorization") String auth);

    // 잔액 조회
    @GET("/cash/v1/balance")
    Call<Balance> getBalance(@Header("Authorization") String auth);

}
