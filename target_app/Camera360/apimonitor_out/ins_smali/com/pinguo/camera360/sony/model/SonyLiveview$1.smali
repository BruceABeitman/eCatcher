.class  Lcom/pinguo/camera360/sony/model/SonyLiveview$1;
.super Ljava/lang/Thread;
.source "SonyLiveview.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyLiveview;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 13
const/4 v11, 0x0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "Starting retrieving liveview data from server."
invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v5, 0x0
const/4 v3, 0x0
:try_start_d
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->startLiveview()Lorg/json/JSONObject;
move-result-object v3
#calls: Lcom/pinguo/camera360/sony/model/SonyLiveview;->isErrorReply(Lorg/json/JSONObject;)Z
invoke-static {v3}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$5(Lorg/json/JSONObject;)Z
move-result v7
if-nez v7, :cond_3c
const-string/jumbo v7, "result"
invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
const/4 v1, 0x0
const/4 v7, 0x1
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v8
if-gt v7, v8, :cond_31
const/4 v7, 0x0
invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v1
:cond_31
if-eqz v1, :cond_3c
new-instance v6, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;
invoke-direct {v6}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;-><init>()V
:try_start_38
:try_end_38
.catchall {:try_start_d .. :try_end_38} :catchall_1bb
.catch Ljava/io/IOException; {:try_start_d .. :try_end_38} :catch_f7
.catch Lorg/json/JSONException; {:try_start_d .. :try_end_38} :catch_164
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->open(Ljava/lang/String;)V
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_225
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_22c
.catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3b} :catch_228
move-object v5, v6
:cond_3c
if-nez v5, :cond_9f
:try_start_3e
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
const/4 v8, 0x0
#setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v7, v8}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
:try_end_44
.catchall {:try_start_3e .. :try_end_44} :catchall_1bb
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_f7
.catch Lorg/json/JSONException; {:try_start_3e .. :try_end_44} :catch_164
if-eqz v5, :cond_49
:try_start_46
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->close()V
:cond_49
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->stopLiveview()Lorg/json/JSONObject;
:goto_52
:try_end_52
.catch Ljava/io/IOException; {:try_start_46 .. :try_end_52} :catch_72
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
if-eqz v7, :cond_63
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
:cond_63
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v7, v11}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
:goto_71
return-void
:catch_72
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "IOException while closing slicer: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_52
:cond_8f
:try_start_8f
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->nextPayload()Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;
move-result-object v2
if-nez v2, :cond_d5
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "Liveview Payload is null."
invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_9f
:cond_9f
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$6(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z
:try_end_a4
.catchall {:try_start_8f .. :try_end_a4} :catchall_1bb
.catch Ljava/io/IOException; {:try_start_8f .. :try_end_a4} :catch_f7
.catch Lorg/json/JSONException; {:try_start_8f .. :try_end_a4} :catch_164
move-result v7
if-nez v7, :cond_8f
if-eqz v5, :cond_ac
:try_start_a9
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->close()V
:cond_ac
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->stopLiveview()Lorg/json/JSONObject;
:try_end_b5
.catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b5} :catch_207
:goto_b5
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
if-eqz v7, :cond_c6
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
:cond_c6
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v7, v11}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
goto :goto_71
:cond_d5
:try_start_d5
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I
:try_end_de
.catchall {:try_start_d5 .. :try_end_de} :catchall_1bb
.catch Ljava/io/IOException; {:try_start_d5 .. :try_end_de} :catch_f7
.catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_de} :catch_164
move-result v7
const/4 v8, 0x2
if-ne v7, v8, :cond_eb
:try_start_e2
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;
:try_end_eb
.catchall {:try_start_e2 .. :try_end_eb} :catchall_1bb
.catch Ljava/util/NoSuchElementException; {:try_start_e2 .. :try_end_eb} :catch_230
.catch Ljava/io/IOException; {:try_start_e2 .. :try_end_eb} :catch_f7
.catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_eb} :catch_164
:cond_eb
:try_start_eb
:goto_eb
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
iget-object v8, v2, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;->jpegData:[B
invoke-interface {v7, v8}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
:try_end_f6
.catchall {:try_start_eb .. :try_end_f6} :catchall_1bb
.catch Ljava/io/IOException; {:try_start_eb .. :try_end_f6} :catch_f7
.catch Lorg/json/JSONException; {:try_start_eb .. :try_end_f6} :catch_164
goto :goto_9f
:catch_f7
move-exception v0
:try_start_f8
:goto_f8
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "IOException while fetching: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#calls: Lcom/pinguo/camera360/sony/model/SonyLiveview;->fireLiveviewError()V
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$7(Lcom/pinguo/camera360/sony/model/SonyLiveview;)V
:try_end_118
.catchall {:try_start_f8 .. :try_end_118} :catchall_1bb
if-eqz v5, :cond_11d
:try_start_11a
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->close()V
:cond_11d
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->stopLiveview()Lorg/json/JSONObject;
:goto_126
:try_end_126
.catch Ljava/io/IOException; {:try_start_11a .. :try_end_126} :catch_147
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
if-eqz v7, :cond_137
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
:cond_137
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v7, v11}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
goto/16 :goto_71
:catch_147
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "IOException while closing slicer: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_126
:catch_164
move-exception v0
:goto_165
:try_start_165
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "JSONException while fetching"
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_16f
.catchall {:try_start_165 .. :try_end_16f} :catchall_1bb
if-eqz v5, :cond_174
:try_start_171
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->close()V
:cond_174
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->stopLiveview()Lorg/json/JSONObject;
:goto_17d
:try_end_17d
.catch Ljava/io/IOException; {:try_start_171 .. :try_end_17d} :catch_19e
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
if-eqz v7, :cond_18e
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
:cond_18e
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v7
invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v7, v11}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
goto/16 :goto_71
:catch_19e
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "IOException while closing slicer: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_17d
:catchall_1bb
move-exception v7
:goto_1bc
if-eqz v5, :cond_1c1
:try_start_1be
invoke-virtual {v5}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->close()V
:cond_1c1
iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v8}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->stopLiveview()Lorg/json/JSONObject;
:try_end_1ca
.catch Ljava/io/IOException; {:try_start_1be .. :try_end_1ca} :catch_1ea
:goto_1ca
iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v8}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v8
if-eqz v8, :cond_1db
iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;
invoke-static {v8}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
:cond_1db
iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v8}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
move-result-object v8
invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;
#setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
invoke-static {v8, v11}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
throw v7
:catch_1ea
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v8
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "IOException while closing slicer: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_1ca
:catch_207
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "IOException while closing slicer: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_b5
:catchall_225
move-exception v7
move-object v5, v6
goto :goto_1bc
:catch_228
move-exception v0
move-object v5, v6
goto/16 :goto_165
:catch_22c
move-exception v0
move-object v5, v6
goto/16 :goto_f8
:catch_230
move-exception v7
goto/16 :goto_eb
.end method