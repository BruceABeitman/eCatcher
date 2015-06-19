.class public Lcom/pinguo/camera360/login/i/user/UserInfoResponse;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "UserInfoResponse.java"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 18
invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V
move-object v5, p0
:try_start_4
new-instance v6, Lorg/json/JSONObject;
move-object/from16 v0, p1
invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v4
:cond_f
:goto_f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_16
return-void
:cond_16
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-string/jumbo v12, "status"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_2e
invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v12
iput v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I
:try_end_2b
.catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2b} :catch_2c
goto :goto_f
:catch_2c
move-exception v1
throw v1
:try_start_2e
:cond_2e
const-string/jumbo v12, "message"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_3e
invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
iput-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->message:Ljava/lang/String;
goto :goto_f
:cond_3e
const-string/jumbo v12, "data"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_f
new-instance v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-direct {v12}, Lcom/pinguo/camera360/login/model/User$Info;-><init>()V
iput-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
move-object/from16 v0, p2
iput-object v0, v12, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;
:try_start_56
:try_end_56
.catch Lorg/json/JSONException; {:try_start_2e .. :try_end_56} :catch_2c
invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v9
invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v11
:goto_5e
:cond_5e
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_f
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
const-string/jumbo v12, "userId"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_80
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
goto :goto_5e
:catch_7e
move-exception v12
goto :goto_f
:cond_80
const-string/jumbo v12, "email"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_94
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->email:Ljava/lang/String;
goto :goto_5e
:cond_94
const-string/jumbo v12, "avatar"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_a8
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;
goto :goto_5e
:cond_a8
const-string/jumbo v12, "lastLoginTime"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_bc
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v13
iput-wide v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->lastLoginTime:J
goto :goto_5e
:cond_bc
const-string/jumbo v12, "nickname"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_d0
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
goto :goto_5e
:cond_d0
const-string/jumbo v12, "description"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_e5
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;
goto/16 :goto_5e
:cond_e5
const-string/jumbo v12, "gender"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_fa
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;
goto/16 :goto_5e
:cond_fa
const-string/jumbo v12, "birthday"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_10f
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->birthday:Ljava/lang/String;
goto/16 :goto_5e
:cond_10f
const-string/jumbo v12, "certificated"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_124
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v13
iput v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->certificated:I
goto/16 :goto_5e
:cond_124
const-string/jumbo v12, "regDateTime"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_139
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v13
iput-wide v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->regDateTime:J
goto/16 :goto_5e
:cond_139
const-string/jumbo v12, "language"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_14e
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->language:Ljava/lang/String;
goto/16 :goto_5e
:cond_14e
const-string/jumbo v12, "token"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_163
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
iput-object v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
goto/16 :goto_5e
:cond_163
const-string/jumbo v12, "third"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_169
.catch Lorg/json/JSONException; {:try_start_56 .. :try_end_169} :catch_7e
move-result v12
if-eqz v12, :cond_18e
:try_start_16c
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v8
new-instance v2, Lcom/google/gson/Gson;
invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v12
const-class v13, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
invoke-virtual {v2, v12, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
if-eqz v7, :cond_5e
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
iput-object v7, v12, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
:try_end_189
.catch Lorg/json/JSONException; {:try_start_16c .. :try_end_189} :catch_18b
goto/16 :goto_5e
:catch_18b
move-exception v12
goto/16 :goto_5e
:cond_18e
:try_start_18e
const-string/jumbo v12, "forgetPass"
invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_5e
iget-object v12, v5, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;
check-cast v12, Lcom/pinguo/camera360/login/model/User$Info;
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v13
iput v13, v12, Lcom/pinguo/camera360/login/model/User$Info;->forgetPass:I
:try_end_1a1
.catch Lorg/json/JSONException; {:try_start_18e .. :try_end_1a1} :catch_7e
goto/16 :goto_5e
.end method