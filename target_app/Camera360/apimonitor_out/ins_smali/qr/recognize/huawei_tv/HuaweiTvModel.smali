.class public Lqr/recognize/huawei_tv/HuaweiTvModel;
.super Ljava/lang/Object;
.source "HuaweiTvModel.java"
.field public static final AUTH_CANCEL:I = 0x3
.field public static final AUTH_FAILED:I = 0x0
.field public static final AUTH_START:I = 0x1
.field public static final AUTH_SUCCESS:I = 0x2
.field private static final TAG:Ljava/lang/String;
.field private mAddress:Ljava/lang/String;
.field private mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field private mIAuthorizeResult:Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
.field private mIsDone:Z
.field private mPort:I
.field private mSocket:Ljava/net/Socket;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lqr/recognize/huawei_tv/HuaweiTvModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAddress:Ljava/lang/String;
iput p2, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mPort:I
return-void
.end method
.method public closeSocket()V
.registers 4
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "closeSocket"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x1
iput-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-eqz v1, :cond_17
:try_start_f
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-static {v1}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
const/4 v1, 0x0
iput-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
:cond_17
:try_end_17
.catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_17
.end method
.method public getAuthState()Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.registers 2
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
return-object v0
.end method
.method public declared-synchronized openSocket(Ljava/lang/String;)V
.registers 6
monitor-enter p0
:try_start_1
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "scanResult = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_75
if-eqz v1, :cond_1f
:goto_1d
:cond_1d
monitor-exit p0
return-void
:try_start_1f
:cond_1f
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "address = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAddress:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " port = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mPort:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_43
:try_end_43
.catchall {:try_start_1f .. :try_end_43} :catchall_75
new-instance v1, Ljava/net/Socket;
iget-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAddress:Ljava/lang/String;
iget v3, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mPort:I
invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
iput-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "openSocket mSocket="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_65
:try_end_65
.catchall {:try_start_43 .. :try_end_65} :catchall_75
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_65} :catch_78
:goto_65
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
sget-object v2, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_CANCEL:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
if-eq v1, v2, :cond_71
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
sget-object v2, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->NETWORK_EXCEPTION:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
if-ne v1, v2, :cond_1d
:cond_71
invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->closeSocket()V
:try_end_74
.catchall {:try_start_65 .. :try_end_74} :catchall_75
goto :goto_1d
:catchall_75
move-exception v1
monitor-exit p0
throw v1
:catch_78
move-exception v0
:try_start_79
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "open mSocket exception = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->NETWORK_EXCEPTION:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIAuthorizeResult:Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
invoke-interface {v1}, Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;->authorNetworkException()V
:try_end_9b
.catchall {:try_start_79 .. :try_end_9b} :catchall_75
goto :goto_65
.end method
.method public sendToken(Ljava/lang/String;)V
.registers 16
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "sendToken  mSocket"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v13, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, " token = "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-nez v11, :cond_27
:goto_26
:cond_26
return-void
:cond_27
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const/16 v0, 0x44c
:try_start_2d
new-instance v7, Lorg/json/JSONObject;
invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
:try_start_32
:try_end_32
.catchall {:try_start_2d .. :try_end_32} :catchall_183
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_cd
const-string/jumbo v11, "token"
invoke-virtual {v7, v11, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v11, "authorize"
const/4 v12, 0x2
invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:try_end_3f
.catchall {:try_start_32 .. :try_end_3f} :catchall_183
.catch Lorg/json/JSONException; {:try_start_32 .. :try_end_3f} :catch_c7
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_cd
:try_start_3f
:goto_3f
invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B
move-result-object v11
array-length v11, v11
add-int/lit8 v9, v11, 0x8
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "mSocket "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v13, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v13}, Ljava/net/Socket;->isConnected()Z
move-result v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-eqz v11, :cond_aa
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v11}, Ljava/net/Socket;->isConnected()Z
move-result v11
if-eqz v11, :cond_aa
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v11}, Ljava/net/Socket;->isOutputShutdown()Z
move-result v11
if-nez v11, :cond_aa
new-instance v5, Ljava/io/DataOutputStream;
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v11
invoke-direct {v5, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B
move-result-object v11
invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V
invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
new-instance v4, Ljava/io/DataInputStream;
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v11
invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
const/4 v11, 0x0
iput-boolean v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
:cond_a6
iget-boolean v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
:try_end_a8
.catchall {:try_start_3f .. :try_end_a8} :catchall_183
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_a8} :catch_cd
if-eqz v11, :cond_f7
:cond_aa
:goto_aa
const/4 v11, 0x1
:try_start_ab
iput-boolean v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-eqz v11, :cond_26
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
sget-object v12, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
if-ne v11, v12, :cond_26
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-static {v11}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
const/4 v11, 0x0
iput-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
:try_end_bf
.catch Ljava/io/IOException; {:try_start_ab .. :try_end_bf} :catch_c1
goto/16 :goto_26
:catch_c1
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_26
:catch_c7
move-exception v6
:try_start_c8
invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
:try_end_cb
.catchall {:try_start_c8 .. :try_end_cb} :catchall_183
.catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cd
goto/16 :goto_3f
:catch_cd
move-exception v6
:try_start_ce
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_FAILED:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIAuthorizeResult:Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
invoke-interface {v11}, Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;->authorizeFailed()V
:try_end_da
.catchall {:try_start_ce .. :try_end_da} :catchall_183
const/4 v11, 0x1
:try_start_db
iput-boolean v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-eqz v11, :cond_26
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
sget-object v12, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
if-ne v11, v12, :cond_26
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-static {v11}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
const/4 v11, 0x0
iput-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
:try_end_ef
.catch Ljava/io/IOException; {:try_start_db .. :try_end_ef} :catch_f1
goto/16 :goto_26
:catch_f1
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_26
:cond_f7
:try_start_f7
invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
move-result v10
invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
move-result v1
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "result = "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, " action2  ="
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v11, 0x4b0
if-ne v1, v11, :cond_a6
add-int/lit8 v11, v10, -0x8
new-array v3, v11, [B
const/4 v11, 0x0
array-length v12, v3
invoke-virtual {v4, v3, v11, v12}, Ljava/io/DataInputStream;->read([BII)I
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "buffer.toString() = "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, " action2  ="
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Lorg/json/JSONObject;
new-instance v11, Ljava/lang/String;
invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V
invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "authorize"
invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "authorResult ="
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez v2, :cond_19a
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_FAILED:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIAuthorizeResult:Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
invoke-interface {v11}, Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;->authorizeFailed()V
:try_end_181
.catchall {:try_start_f7 .. :try_end_181} :catchall_183
.catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_181} :catch_cd
goto/16 :goto_aa
:catchall_183
move-exception v11
const/4 v12, 0x1
:try_start_185
iput-boolean v12, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
iget-object v12, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-eqz v12, :cond_199
iget-object v12, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
sget-object v13, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
if-ne v12, v13, :cond_199
iget-object v12, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-static {v12}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
const/4 v12, 0x0
iput-object v12, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
:cond_199
:try_end_199
.catch Ljava/io/IOException; {:try_start_185 .. :try_end_199} :catch_1a8
:goto_199
throw v11
:cond_19a
const/4 v11, 0x2
if-ne v2, v11, :cond_aa
:try_start_19d
sget-object v11, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iget-object v11, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIAuthorizeResult:Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
invoke-interface {v11}, Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;->authorizeSuccess()V
:try_end_1a6
.catchall {:try_start_19d .. :try_end_1a6} :catchall_183
.catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a6} :catch_cd
goto/16 :goto_aa
:catch_1a8
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto :goto_199
.end method
.method public setAuthState(Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
return-void
.end method
.method public setIAuthorizeResult(Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIAuthorizeResult:Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
return-void
.end method
.method public startAuthorize(I)V
.registers 12
const/4 v9, 0x1
const/4 v8, 0x3
iput-boolean v9, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mIsDone:Z
sget-object v5, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "startAuthorize  mSocket"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "authorize = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-ne p1, v9, :cond_31
sget-object v5, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_TOKEN_GETS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
:goto_2c
:cond_2c
iget-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-nez v5, :cond_38
:goto_30
:cond_30
return-void
:cond_31
if-ne p1, v8, :cond_2c
sget-object v5, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_CANCEL:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
iput-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mAuthState:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
goto :goto_2c
:cond_38
const/16 v0, 0x3e8
:try_start_3a
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
:try_end_3f
.catchall {:try_start_3a .. :try_end_3f} :catchall_bb
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_b0
:try_start_3f
const-string/jumbo v5, "result"
const/4 v6, 0x1
invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string/jumbo v5, "authorize"
invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:goto_4c
:try_start_4c
:try_end_4c
.catchall {:try_start_3f .. :try_end_4c} :catchall_bb
.catch Lorg/json/JSONException; {:try_start_3f .. :try_end_4c} :catch_ab
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_4c} :catch_b0
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
move-result-object v5
array-length v5, v5
add-int/lit8 v4, v5, 0x8
sget-object v5, Lqr/recognize/huawei_tv/HuaweiTvModel;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "mSocket "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v7}, Ljava/net/Socket;->isConnected()Z
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
if-eqz v5, :cond_a5
iget-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z
move-result v5
if-eqz v5, :cond_a5
iget-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z
move-result v5
if-nez v5, :cond_a5
new-instance v1, Ljava/io/DataOutputStream;
iget-object v5, p0, Lqr/recognize/huawei_tv/HuaweiTvModel;->mSocket:Ljava/net/Socket;
invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v5
invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
move-result-object v5
invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
:try_end_a5
.catchall {:try_start_4c .. :try_end_a5} :catchall_bb
.catch Ljava/io/IOException; {:try_start_4c .. :try_end_a5} :catch_b0
:cond_a5
if-ne p1, v8, :cond_30
invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->closeSocket()V
goto :goto_30
:catch_ab
move-exception v2
:try_start_ac
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_af
.catchall {:try_start_ac .. :try_end_af} :catchall_bb
.catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0
goto :goto_4c
:catch_b0
move-exception v2
:try_start_b1
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_b4
.catchall {:try_start_b1 .. :try_end_b4} :catchall_bb
if-ne p1, v8, :cond_30
invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->closeSocket()V
goto/16 :goto_30
:catchall_bb
move-exception v5
if-ne p1, v8, :cond_c1
invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->closeSocket()V
:cond_c1
throw v5
.end method