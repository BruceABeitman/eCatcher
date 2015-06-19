.class public final Lcom/spotify/mobile/android/spotlets/browse/datasource/a/b;
.super Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;
.source "SourceFile"
.field private a:Landroid/content/res/Resources;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Landroid/content/res/Resources;)V
.registers 5
sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->b:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/b;->a:Landroid/content/res/Resources;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
const-string v0, "/v3/space/genres"
return-object v0
.end method
.method public final a(Lorg/json/JSONObject;)Ljava/util/List;
.registers 23
new-instance v16, Ljava/util/ArrayList;
invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
const-string v1, "items"
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v17
const/4 v1, 0x0
move v11, v1
:goto_f
invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v11, v1, :cond_e0
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "genre"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v5
const-string v1, "id"
invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const-string v1, "templateName"
invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v1, "name"
invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "iconUrl"
invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
const-string v2, "iconImageUrl"
invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "moodImageUrl"
invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v6, v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/b;->a:Landroid/content/res/Resources;
invoke-static {v4, v6}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
move-result-object v6
if-eqz v6, :cond_e1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_63
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_63
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;
move-result-object v1
:cond_63
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_77
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->g()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_77
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->g()Ljava/lang/String;
move-result-object v2
:cond_77
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_e1
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_e1
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h()Ljava/lang/String;
move-result-object v3
move-object v12, v3
move-object v13, v2
move-object v14, v1
:goto_8e
const-string v1, "playlistUri"
invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
const-string v1, "subGenres"
invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v20
if-eqz v20, :cond_c9
const/4 v1, 0x0
move v15, v1
:goto_9e
invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v15, v1, :cond_c9
move-object/from16 v0, v20
invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "key"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v2, "name"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
const/4 v2, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
invoke-direct/range {v1 .. v9}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v16
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v15, 0x1
move v15, v1
goto :goto_9e
:cond_c9
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
const/4 v5, 0x0
move-object/from16 v3, v18
move-object v6, v14
move-object/from16 v7, v19
move-object v8, v13
move-object v9, v12
invoke-direct/range {v2 .. v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v16
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v11, 0x1
move v11, v1
goto/16 :goto_f
:cond_e0
return-object v16
:cond_e1
move-object v12, v3
move-object v13, v2
move-object v14, v1
goto :goto_8e
.end method