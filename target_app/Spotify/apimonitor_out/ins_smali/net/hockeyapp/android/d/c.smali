.class public final Lnet/hockeyapp/android/d/c;
.super Ljava/lang/Object;
.source "SourceFile"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lnet/hockeyapp/android/d/c;-><init>()V
return-void
.end method
.method public static a()Lnet/hockeyapp/android/d/c;
.registers 1
sget-object v0, Lnet/hockeyapp/android/d/d;->a:Lnet/hockeyapp/android/d/c;
return-object v0
.end method
.method public static a(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
.registers 25
const/4 v3, 0x0
if-eqz p0, :cond_1b7
:try_start_3
new-instance v5, Lorg/json/JSONObject;
move-object/from16 v0, p0
invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "feedback"
invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
new-instance v7, Lnet/hockeyapp/android/objects/Feedback;
invoke-direct {v7}, Lnet/hockeyapp/android/objects/Feedback;-><init>()V
const-string v2, "messages"
invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
const/4 v2, 0x0
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
move-result v4
if-lez v4, :cond_137
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v4, 0x0
:goto_28
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
move-result v9
if-ge v4, v9, :cond_137
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v9
const-string v10, "subject"
invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "text"
invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v11
const-string v12, "oem"
invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v12
const-string v13, "model"
invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v13
const-string v14, "os_version"
invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v14
const-string v15, "created_at"
invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v15
const-string v16, "id"
invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v15
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v16
const-string v17, "token"
invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v16
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v17
const-string v18, "via"
invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v17
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v18
const-string v19, "user_string"
invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v18
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v19
const-string v20, "clean_text"
invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v19
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string v21, "name"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v21
const-string v22, "app_id"
invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v21
new-instance v22, Lnet/hockeyapp/android/objects/FeedbackMessage;
invoke-direct/range {v22 .. v22}, Lnet/hockeyapp/android/objects/FeedbackMessage;-><init>()V
move-object/from16 v0, v22
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->k(Ljava/lang/String;)V
move-object/from16 v0, v22
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->i(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v14}, Lnet/hockeyapp/android/objects/FeedbackMessage;->f(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v15}, Lnet/hockeyapp/android/objects/FeedbackMessage;->a(I)V
move-object/from16 v0, v22
invoke-virtual {v0, v12}, Lnet/hockeyapp/android/objects/FeedbackMessage;->d(Ljava/lang/String;)V
move-object/from16 v0, v22
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->j(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v11}, Lnet/hockeyapp/android/objects/FeedbackMessage;->c(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Lnet/hockeyapp/android/objects/FeedbackMessage;->e(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v9}, Lnet/hockeyapp/android/objects/FeedbackMessage;->a(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v10}, Lnet/hockeyapp/android/objects/FeedbackMessage;->b(Ljava/lang/String;)V
move-object/from16 v0, v22
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->g(Ljava/lang/String;)V
move-object/from16 v0, v22
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->h(Ljava/lang/String;)V
move-object/from16 v0, v22
move/from16 v1, v17
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->b(I)V
move-object/from16 v0, v22
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto/16 :goto_28
:cond_137
invoke-virtual {v7, v2}, Lnet/hockeyapp/android/objects/Feedback;->a(Ljava/util/ArrayList;)V
:try_end_13a
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_13a} :catch_192
:try_start_13a
const-string v2, "name"
invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v7, v2}, Lnet/hockeyapp/android/objects/Feedback;->a(Ljava/lang/String;)V
:try_end_147
.catch Lorg/json/JSONException; {:try_start_13a .. :try_end_147} :catch_18d
:goto_147
:try_start_147
const-string v2, "email"
invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v7, v2}, Lnet/hockeyapp/android/objects/Feedback;->b(Ljava/lang/String;)V
:goto_154
:try_start_154
:try_end_154
.catch Lorg/json/JSONException; {:try_start_147 .. :try_end_154} :catch_19c
const-string v2, "id"
invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {v7, v2}, Lnet/hockeyapp/android/objects/Feedback;->a(I)V
:try_end_15d
.catch Lorg/json/JSONException; {:try_start_154 .. :try_end_15d} :catch_1a1
:goto_15d
:try_start_15d
const-string v2, "created_at"
invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v7, v2}, Lnet/hockeyapp/android/objects/Feedback;->c(Ljava/lang/String;)V
:try_start_16a
:goto_16a
:try_end_16a
.catch Lorg/json/JSONException; {:try_start_15d .. :try_end_16a} :catch_1a6
new-instance v2, Lnet/hockeyapp/android/objects/FeedbackResponse;
invoke-direct {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;-><init>()V
:try_start_16f
:try_end_16f
.catch Lorg/json/JSONException; {:try_start_16a .. :try_end_16f} :catch_192
invoke-virtual {v2, v7}, Lnet/hockeyapp/android/objects/FeedbackResponse;->a(Lnet/hockeyapp/android/objects/Feedback;)V
:try_start_172
:try_end_172
.catch Lorg/json/JSONException; {:try_start_16f .. :try_end_172} :catch_1b0
const-string v3, "status"
invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lnet/hockeyapp/android/objects/FeedbackResponse;->a(Ljava/lang/String;)V
:goto_17f
:try_end_17f
.catch Lorg/json/JSONException; {:try_start_172 .. :try_end_17f} :catch_1ab
:try_start_17f
const-string v3, "token"
invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lnet/hockeyapp/android/objects/FeedbackResponse;->b(Ljava/lang/String;)V
:try_end_18c
.catch Lorg/json/JSONException; {:try_start_17f .. :try_end_18c} :catch_1b2
:goto_18c
return-object v2
:catch_18d
move-exception v2
:try_start_18e
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_191
.catch Lorg/json/JSONException; {:try_start_18e .. :try_end_191} :catch_192
goto :goto_147
:catch_192
move-exception v2
move-object/from16 v23, v2
move-object v2, v3
move-object/from16 v3, v23
:goto_198
invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_18c
:catch_19c
move-exception v2
:try_start_19d
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_154
:catch_1a1
move-exception v2
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_15d
:catch_1a6
move-exception v2
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_1aa
.catch Lorg/json/JSONException; {:try_start_19d .. :try_end_1aa} :catch_192
goto :goto_16a
:catch_1ab
move-exception v3
:try_start_1ac
invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_17f
:catch_1b0
move-exception v3
goto :goto_198
:catch_1b2
move-exception v3
invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
:try_end_1b6
.catch Lorg/json/JSONException; {:try_start_1ac .. :try_end_1b6} :catch_1b0
goto :goto_18c
:cond_1b7
move-object v2, v3
goto :goto_18c
.end method