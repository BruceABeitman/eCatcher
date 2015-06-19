.class public Lcom/pinguo/camera360/login/CompatibleUser;
.super Ljava/lang/Object;
.source "CompatibleUser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static adapter(Landroid/content/Context;)V
.registers 37
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferencesForLogin(Landroid/content/Context;)Ljava/util/HashMap;
move-result-object v23
const-string/jumbo v9, "hasExtraData"
move-object/from16 v0, v23
invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
move-result v22
if-eqz v22, :cond_2d
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->clearBeforeUserInfo(Landroid/content/Context;)V
const-string/jumbo v9, "extraData"
move-object/from16 v0, v23
invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v21
check-cast v21, Ljava/lang/String;
invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-eqz v9, :cond_2e
:goto_2d
:cond_2d
return-void
:try_start_2e
:cond_2e
new-instance v27, Lorg/json/JSONObject;
move-object/from16 v0, v27
move-object/from16 v1, v21
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v10, 0x0
const/4 v11, 0x0
const-string/jumbo v14, ""
const-string/jumbo v4, "email"
const-string/jumbo v2, ""
const-string/jumbo v3, ""
const-string/jumbo v13, ""
const-string/jumbo v12, ""
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v26
:goto_53
:cond_53
invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_74
invoke-static {v10, v11, v4}, Lcom/pinguo/camera360/login/CompatibleUser;->checkArgmentValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_2d
invoke-static/range {v2 .. v8}, Lcom/pinguo/camera360/login/CompatibleUser;->processAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;)Ljava/lang/String;
move-result-object v12
move-object/from16 v9, p0
move-object v15, v4
move-object/from16 v16, v5
move-object/from16 v17, v6
move-object/from16 v18, v7
move-object/from16 v19, v8
invoke-static/range {v9 .. v19}, Lcom/pinguo/camera360/login/CompatibleUser;->createAndSaveUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;)V
goto :goto_2d
:catch_72
move-exception v9
goto :goto_2d
:cond_74
invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v28
check-cast v28, Ljava/lang/String;
const-string/jumbo v9, "userId"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_8f
const-string/jumbo v9, "userId"
move-object/from16 v0, v27
invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
goto :goto_53
:cond_8f
const-string/jumbo v9, "localkey"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_a4
const-string/jumbo v9, "localkey"
move-object/from16 v0, v27
invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
goto :goto_53
:cond_a4
const-string/jumbo v9, "third"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_1c1
const-string/jumbo v9, "third"
move-object/from16 v0, v27
invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v20
const/16 v24, 0x0
:goto_ba
invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I
move-result v9
move/from16 v0, v24
if-ge v0, v9, :cond_53
const/16 v25, 0x0
const/16 v31, 0x0
const/16 v30, 0x0
const/16 v32, 0x0
const/16 v29, 0x0
move-object/from16 v0, v20
move/from16 v1, v24
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v33
invoke-virtual/range {v33 .. v33}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v35
:cond_d8
:goto_d8
invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_107
if-eqz v25, :cond_e2
move-object/from16 v4, v31
:cond_e2
invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_104
const-string/jumbo v9, "qzone"
move-object/from16 v0, v31
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_168
new-instance v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;
invoke-direct {v6}, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;-><init>()V
move-object/from16 v0, v29
iput-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->avatar:Ljava/lang/String;
move-object/from16 v0, v32
iput-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->nickname:Ljava/lang/String;
move-object/from16 v0, v30
iput-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->id:Ljava/lang/String;
:goto_104
:cond_104
add-int/lit8 v24, v24, 0x1
goto :goto_ba
:cond_107
invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v34
check-cast v34, Ljava/lang/String;
const-string/jumbo v9, "isLogin"
move-object/from16 v0, v34
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_122
const-string/jumbo v9, "isLogin"
move-object/from16 v0, v33
invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v25
goto :goto_d8
:cond_122
const-string/jumbo v9, "name"
move-object/from16 v0, v34
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_137
const-string/jumbo v9, "name"
move-object/from16 v0, v33
invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v31
goto :goto_d8
:cond_137
const-string/jumbo v9, "nickname"
move-object/from16 v0, v34
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_147
invoke-virtual/range {v33 .. v34}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v32
goto :goto_d8
:cond_147
const-string/jumbo v9, "face"
move-object/from16 v0, v34
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_157
invoke-virtual/range {v33 .. v34}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v29
goto :goto_d8
:cond_157
const-string/jumbo v9, "id"
move-object/from16 v0, v34
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_d8
invoke-virtual/range {v33 .. v34}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v30
goto/16 :goto_d8
:cond_168
const-string/jumbo v9, "sina"
move-object/from16 v0, v31
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_185
new-instance v5, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;
invoke-direct {v5}, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;-><init>()V
move-object/from16 v0, v29
iput-object v0, v5, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->avatar:Ljava/lang/String;
move-object/from16 v0, v32
iput-object v0, v5, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->nickname:Ljava/lang/String;
move-object/from16 v0, v30
iput-object v0, v5, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->id:Ljava/lang/String;
goto :goto_104
:cond_185
const-string/jumbo v9, "facebook"
move-object/from16 v0, v31
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_1a3
new-instance v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;
invoke-direct {v7}, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;-><init>()V
move-object/from16 v0, v29
iput-object v0, v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->avatar:Ljava/lang/String;
move-object/from16 v0, v32
iput-object v0, v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->nickname:Ljava/lang/String;
move-object/from16 v0, v30
iput-object v0, v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->id:Ljava/lang/String;
goto/16 :goto_104
:cond_1a3
const-string/jumbo v9, "twitter"
move-object/from16 v0, v31
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_104
new-instance v8, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;
invoke-direct {v8}, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;-><init>()V
move-object/from16 v0, v29
iput-object v0, v8, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->avatar:Ljava/lang/String;
move-object/from16 v0, v32
iput-object v0, v8, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->nickname:Ljava/lang/String;
move-object/from16 v0, v30
iput-object v0, v8, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->id:Ljava/lang/String;
goto/16 :goto_104
:cond_1c1
const-string/jumbo v9, "email"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_1d2
invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
goto/16 :goto_53
:cond_1d2
const-string/jumbo v9, "cdn"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_1e3
invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto/16 :goto_53
:cond_1e3
const-string/jumbo v9, "face"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_1f4
invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto/16 :goto_53
:cond_1f4
const-string/jumbo v9, "nickname"
move-object/from16 v0, v28
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_53
invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_202
.catch Lorg/json/JSONException; {:try_start_2e .. :try_end_202} :catch_72
move-result-object v13
goto/16 :goto_53
.end method
.method private static checkArgmentValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_12
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_12
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x0
:goto_13
return v0
:cond_14
const/4 v0, 0x1
goto :goto_13
.end method
.method private static createAndSaveUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;)V
.registers 15
new-instance v0, Lcom/pinguo/camera360/login/model/User$Info;
invoke-direct {v0}, Lcom/pinguo/camera360/login/model/User$Info;-><init>()V
iput-object p1, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
iput-object p2, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
iput-object p5, v0, Lcom/pinguo/camera360/login/model/User$Info;->email:Ljava/lang/String;
iput-object p6, v0, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;
iput-object p4, v0, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
iput-object p3, v0, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;
const-string/jumbo v2, ""
iput-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;
const-string/jumbo v2, ""
iput-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;
const/4 v2, 0x0
iput v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->forgetPass:I
const-wide/16 v2, 0x0
iput-wide v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->lastLoginTime:J
const-string/jumbo v2, ""
iput-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->language:Ljava/lang/String;
const-string/jumbo v2, ""
iput-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->birthday:Ljava/lang/String;
const-wide/16 v2, 0x0
iput-wide v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->regDateTime:J
const/4 v2, 0x0
iput v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->certificated:I
if-nez p7, :cond_3b
if-nez p8, :cond_3b
if-nez p9, :cond_3b
if-eqz p10, :cond_5a
:cond_3b
new-instance v2, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
invoke-direct {v2}, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;-><init>()V
iput-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
if-eqz p7, :cond_48
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
iput-object p7, v2, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->sina:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;
:cond_48
if-eqz p8, :cond_4e
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
iput-object p8, v2, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->qzone:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;
:cond_4e
if-eqz p9, :cond_54
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
iput-object p9, v2, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->facebook:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;
:cond_54
if-eqz p10, :cond_5a
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
iput-object p10, v2, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->twitter:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;
:cond_5a
new-instance v1, Lcom/pinguo/camera360/login/model/User;
invoke-direct {v1, p0, v0}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->save()V
return-void
.end method
.method private static processAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;)Ljava/lang/String;
.registers 10
const-string/jumbo v0, ""
const-string/jumbo v1, "http://"
invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_15
const-string/jumbo v1, "https://"
invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_43
:cond_15
move-object v0, p1
:goto_16
if-eqz p1, :cond_35
const-string/jumbo v1, ""
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_35
const-string/jumbo v1, "null"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_35
if-eqz p0, :cond_35
const-string/jumbo v1, ""
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
:cond_35
const-string/jumbo v1, "qzone"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_62
if-eqz p4, :cond_42
iget-object v0, p4, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->avatar:Ljava/lang/String;
:goto_42
:cond_42
return-object v0
:cond_43
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "?imageView/2/w/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x82
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_62
const-string/jumbo v1, "sina"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_70
if-eqz p3, :cond_42
iget-object v0, p3, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->avatar:Ljava/lang/String;
goto :goto_42
:cond_70
const-string/jumbo v1, "facebook"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_7e
if-eqz p5, :cond_42
iget-object v0, p5, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->avatar:Ljava/lang/String;
goto :goto_42
:cond_7e
const-string/jumbo v1, "twitter"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
if-eqz p6, :cond_42
iget-object v0, p6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->avatar:Ljava/lang/String;
goto :goto_42
.end method