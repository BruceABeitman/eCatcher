.class  Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;
.super Ljava/lang/Thread;
.source "SonyCameraEventObserver.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 30
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$0()Ljava/lang/String;
move-result-object v25
const-string/jumbo v26, "start() exec."
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v12, 0x1
:sswitch_b
:goto_b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$1(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Z
move-result v25
if-nez v25, :cond_2d
:goto_17
:sswitch_17
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$0()Ljava/lang/String;
move-result-object v25
const-string/jumbo v26, "getEvent thread end."
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
const/16 v26, 0x0
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
invoke-static/range {v25 .. v26}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$36(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
:cond_2c
return-void
:cond_2d
if-eqz v12, :cond_86
const/4 v15, 0x0
:goto_30
:try_start_30
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$2(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v25
move-object/from16 v0, v25
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->getEvent(Z)Lorg/json/JSONObject;
move-result-object v17
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findErrorCode(Lorg/json/JSONObject;)I
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$3(Lorg/json/JSONObject;)I
move-result v11
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$0()Ljava/lang/String;
move-result-object v25
new-instance v26, Ljava/lang/StringBuilder;
const-string/jumbo v27, "getEvent errorCode: "
invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v26
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sparse-switch v11, :sswitch_data_2b2
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$0()Ljava/lang/String;
move-result-object v25
new-instance v26, Ljava/lang/StringBuilder;
const-string/jumbo v27, "SimpleCameraEventObserver: Unexpected error: "
invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v26
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_79
.catch Ljava/io/IOException; {:try_start_30 .. :try_end_79} :catch_7a
.catch Lorg/json/JSONException; {:try_start_30 .. :try_end_79} :catch_288
goto :goto_17
:catch_7a
move-exception v10
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$0()Ljava/lang/String;
move-result-object v25
const-string/jumbo v26, "getEvent timeout by client trigger."
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_17
:cond_86
const/4 v15, 0x1
goto :goto_30
:sswitch_88
const-wide/16 v25, 0x1388
:try_start_8a
invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
:try_end_8d
.catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8f
.catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_7a
.catch Lorg/json/JSONException; {:try_start_8a .. :try_end_8d} :catch_288
goto/16 :goto_b
:catch_8f
move-exception v25
goto/16 :goto_b
:try_start_92
:sswitch_92
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findAvailableApiList(Lorg/json/JSONObject;)Ljava/util/List;
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$4(Lorg/json/JSONObject;)Ljava/util/List;
move-result-object v5
invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
move-result v25
if-nez v25, :cond_a7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireApiListModifiedListener(Ljava/util/List;)V
invoke-static {v0, v5}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$5(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/util/List;)V
:cond_a7
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findCameraStatus(Lorg/json/JSONObject;)Ljava/lang/String;
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$6(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mCameraStatus:Ljava/lang/String;
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$7(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
move-result-object v25
move-object/from16 v0, v25
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v25
if-nez v25, :cond_d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mCameraStatus:Ljava/lang/String;
invoke-static {v0, v8}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$8(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireCameraStatusChangeListener(Ljava/lang/String;)V
invoke-static {v0, v8}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$9(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
:cond_d5
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findLiveviewStatus(Lorg/json/JSONObject;)Ljava/lang/Boolean;
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$10(Lorg/json/JSONObject;)Ljava/lang/Boolean;
move-result-object v14
if-eqz v14, :cond_10b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewStatus:Z
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$11(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Z
move-result v25
invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v25
move-object/from16 v0, v25
invoke-virtual {v14, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
move-result v25
if-nez v25, :cond_10b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z
move-result v26
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewStatus:Z
invoke-static/range {v25 .. v26}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$12(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z
move-result v26
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireLiveviewStatusChangeListener(Z)V
invoke-static/range {v25 .. v26}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$13(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
:cond_10b
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findShootMode(Lorg/json/JSONObject;)Ljava/lang/String;
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$14(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v18
if-eqz v18, :cond_13f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mShootMode:Ljava/lang/String;
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$15(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
move-result-object v25
move-object/from16 v0, v18
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v25
if-nez v25, :cond_13f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
move-object/from16 v1, v18
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mShootMode:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$16(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
move-object/from16 v1, v18
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireShootModeChangeListener(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$17(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
:cond_13f
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findZoomInformation(Lorg/json/JSONObject;)I
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$18(Lorg/json/JSONObject;)I
move-result v24
const/16 v25, -0x1
move/from16 v0, v24
move/from16 v1, v25
if-eq v0, v1, :cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
move/from16 v1, v24
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mZoomPosition:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$19(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
const/16 v26, 0x0
const/16 v27, 0x0
const/16 v28, 0x0
move-object/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v27
move/from16 v3, v24
move/from16 v4, v28
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireZoomInformationChangeListener(IIII)V
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$20(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;IIII)V
:cond_171
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findTakePictureUrl(Lorg/json/JSONObject;)Ljava/lang/String;
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$21(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v25
if-nez v25, :cond_1bd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v25
if-eqz v25, :cond_197
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v25
invoke-interface/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->getPictureStatusIdle()Z
move-result v25
if-eqz v25, :cond_2c
:cond_197
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePictureTakenOrientationRest()V
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$23(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
:try_start_1a0
:try_end_1a0
.catch Ljava/io/IOException; {:try_start_92 .. :try_end_1a0} :catch_7a
.catch Lorg/json/JSONException; {:try_start_92 .. :try_end_1a0} :catch_288
invoke-static/range {v21 .. v21}, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->getUrlContentToByte(Ljava/lang/String;)[B
move-result-object v9
if-eqz v9, :cond_1ab
array-length v0, v9
move/from16 v25, v0
if-nez v25, :cond_236
:cond_1ab
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireTakePictureFailListener()V
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$25(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
:goto_1b4
:try_end_1b4
.catchall {:try_start_1a0 .. :try_end_1b4} :catchall_2a6
.catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1b4} :catch_273
:try_start_1b4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePicturePostTakenListener()V
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$24(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
:goto_1bd
:cond_1bd
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findLiveviewOrientation(Lorg/json/JSONObject;)I
invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$27(Lorg/json/JSONObject;)I
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewOrientation:I
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$28(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)I
move-result v25
move/from16 v0, v25
if-eq v13, v0, :cond_1e5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewOrientation:I
invoke-static {v0, v13}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$29(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireLiveviewOrientationChangeListener(I)V
invoke-static {v0, v13}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$30(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
:cond_1e5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
move-object/from16 v1, v17
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findStillPictureSize(Lorg/json/JSONObject;)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$31(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v20
if-eqz v20, :cond_233
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSize:Ljava/lang/String;
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$32(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
move-result-object v25
move-object/from16 v0, v20
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v25
if-nez v25, :cond_233
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
move-object/from16 v1, v20
#setter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSize:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$33(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v26, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSize:Ljava/lang/String;
invoke-static/range {v26 .. v26}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$32(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v27, v0
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSizeCheckAvailability:Z
invoke-static/range {v27 .. v27}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$34(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Z
move-result v27
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireStillSizeChangeListener(Ljava/lang/String;Z)V
invoke-static/range {v25 .. v27}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$35(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;Z)V
:cond_233
:try_end_233
.catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_233} :catch_7a
.catch Lorg/json/JSONException; {:try_start_1b4 .. :try_end_233} :catch_288
const/4 v12, 0x0
goto/16 :goto_b
:try_start_236
:cond_236
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v22
new-instance v16, Landroid/graphics/BitmapFactory$Options;
invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/16 v25, 0x1
move/from16 v0, v25
move-object/from16 v1, v16
iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/16 v25, 0x0
array-length v0, v9
move/from16 v26, v0
move/from16 v0, v25
move/from16 v1, v26
move-object/from16 v2, v16
invoke-static {v9, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-object/from16 v0, v16
iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
move-object/from16 v0, v16
iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
new-instance v19, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-object/from16 v0, v19
invoke-direct {v0, v7, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
move-object/from16 v0, v25
move-object/from16 v1, v19
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePictureTakenListener([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-static {v0, v9, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$26(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
:try_end_271
.catchall {:try_start_236 .. :try_end_271} :catchall_2a6
.catch Ljava/lang/Exception; {:try_start_236 .. :try_end_271} :catch_273
goto/16 :goto_1b4
:catch_273
move-exception v10
:try_start_274
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireTakePictureFailListener()V
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$25(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
:try_start_27d
:try_end_27d
.catchall {:try_start_274 .. :try_end_27d} :catchall_2a6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v25, v0
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePicturePostTakenListener()V
invoke-static/range {v25 .. v25}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$24(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
:try_end_286
.catch Ljava/io/IOException; {:try_start_27d .. :try_end_286} :catch_7a
.catch Lorg/json/JSONException; {:try_start_27d .. :try_end_286} :catch_288
goto/16 :goto_1bd
:catch_288
move-exception v10
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$0()Ljava/lang/String;
move-result-object v25
new-instance v26, Ljava/lang/StringBuilder;
const-string/jumbo v27, "getEvent: JSON format error. "
invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_17
:catchall_2a6
move-exception v25
:try_start_2a7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
move-object/from16 v26, v0
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePicturePostTakenListener()V
invoke-static/range {v26 .. v26}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$24(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
throw v25
:try_end_2b1
.catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2b1} :catch_7a
.catch Lorg/json/JSONException; {:try_start_2a7 .. :try_end_2b1} :catch_288
nop
:sswitch_data_2b2
.sparse-switch
0x0 -> :sswitch_92
0x1 -> :sswitch_17
0x2 -> :sswitch_b
0xc -> :sswitch_17
0x9dd2 -> :sswitch_88
.end sparse-switch
.end method