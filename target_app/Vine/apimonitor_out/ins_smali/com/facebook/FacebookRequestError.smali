.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"
.field private static final BODY_KEY:Ljava/lang/String; = "body"
.field private static final CODE_KEY:Ljava/lang/String; = "code"
.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca
.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4
.field private static final EC_EXPIRED:I = 0x1cf
.field private static final EC_INVALID_SESSION:I = 0x66
.field private static final EC_INVALID_TOKEN:I = 0xbe
.field private static final EC_PASSWORD_CHANGED:I = 0x1cc
.field private static final EC_PERMISSION_DENIED:I = 0xa
.field private static final EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range; = null
.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2
.field private static final EC_UNCONFIRMED_USER:I = 0x1d0
.field private static final EC_UNKNOWN_ERROR:I = 0x1
.field private static final EC_USER_CHECKPOINTED:I = 0x1cb
.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11
.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"
.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"
.field private static final ERROR_KEY:Ljava/lang/String; = "error"
.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"
.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"
.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"
.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"
.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"
.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range; = null
.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range; = null
.field private static final HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range; = null
.field public static final INVALID_ERROR_CODE:I = -0x1
.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1
.field private static final INVALID_MESSAGE_ID:I
.field private final batchRequestResult:Ljava/lang/Object;
.field private final category:Lcom/facebook/FacebookRequestError$Category;
.field private final connection:Ljava/net/HttpURLConnection;
.field private final errorCode:I
.field private final errorMessage:Ljava/lang/String;
.field private final errorType:Ljava/lang/String;
.field private final exception:Lcom/facebook/FacebookException;
.field private final requestResult:Lorg/json/JSONObject;
.field private final requestResultBody:Lorg/json/JSONObject;
.field private final requestStatusCode:I
.field private final shouldNotifyUser:Z
.field private final subErrorCode:I
.field private final userActionMessageId:I
.method static constructor <clinit>()V
.registers 4
const/16 v2, 0x12b
const/16 v1, 0xc8
const/4 v3, 0x0
new-instance v0, Lcom/facebook/FacebookRequestError$Range;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V
sput-object v0, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;
new-instance v0, Lcom/facebook/FacebookRequestError$Range;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V
sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;
new-instance v0, Lcom/facebook/FacebookRequestError$Range;
const/16 v1, 0x190
const/16 v2, 0x1f3
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V
sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;
new-instance v0, Lcom/facebook/FacebookRequestError$Range;
const/16 v1, 0x1f4
const/16 v2, 0x257
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V
sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;
return-void
.end method
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
.registers 21
const/4 v10, 0x0
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move-object v4, p4
move-object/from16 v5, p5
move-object/from16 v6, p6
move-object/from16 v7, p7
move-object/from16 v8, p8
move-object/from16 v9, p9
invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
return-void
.end method
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I
iput p2, p0, Lcom/facebook/FacebookRequestError;->errorCode:I
iput p3, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I
iput-object p4, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;
iput-object p6, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;
iput-object p7, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;
iput-object p8, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;
iput-object p9, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;
const/4 v1, 0x0
if-eqz p10, :cond_2a
iput-object p10, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;
const/4 v1, 0x1
:goto_1b
const/4 v0, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
if-eqz v1, :cond_32
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;
const/4 v2, 0x0
:goto_23
:cond_23
iput-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;
iput v2, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I
iput-boolean v3, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z
return-void
:cond_2a
new-instance v4, Lcom/facebook/FacebookServiceException;
invoke-direct {v4, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V
iput-object v4, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;
goto :goto_1b
:cond_32
const/4 v4, 0x1
if-eq p2, v4, :cond_38
const/4 v4, 0x2
if-ne p2, v4, :cond_47
:cond_38
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;
:goto_3a
:cond_3a
if-nez v0, :cond_23
sget-object v4, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;
invoke-virtual {v4, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z
move-result v4
if-eqz v4, :cond_90
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;
goto :goto_23
:cond_47
const/4 v4, 0x4
if-eq p2, v4, :cond_4e
const/16 v4, 0x11
if-ne p2, v4, :cond_51
:cond_4e
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;
goto :goto_3a
:cond_51
const/16 v4, 0xa
if-eq p2, v4, :cond_5d
sget-object v4, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;
invoke-virtual {v4, p2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z
move-result v4
if-eqz v4, :cond_62
:cond_5d
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;
sget v2, Lcom/facebook/android/R$string;->com_facebook_requesterror_permissions:I
goto :goto_3a
:cond_62
const/16 v4, 0x66
if-eq p2, v4, :cond_6a
const/16 v4, 0xbe
if-ne p2, v4, :cond_3a
:cond_6a
const/16 v4, 0x1cb
if-eq p3, v4, :cond_72
const/16 v4, 0x1d0
if-ne p3, v4, :cond_78
:cond_72
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;
sget v2, Lcom/facebook/android/R$string;->com_facebook_requesterror_web_login:I
const/4 v3, 0x1
goto :goto_3a
:cond_78
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;
const/16 v4, 0x1ca
if-eq p3, v4, :cond_82
const/16 v4, 0x1cf
if-ne p3, v4, :cond_85
:cond_82
sget v2, Lcom/facebook/android/R$string;->com_facebook_requesterror_relogin:I
goto :goto_3a
:cond_85
const/16 v4, 0x1cc
if-ne p3, v4, :cond_8c
sget v2, Lcom/facebook/android/R$string;->com_facebook_requesterror_password_changed:I
goto :goto_3a
:cond_8c
sget v2, Lcom/facebook/android/R$string;->com_facebook_requesterror_reconnect:I
const/4 v3, 0x1
goto :goto_3a
:cond_90
sget-object v4, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;
invoke-virtual {v4, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z
move-result v4
if-eqz v4, :cond_9b
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;
goto :goto_23
:cond_9b
sget-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;
goto :goto_23
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 15
const/4 v1, -0x1
const/4 v6, 0x0
move-object v0, p0
move v2, p1
move v3, v1
move-object v4, p2
move-object v5, p3
move-object v7, v6
move-object v8, v6
move-object v9, v6
move-object v10, v6
invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
return-void
.end method
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
.registers 14
const/4 v1, -0x1
const/4 v4, 0x0
instance-of v0, p2, Lcom/facebook/FacebookException;
if-eqz v0, :cond_15
check-cast p2, Lcom/facebook/FacebookException;
move-object v10, p2
:goto_9
move-object v0, p0
move v2, v1
move v3, v1
move-object v5, v4
move-object v6, v4
move-object v7, v4
move-object v8, v4
move-object v9, p1
invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
return-void
:cond_15
new-instance v10, Lcom/facebook/FacebookException;
invoke-direct {v10, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
.registers 24
:try_start_0
const-string v1, "code"
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_df
const-string v1, "code"
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
const-string v1, "body"
const-string v8, "FACEBOOK_NON_JSON_RESULT"
move-object/from16 v0, p0
invoke-static {v0, v1, v8}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v18
if-eqz v18, :cond_ab
move-object/from16 v0, v18
instance-of v1, v0, Lorg/json/JSONObject;
if-eqz v1, :cond_ab
move-object/from16 v0, v18
check-cast v0, Lorg/json/JSONObject;
move-object v7, v0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v3, -0x1
const/4 v4, -0x1
const/16 v20, 0x0
const-string v1, "error"
invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_74
const-string v1, "error"
const/4 v8, 0x0
invoke-static {v7, v1, v8}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v19
check-cast v19, Lorg/json/JSONObject;
const-string v1, "type"
const/4 v8, 0x0
move-object/from16 v0, v19
invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v1, "message"
const/4 v8, 0x0
move-object/from16 v0, v19
invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v1, "code"
const/4 v8, -0x1
move-object/from16 v0, v19
invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v3
const-string v1, "error_subcode"
const/4 v8, -0x1
move-object/from16 v0, v19
invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v4
const/16 v20, 0x1
:cond_66
:goto_66
if-eqz v20, :cond_ab
new-instance v1, Lcom/facebook/FacebookRequestError;
move-object/from16 v8, p0
move-object/from16 v9, p1
move-object/from16 v10, p2
invoke-direct/range {v1 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
:goto_73
return-object v1
:cond_74
const-string v1, "error_code"
invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_8c
const-string v1, "error_msg"
invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_8c
const-string v1, "error_reason"
invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_66
:cond_8c
const-string v1, "error_reason"
const/4 v8, 0x0
invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v1, "error_msg"
const/4 v8, 0x0
invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v1, "error_code"
const/4 v8, -0x1
invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v3
const-string v1, "error_subcode"
const/4 v8, -0x1
invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v4
const/16 v20, 0x1
goto :goto_66
:cond_ab
sget-object v1, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;
invoke-virtual {v1, v2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z
move-result v1
if-nez v1, :cond_df
new-instance v8, Lcom/facebook/FacebookRequestError;
const/4 v10, -0x1
const/4 v11, -0x1
const/4 v12, 0x0
const/4 v13, 0x0
const-string v1, "body"
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_dc
const-string v1, "body"
const-string v9, "FACEBOOK_NON_JSON_RESULT"
move-object/from16 v0, p0
invoke-static {v0, v1, v9}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lorg/json/JSONObject;
move-object v14, v1
:goto_d0
move v9, v2
move-object/from16 v15, p0
move-object/from16 v16, p1
move-object/from16 v17, p2
invoke-direct/range {v8 .. v17}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
:try_end_da
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_da} :catch_de
move-object v1, v8
goto :goto_73
:cond_dc
const/4 v14, 0x0
goto :goto_d0
:catch_de
move-exception v1
:cond_df
const/4 v1, 0x0
goto :goto_73
.end method
.method public getBatchRequestResult()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;
return-object v0
.end method
.method public getCategory()Lcom/facebook/FacebookRequestError$Category;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;
return-object v0
.end method
.method public getConnection()Ljava/net/HttpURLConnection;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;
return-object v0
.end method
.method public getErrorCode()I
.registers 2
iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I
return v0
.end method
.method public getErrorMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;
invoke-virtual {v0}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public getErrorType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;
return-object v0
.end method
.method public getException()Lcom/facebook/FacebookException;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;
return-object v0
.end method
.method public getRequestResult()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;
return-object v0
.end method
.method public getRequestResultBody()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;
return-object v0
.end method
.method public getRequestStatusCode()I
.registers 2
iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I
return v0
.end method
.method public getSubErrorCode()I
.registers 2
iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I
return v0
.end method
.method public getUserActionMessageId()I
.registers 2
iget v0, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I
return v0
.end method
.method public shouldNotifyUser()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{HttpStatus: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", errorCode: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", errorType: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", errorMessage: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method