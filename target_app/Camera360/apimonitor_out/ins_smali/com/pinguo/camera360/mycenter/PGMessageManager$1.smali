.class  Lcom/pinguo/camera360/mycenter/PGMessageManager$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "PGMessageManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
.method constructor <init>(Lcom/pinguo/camera360/mycenter/PGMessageManager;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
invoke-direct {p0, p2}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "\u8fd4\u56de\u5f02\u5e38"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;->onError(Ljava/lang/Exception;)V
:cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$2(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
move-result-object v0
if-ne v0, p0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$3(Lcom/pinguo/camera360/mycenter/PGMessageManager;Lcom/pinguo/Camera360Lib/network/HttpStringRequest;)V
:cond_2c
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->onResponse(Ljava/lang/String;)V
return-void
.end method
.method protected onResponse(Ljava/lang/String;)V
.registers 35
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
new-instance v29, Ljava/lang/StringBuilder;
const-string/jumbo v30, "\u8fd4\u56de\uff1a"
invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v29
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_1b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$1(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/google/gson/Gson;
move-result-object v28
new-instance v29, Lcom/pinguo/camera360/mycenter/PGMessageManager$1$1;
move-object/from16 v0, v29
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager$1$1;-><init>(Lcom/pinguo/camera360/mycenter/PGMessageManager$1;)V
invoke-virtual/range {v29 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager$1$1;->getType()Ljava/lang/reflect/Type;
move-result-object v29
move-object/from16 v0, v28
move-object/from16 v1, p1
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v20
check-cast v20, Lcom/pinguo/camera360/mycenter/PGMessageManager$GsonData;
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_7d
if-nez v20, :cond_b8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$2(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
if-ne v0, v1, :cond_5b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
const/16 v29, 0x0
#setter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static/range {v28 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$3(Lcom/pinguo/camera360/mycenter/PGMessageManager;Lcom/pinguo/Camera360Lib/network/HttpStringRequest;)V
:cond_5b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
if-eqz v28, :cond_7c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
new-instance v29, Ljava/lang/Exception;
const-string/jumbo v30, "response is null"
invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v28 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;->onError(Ljava/lang/Exception;)V
:cond_7c
:goto_7c
return-void
:catch_7d
move-exception v8
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$2(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
if-ne v0, v1, :cond_9c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
const/16 v29, 0x0
#setter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static/range {v28 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$3(Lcom/pinguo/camera360/mycenter/PGMessageManager;Lcom/pinguo/Camera360Lib/network/HttpStringRequest;)V
:cond_9c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
if-eqz v28, :cond_7c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
move-object/from16 v0, v28
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;->onError(Ljava/lang/Exception;)V
goto :goto_7c
:cond_b8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$GsonData;->usermsgs:Ljava/util/List;
move-object/from16 v27, v0
if-nez v27, :cond_258
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
const-string/jumbo v29, "usermsgs == null"
invoke-static/range {v28 .. v29}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_ca
:goto_ca
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$GsonData;->messages:Ljava/util/List;
move-object/from16 v16, v0
if-eqz v16, :cond_4c5
invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I
move-result v28
if-lez v28, :cond_4c5
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
new-instance v29, Ljava/lang/StringBuilder;
const-string/jumbo v30, "onResponse response.messages.size : "
invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I
move-result v30
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v18, Ljava/util/ArrayList;
invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
:try_start_fd
invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v28
:goto_101
:cond_101
invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z
:try_end_104
.catch Ljava/lang/Exception; {:try_start_fd .. :try_end_104} :catch_3d4
move-result v29
if-nez v29, :cond_385
:goto_107
invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
move-result v28
if-lez v28, :cond_157
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
new-instance v29, Ljava/lang/StringBuilder;
const-string/jumbo v30, "notAvailableList.size : "
invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
move-result v30
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$7(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
const-string/jumbo v29, "not_available_msg_json"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v30, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-static/range {v30 .. v30}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$1(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/google/gson/Gson;
move-result-object v30
move-object/from16 v0, v30
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v30
invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$7(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_start_157
:cond_157
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#calls: Lcom/pinguo/camera360/mycenter/PGMessageManager;->getDeletedMsgListFromPref()Ljava/util/List;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$8(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Ljava/util/List;
move-result-object v6
invoke-interface {v6}, Ljava/util/List;->size()I
:try_end_164
.catch Ljava/lang/Exception; {:try_start_157 .. :try_end_164} :catch_41e
move-result v5
add-int/lit8 v4, v5, -0x1
:goto_167
if-gez v4, :cond_3e4
:goto_169
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#calls: Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgListFromPref()Ljava/util/List;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$9(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Ljava/util/List;
move-result-object v13
const/16 v26, 0x0
:try_start_175
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v28
if-lez v28, :cond_4bf
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v28
:goto_17f
:cond_17f
invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z
:try_end_182
.catch Ljava/lang/Exception; {:try_start_175 .. :try_end_182} :catch_4a5
move-result v29
if-nez v29, :cond_435
:goto_185
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
new-instance v29, Ljava/lang/StringBuilder;
const-string/jumbo v30, "onResponse update size : "
invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v29
move/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
if-lez v26, :cond_1dd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$7(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
const-string/jumbo v29, "new_msg_count"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v30, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPreferences:Landroid/content/SharedPreferences;
invoke-static/range {v30 .. v30}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$10(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences;
move-result-object v30
const-string/jumbo v31, "new_msg_count"
const/16 v32, 0x0
invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v30
add-int v30, v30, v26
invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$7(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v28
const/16 v29, 0x1
invoke-virtual/range {v28 .. v29}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->addNewFlagInMyCenter(I)V
:cond_1dd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v29, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-static/range {v29 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$1(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/google/gson/Gson;
move-result-object v29
move-object/from16 v0, v29
invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v29
#calls: Lcom/pinguo/camera360/mycenter/PGMessageManager;->putMsgJson2Pref(Ljava/lang/String;)V
invoke-static/range {v28 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$11(Lcom/pinguo/camera360/mycenter/PGMessageManager;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
if-eqz v28, :cond_211
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
move-object/from16 v0, v28
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;->onSuccess(Ljava/lang/Object;)V
:cond_211
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
new-instance v29, Ljava/lang/StringBuilder;
const-string/jumbo v30, "\u6570\u636e\u6570\u91cf: "
invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v30
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_22c
:goto_22c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
move-object/from16 v0, v20
iget v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$GsonData;->version:I
move/from16 v29, v0
#calls: Lcom/pinguo/camera360/mycenter/PGMessageManager;->putVersion2Pref(I)V
invoke-static/range {v28 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$12(Lcom/pinguo/camera360/mycenter/PGMessageManager;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$2(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
if-ne v0, v1, :cond_7c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
const/16 v29, 0x0
#setter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
invoke-static/range {v28 .. v29}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$3(Lcom/pinguo/camera360/mycenter/PGMessageManager;Lcom/pinguo/Camera360Lib/network/HttpStringRequest;)V
goto/16 :goto_7c
:cond_258
invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I
move-result v28
if-gtz v28, :cond_26a
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
const-string/jumbo v29, "usermsgs size <= 0"
invoke-static/range {v28 .. v29}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_ca
:cond_26a
new-instance v19, Ljava/util/ArrayList;
invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v28
:goto_273
:cond_273
invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z
move-result v29
if-nez v29, :cond_322
invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
move-result v22
if-lez v22, :cond_ca
new-instance v21, Ljava/util/HashSet;
invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V
move-object/from16 v0, v21
move-object/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V
move-object/from16 v0, v19
move-object/from16 v1, v21
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getStateChangedOrderList()Ljava/util/List;
move-result-object v12
if-eqz v12, :cond_381
invoke-interface {v12}, Ljava/util/List;->size()I
move-result v23
invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
move-result v24
new-instance v25, Ljava/util/ArrayList;
invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
const/4 v9, 0x0
:goto_2af
move/from16 v0, v24
if-lt v9, v0, :cond_340
:goto_2b3
move-object/from16 v0, v25
invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:goto_2b8
invoke-interface {v12}, Ljava/util/List;->size()I
move-result v22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#calls: Lcom/pinguo/camera360/mycenter/PGMessageManager;->checkUserPreference()Z
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$5(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Z
move-result v28
if-eqz v28, :cond_30b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$6(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
const-string/jumbo v29, "new_order_change_count"
move-object/from16 v0, v28
move-object/from16 v1, v29
move/from16 v2, v22
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$6(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
const-string/jumbo v29, "oder_state_chaged_list"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v30, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mGson:Lcom/google/gson/Gson;
invoke-static/range {v30 .. v30}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$1(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/google/gson/Gson;
move-result-object v30
move-object/from16 v0, v30
invoke-virtual {v0, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v30
invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mUserEditor:Landroid/content/SharedPreferences$Editor;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$6(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Landroid/content/SharedPreferences$Editor;
move-result-object v28
invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_30b
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v28
const/16 v29, 0x8
invoke-virtual/range {v28 .. v29}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->addNewFlagInMyCenter(I)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v28
new-instance v29, Lcom/pinguo/camera360/order/event/OnOrderStatusChangedEvent;
invoke-direct/range {v29 .. v29}, Lcom/pinguo/camera360/order/event/OnOrderStatusChangedEvent;-><init>()V
invoke-virtual/range {v28 .. v29}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto/16 :goto_ca
:cond_322
invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->type:Ljava/lang/String;
move-object/from16 v29, v0
const-string/jumbo v30, "USER_ORDER_MSG"
invoke-static/range {v29 .. v30}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v29
if-eqz v29, :cond_273
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_273
:try_start_340
:cond_340
move-object/from16 v0, v19
invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
const/4 v10, 0x0
:goto_349
move/from16 v0, v23
if-lt v10, v0, :cond_35c
:cond_34d
move/from16 v0, v23
if-lt v10, v0, :cond_358
move-object/from16 v0, v25
move-object/from16 v1, v17
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_358
add-int/lit8 v9, v9, 0x1
goto/16 :goto_2af
:cond_35c
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
move-object/from16 v29, v0
invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v28
check-cast v28, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
move-object/from16 v0, v28
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
move-object/from16 v28, v0
move-object/from16 v0, v29
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_375
.catch Ljava/lang/Exception; {:try_start_340 .. :try_end_375} :catch_37b
move-result v28
if-nez v28, :cond_34d
add-int/lit8 v10, v10, 0x1
goto :goto_349
:catch_37b
move-exception v8
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_2b3
:cond_381
move-object/from16 v12, v19
goto/16 :goto_2b8
:try_start_385
:cond_385
invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/mycenter/PGMessage;
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v29
new-instance v30, Ljava/lang/StringBuilder;
const-string/jumbo v31, "message = "
invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v30
const-string/jumbo v31, " logic ="
invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v30
iget-object v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v30
invoke-static/range {v29 .. v30}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v29
move-wide/from16 v0, v29
iput-wide v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->receiveTime:J
if-eqz v15, :cond_101
iget-wide v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->expireTime:J
move-wide/from16 v29, v0
const-wide/16 v31, 0x3e8
mul-long v29, v29, v31
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v31
cmp-long v29, v29, v31
if-lez v29, :cond_101
invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_3d2
.catch Ljava/lang/Exception; {:try_start_385 .. :try_end_3d2} :catch_3d4
goto/16 :goto_101
:catch_3d4
move-exception v8
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
const-string/jumbo v29, "\u5254\u9664\u65e0\u6548\u6570\u636e\u548c\u6682\u65f6\u4e0d\u80fd\u7528\u6570\u636e\u51fa\u9519"
invoke-static/range {v28 .. v29}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_107
:try_start_3e4
:cond_3e4
invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/camera360/mycenter/PGMessage;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v11
add-int/lit8 v9, v11, -0x1
:goto_3f0
if-gez v9, :cond_3f6
:goto_3f2
add-int/lit8 v4, v4, -0x1
goto/16 :goto_167
:cond_3f6
invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-object v0, v7, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
move-object/from16 v28, v0
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
move-object/from16 v29, v0
invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v28
if-eqz v28, :cond_432
iget-wide v0, v7, Lcom/pinguo/camera360/mycenter/PGMessage;->version:J
move-wide/from16 v28, v0
move-object/from16 v0, v17
iget-wide v0, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->version:J
move-wide/from16 v30, v0
cmp-long v28, v28, v30
if-ltz v28, :cond_42e
invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:try_end_41d
.catch Ljava/lang/Exception; {:try_start_3e4 .. :try_end_41d} :catch_41e
goto :goto_3f2
:catch_41e
move-exception v8
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v28
const-string/jumbo v29, "\u5220\u9664\u5df2\u7ecf\u770b\u8fc7\u7684\u6d88\u606f\u51fa\u9519"
invoke-static/range {v28 .. v29}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_169
:try_start_42e
:cond_42e
invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:try_end_431
.catch Ljava/lang/Exception; {:try_start_42e .. :try_end_431} :catch_41e
goto :goto_3f2
:cond_432
add-int/lit8 v9, v9, -0x1
goto :goto_3f0
:cond_435
:try_start_435
invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/mycenter/PGMessage;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v11
add-int/lit8 v9, v11, -0x1
:goto_441
if-gez v9, :cond_464
:goto_443
if-gez v9, :cond_17f
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v29
new-instance v30, Ljava/lang/StringBuilder;
const-string/jumbo v31, "i < 0 message : "
invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->appName:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v30
invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
add-int/lit8 v26, v26, 0x1
goto/16 :goto_17f
:cond_464
invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-object v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
move-object/from16 v29, v0
iget-object v0, v14, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v29 .. v30}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v29
if-eqz v29, :cond_4bc
iget-wide v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->version:J
move-wide/from16 v29, v0
iget-wide v0, v14, Lcom/pinguo/camera360/mycenter/PGMessage;->version:J
move-wide/from16 v31, v0
cmp-long v29, v29, v31
if-lez v29, :cond_4ab
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$0()Ljava/lang/String;
move-result-object v29
new-instance v30, Ljava/lang/StringBuilder;
const-string/jumbo v31, "id equal verson not message:"
invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->appName:Ljava/lang/String;
move-object/from16 v31, v0
invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v30
invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
add-int/lit8 v26, v26, 0x1
:goto_4a1
invoke-interface {v13, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:try_end_4a4
.catch Ljava/lang/Exception; {:try_start_435 .. :try_end_4a4} :catch_4a5
goto :goto_443
:catch_4a5
move-exception v8
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_185
:try_start_4ab
:cond_4ab
iget-boolean v0, v14, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
move/from16 v29, v0
move/from16 v0, v29
iput-boolean v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
iget-wide v0, v14, Lcom/pinguo/camera360/mycenter/PGMessage;->receiveTime:J
move-wide/from16 v29, v0
move-wide/from16 v0, v29
iput-wide v0, v15, Lcom/pinguo/camera360/mycenter/PGMessage;->receiveTime:J
goto :goto_4a1
:cond_4bc
add-int/lit8 v9, v9, -0x1
goto :goto_441
:cond_4bf
invoke-interface {v3}, Ljava/util/List;->size()I
:try_end_4c2
.catch Ljava/lang/Exception; {:try_start_4ab .. :try_end_4c2} :catch_4a5
move-result v26
goto/16 :goto_185
:cond_4c5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
if-eqz v28, :cond_22c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/mycenter/PGMessageManager$1;->this$0:Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-object/from16 v28, v0
#getter for: Lcom/pinguo/camera360/mycenter/PGMessageManager;->mOnUpdateMsgResult:Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
invoke-static/range {v28 .. v28}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->access$4(Lcom/pinguo/camera360/mycenter/PGMessageManager;)Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;->onSuccess(Ljava/lang/Object;)V
goto/16 :goto_22c
.end method