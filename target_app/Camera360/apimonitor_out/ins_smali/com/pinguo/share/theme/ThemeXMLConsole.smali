.class public Lcom/pinguo/share/theme/ThemeXMLConsole;
.super Ljava/lang/Object;
.source "ThemeXMLConsole.java"
.field private static final DEFAULT_ID:I = 0x6e
.field private mContext:Landroid/content/Context;
.field private mPrev:Lcom/pinguo/share/theme/ThemeXMLStruct;
.field private strNewTemplateString:Ljava/lang/String;
.field private strOrgTemplateString:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->mPrev:Lcom/pinguo/share/theme/ThemeXMLStruct;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/theme/ThemeXMLConsole;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->mContext:Landroid/content/Context;
return-object v0
.end method
.method public static getActivityJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.registers 11
const/4 v6, 0x0
:try_start_1
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "list"
invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v3, 0x0
:goto_e
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v8
if-lt v3, v8, :cond_15
:goto_14
return-object v6
:cond_15
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
const-string/jumbo v8, "json"
invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v8, "style_id"
invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_32
move-result v8
if-eqz v8, :cond_2f
move-object v6, v1
goto :goto_14
:cond_2f
add-int/lit8 v3, v3, 0x1
goto :goto_e
:catch_32
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_14
.end method
.method public static getPushDefault()Ljava/lang/String;
.registers 5
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/theme_def"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25
move-result-object v1
:goto_24
return-object v1
:catch_25
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_24
.end method
.method public static getSelect()Ljava/lang/String;
.registers 5
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/theme_sel"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25
move-result-object v1
:goto_24
return-object v1
:catch_25
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_24
.end method
.method public static getStructForStyleId(Ljava/util/List;Ljava/lang/String;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 6
const/4 v2, 0x0
if-eqz p0, :cond_d
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_e
:goto_d
:cond_d
return-object v2
:cond_e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v3
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7
move-object v2, v1
goto :goto_d
.end method
.method public static isStyeIdIn(Ljava/util/List;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getStructForStyleId(Ljava/util/List;Ljava/lang/String;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v1
if-eqz v1, :cond_8
const/4 v0, 0x1
:cond_8
return v0
.end method
.method public static loadJSONFile()Ljava/util/List;
.registers 1
sget-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static loadJSONFile(Ljava/lang/String;)Ljava/util/List;
.registers 27
invoke-static/range {p0 .. p0}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
new-instance v16, Ljava/util/ArrayList;
invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
const/4 v10, 0x0
:try_start_a
new-instance v7, Ljava/io/File;
invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
:try_end_12
.catchall {:try_start_a .. :try_end_12} :catchall_1f3
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_12} :catch_20e
.catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_12} :catch_20c
.catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_1e2
move-result v23
if-nez v23, :cond_20
if-eqz v10, :cond_1a
:try_start_17
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_1a
.catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b
:goto_1a
:cond_1a
return-object v16
:catch_1b
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1a
:cond_20
:try_start_20
new-instance v11, Ljava/io/FileInputStream;
invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_25
.catchall {:try_start_20 .. :try_end_25} :catchall_1f3
.catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_20e
.catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_25} :catch_20c
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_1e2
const/16 v23, 0x2000
:try_start_27
move/from16 v0, v23
new-array v4, v0, [B
const/16 v18, 0x0
new-instance v20, Ljava/lang/StringBuffer;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V
:goto_32
invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I
move-result v18
const/16 v23, -0x1
move/from16 v0, v18
move/from16 v1, v23
if-ne v0, v1, :cond_82
new-instance v23, Ljava/lang/StringBuilder;
const-string/jumbo v24, "{\"data\":"
invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string/jumbo v24, "}"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
new-instance v23, Lorg/json/JSONObject;
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v24, "data"
invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v12
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v17, 0x0
const/4 v9, 0x0
invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
:try_end_76
.catchall {:try_start_27 .. :try_end_76} :catchall_206
.catch Lorg/json/JSONException; {:try_start_27 .. :try_end_76} :catch_9c
.catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_76} :catch_1d0
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_76} :catch_209
move-result v19
:goto_77
move/from16 v0, v19
if-lt v9, v0, :cond_ae
if-eqz v11, :cond_203
:try_start_7d
invoke-virtual {v11}, Ljava/io/InputStream;->close()V
:try_end_80
.catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_1ff
move-object v10, v11
goto :goto_1a
:cond_82
:try_start_82
new-instance v23, Ljava/lang/String;
const/16 v24, 0x0
const-string/jumbo v25, "UTF-8"
move-object/from16 v0, v23
move/from16 v1, v24
move/from16 v2, v18
move-object/from16 v3, v25
invoke-direct {v0, v4, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_9b
.catchall {:try_start_82 .. :try_end_9b} :catchall_206
.catch Lorg/json/JSONException; {:try_start_82 .. :try_end_9b} :catch_9c
.catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_9b} :catch_1d0
.catch Ljava/io/IOException; {:try_start_82 .. :try_end_9b} :catch_209
goto :goto_32
:catch_9c
move-exception v6
move-object v10, v11
:goto_9e
:try_start_9e
invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
:try_end_a1
.catchall {:try_start_9e .. :try_end_a1} :catchall_1f3
if-eqz v10, :cond_1a
:try_start_a3
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_a6
.catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a8
goto/16 :goto_1a
:catch_a8
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_1a
:cond_ae
:try_start_ae
invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v13
new-instance v17, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-direct/range {v17 .. v17}, Lcom/pinguo/share/theme/ThemeXMLStruct;-><init>()V
const-string/jumbo v23, "id"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v21
move-object/from16 v0, v17
move/from16 v1, v21
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setId(I)V
const-string/jumbo v23, "url_prefix"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUrlPrefix(Ljava/lang/String;)V
const-string/jumbo v23, "small"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setSmall(Ljava/lang/String;)V
const-string/jumbo v23, "name"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTitle(Ljava/lang/String;)V
const-string/jumbo v23, "preview"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v14
const/16 v23, 0x0
move/from16 v0, v23
invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v15
const-string/jumbo v23, "name"
move-object/from16 v0, v23
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewName(Ljava/lang/String;)V
const-string/jumbo v23, "url"
move-object/from16 v0, v23
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewUrl(Ljava/lang/String;)V
const-string/jumbo v23, "activity_id"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v23
move-object/from16 v0, v17
move/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setActivity(I)V
const-string/jumbo v23, "tag"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTag(Ljava/lang/String;)V
const-string/jumbo v23, "default"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, v17
invoke-virtual {v0, v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDefault(Ljava/lang/String;)V
const-string/jumbo v23, "update_time"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUpdate(Ljava/lang/String;)V
:try_end_17e
.catchall {:try_start_ae .. :try_end_17e} :catchall_206
.catch Lorg/json/JSONException; {:try_start_ae .. :try_end_17e} :catch_9c
.catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_17e} :catch_1d0
.catch Ljava/io/IOException; {:try_start_ae .. :try_end_17e} :catch_209
:try_start_17e
const-string/jumbo v23, "description"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDescription(Ljava/lang/String;)V
const-string/jumbo v23, "content"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_1a9
const-string/jumbo v23, "content"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setContent(Ljava/lang/String;)V
:cond_1a9
const-string/jumbo v23, "push"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_1c4
const-string/jumbo v23, "push"
move-object/from16 v0, v23
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPush(Ljava/lang/String;)V
:try_end_1c4
.catchall {:try_start_17e .. :try_end_1c4} :catchall_206
.catch Ljava/lang/Exception; {:try_start_17e .. :try_end_1c4} :catch_1cb
.catch Lorg/json/JSONException; {:try_start_17e .. :try_end_1c4} :catch_9c
.catch Ljava/io/FileNotFoundException; {:try_start_17e .. :try_end_1c4} :catch_1d0
.catch Ljava/io/IOException; {:try_start_17e .. :try_end_1c4} :catch_209
:try_start_1c4
:goto_1c4
:cond_1c4
invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v9, v9, 0x1
goto/16 :goto_77
:catch_1cb
move-exception v6
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
:try_end_1cf
.catchall {:try_start_1c4 .. :try_end_1cf} :catchall_206
.catch Lorg/json/JSONException; {:try_start_1c4 .. :try_end_1cf} :catch_9c
.catch Ljava/io/FileNotFoundException; {:try_start_1c4 .. :try_end_1cf} :catch_1d0
.catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1cf} :catch_209
goto :goto_1c4
:catch_1d0
move-exception v6
move-object v10, v11
:goto_1d2
:try_start_1d2
invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_1d5
.catchall {:try_start_1d2 .. :try_end_1d5} :catchall_1f3
if-eqz v10, :cond_1a
:try_start_1d7
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_1da
.catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1dc
goto/16 :goto_1a
:catch_1dc
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_1a
:catch_1e2
move-exception v6
:try_start_1e3
:goto_1e3
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
:try_end_1e6
.catchall {:try_start_1e3 .. :try_end_1e6} :catchall_1f3
if-eqz v10, :cond_1a
:try_start_1e8
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_1eb
.catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_1ed
goto/16 :goto_1a
:catch_1ed
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_1a
:catchall_1f3
move-exception v23
:goto_1f4
if-eqz v10, :cond_1f9
:try_start_1f6
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_1f9
.catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_1fa
:goto_1f9
:cond_1f9
throw v23
:catch_1fa
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1f9
:catch_1ff
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
:cond_203
move-object v10, v11
goto/16 :goto_1a
:catchall_206
move-exception v23
move-object v10, v11
goto :goto_1f4
:catch_209
move-exception v6
move-object v10, v11
goto :goto_1e3
:catch_20c
move-exception v6
goto :goto_1d2
:catch_20e
move-exception v6
goto/16 :goto_9e
.end method
.method public static removePushTheme()V
.registers 3
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/theme_def"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_30
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_30
const-string/jumbo v1, ""
const-string/jumbo v2, "Delete file failed!"
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
return-void
.end method
.method public static removeSelect()V
.registers 3
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/theme_sel"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_30
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_30
const-string/jumbo v1, ""
const-string/jumbo v2, "Delete file failed!"
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
return-void
.end method
.method public static setPushDefault(I)V
.registers 9
new-instance v1, Ljava/io/File;
sget-object v5, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_1c
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v5
if-nez v5, :cond_1c
const-string/jumbo v5, ""
const-string/jumbo v6, "Create dir failed!"
invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_1c
const/4 v2, 0x0
:try_start_1d
new-instance v3, Ljava/io/FileOutputStream;
new-instance v5, Ljava/lang/StringBuilder;
sget-object v6, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/theme_def"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_38
:try_end_38
.catchall {:try_start_1d .. :try_end_38} :catchall_5a
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_38} :catch_4f
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_48
.catchall {:try_start_38 .. :try_end_48} :catchall_68
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_6b
if-eqz v3, :cond_6e
:try_start_4a
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:goto_4d
:try_end_4d
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_66
const/4 v2, 0x0
:goto_4e
:cond_4e
return-void
:catch_4f
move-exception v0
:goto_50
:try_start_50
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_53
.catchall {:try_start_50 .. :try_end_53} :catchall_5a
if-eqz v2, :cond_4e
:try_start_55
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:goto_58
:try_end_58
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_62
const/4 v2, 0x0
goto :goto_4e
:catchall_5a
move-exception v5
:goto_5b
if-eqz v2, :cond_61
:try_start_5d
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_60
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_64
:goto_60
const/4 v2, 0x0
:cond_61
throw v5
:catch_62
move-exception v5
goto :goto_58
:catch_64
move-exception v6
goto :goto_60
:catch_66
move-exception v5
goto :goto_4d
:catchall_68
move-exception v5
move-object v2, v3
goto :goto_5b
:catch_6b
move-exception v0
move-object v2, v3
goto :goto_50
:cond_6e
move-object v2, v3
goto :goto_4e
.end method
.method public static setSelect(I)V
.registers 9
new-instance v1, Ljava/io/File;
sget-object v5, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_1c
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v5
if-nez v5, :cond_1c
const-string/jumbo v5, ""
const-string/jumbo v6, "Create dir failed!"
invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_1c
const/4 v2, 0x0
:try_start_1d
new-instance v3, Ljava/io/FileOutputStream;
new-instance v5, Ljava/lang/StringBuilder;
sget-object v6, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/theme_sel"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_38
:try_end_38
.catchall {:try_start_1d .. :try_end_38} :catchall_5a
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_38} :catch_4f
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_48
.catchall {:try_start_38 .. :try_end_48} :catchall_68
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_6b
if-eqz v3, :cond_6e
:try_start_4a
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:goto_4d
:try_end_4d
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_66
const/4 v2, 0x0
:goto_4e
:cond_4e
return-void
:catch_4f
move-exception v0
:goto_50
:try_start_50
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_53
.catchall {:try_start_50 .. :try_end_53} :catchall_5a
if-eqz v2, :cond_4e
:try_start_55
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:goto_58
:try_end_58
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_62
const/4 v2, 0x0
goto :goto_4e
:catchall_5a
move-exception v5
:goto_5b
if-eqz v2, :cond_61
:try_start_5d
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_60
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_64
:goto_60
const/4 v2, 0x0
:cond_61
throw v5
:catch_62
move-exception v5
goto :goto_58
:catch_64
move-exception v6
goto :goto_60
:catch_66
move-exception v5
goto :goto_4d
:catchall_68
move-exception v5
move-object v2, v3
goto :goto_5b
:catch_6b
move-exception v0
move-object v2, v3
goto :goto_50
:cond_6e
move-object v2, v3
goto :goto_4e
.end method
.method public getDefaultInformation(Ljava/lang/String;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 8
const/4 v3, 0x0
invoke-virtual {p0, p1, v3}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile(Ljava/lang/String;I)Ljava/util/List;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_11
:goto_10
return-object v2
:cond_11
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "0"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_a
move-object v2, v0
goto :goto_10
.end method
.method public getDefaultInformation(Ljava/util/List;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 7
const/4 v1, 0x0
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_5
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_c
:goto_b
return-object v1
:cond_c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "0"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_5
move-object v1, v0
goto :goto_b
.end method
.method public getFirstInformation(Landroid/content/Context;Lcom/pinguo/share/theme/IShowContent;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 20
const/4 v13, 0x0
const/4 v10, 0x0
sget-object v14, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
invoke-static {v14}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v12
if-eqz v12, :cond_10
invoke-interface {v12}, Ljava/util/List;->size()I
move-result v14
if-nez v14, :cond_12
:cond_10
move-object v14, v13
:goto_11
return-object v14
:cond_12
const-string/jumbo v14, ""
move-object/from16 v0, p0
iput-object v14, v0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strOrgTemplateString:Ljava/lang/String;
invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_1d
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v15
if-nez v15, :cond_a9
new-instance v4, Ljava/io/File;
new-instance v14, Ljava/lang/StringBuilder;
sget-object v15, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v15, "/theme_sel"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v14
if-eqz v14, :cond_78
const/4 v8, 0x0
:try_start_45
new-instance v9, Ljava/io/FileInputStream;
invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_4a
.catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4a} :catch_112
move-object v8, v9
:goto_4b
const/16 v14, 0x400
new-array v2, v14, [B
const/4 v11, 0x0
if-eqz v8, :cond_56
:try_start_52
invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I
:try_end_55
.catchall {:try_start_52 .. :try_end_55} :catchall_129
.catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_118
move-result v11
:cond_56
if-eqz v8, :cond_5b
:try_start_58
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
:try_start_5b
:try_end_5b
.catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_135
:goto_5b
:cond_5b
new-instance v14, Ljava/lang/String;
const/4 v15, 0x0
const-string/jumbo v16, "UTF-8"
move-object/from16 v0, v16
invoke-direct {v14, v2, v15, v11, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v7
if-nez v11, :cond_6e
const/16 v7, 0x6e
:cond_6e
invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:cond_72
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
:try_end_75
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_75} :catch_162
move-result v15
if-nez v15, :cond_13b
:cond_78
:goto_78
if-nez v13, :cond_84
invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:cond_7e
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v15
if-nez v15, :cond_168
:goto_84
:cond_84
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/share/theme/ThemeXMLConsole;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iput-object v13, v0, Lcom/pinguo/share/theme/ThemeXMLConsole;->mPrev:Lcom/pinguo/share/theme/ThemeXMLStruct;
if-nez v13, :cond_9a
invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:cond_94
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v15
if-nez v15, :cond_17b
:goto_9a
:cond_9a
new-instance v14, Lcom/pinguo/share/theme/ThemeXMLConsole$1;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Lcom/pinguo/share/theme/ThemeXMLConsole$1;-><init>(Lcom/pinguo/share/theme/ThemeXMLConsole;)V
invoke-virtual {v14}, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->start()V
if-eqz v10, :cond_18e
const/4 v14, 0x0
goto/16 :goto_11
:cond_a9
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/share/theme/ThemeXMLStruct;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strOrgTemplateString:Ljava/lang/String;
new-instance v16, Ljava/lang/StringBuilder;
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
move-object/from16 v0, v16
invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v15
move-object/from16 v0, v16
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTitle()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewName()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getActivity()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTag()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strOrgTemplateString:Ljava/lang/String;
goto/16 :goto_1d
:catch_112
move-exception v3
invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto/16 :goto_4b
:catch_118
move-exception v3
:try_start_119
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
:try_end_11c
.catchall {:try_start_119 .. :try_end_11c} :catchall_129
if-eqz v8, :cond_5b
:try_start_11e
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
:try_end_121
.catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_123
goto/16 :goto_5b
:catch_123
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_5b
:catchall_129
move-exception v14
if-eqz v8, :cond_12f
:try_start_12c
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
:goto_12f
:cond_12f
:try_end_12f
.catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_130
throw v14
:catch_130
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_12f
:catch_135
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_5b
:cond_13b
:try_start_13b
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPush()Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_159
invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPush()Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z
move-result v15
if-nez v15, :cond_159
if-eqz p2, :cond_159
move-object/from16 v0, p2
invoke-interface {v0, v6}, Lcom/pinguo/share/theme/IShowContent;->show(Lcom/pinguo/share/theme/ThemeXMLStruct;)Z
move-result v10
:cond_159
invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
:try_end_15c
.catch Ljava/lang/Exception; {:try_start_13b .. :try_end_15c} :catch_162
move-result v15
if-ne v7, v15, :cond_72
move-object v13, v6
goto/16 :goto_78
:catch_162
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_78
:cond_168
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v15
const/16 v16, 0x6e
move/from16 v0, v16
if-ne v15, v0, :cond_7e
move-object v13, v6
goto/16 :goto_84
:cond_17b
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v15
const/16 v16, 0x6e
move/from16 v0, v16
if-ne v15, v0, :cond_94
move-object v13, v6
goto/16 :goto_9a
:cond_18e
move-object v14, v13
goto/16 :goto_11
.end method
.method public loadJSONFile(Ljava/lang/String;I)Ljava/util/List;
.registers 17
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
:try_start_5
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "{\"data\":"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "}"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
new-instance v12, Lorg/json/JSONObject;
invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v13, "data"
invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v8, 0x0
const/4 v2, 0x0
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v9
:goto_35
if-lt v2, v9, :cond_38
:goto_37
return-object v7
:cond_38
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
new-instance v8, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-direct {v8}, Lcom/pinguo/share/theme/ThemeXMLStruct;-><init>()V
const-string/jumbo v12, "id"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v10
invoke-virtual {v8, v10}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setId(I)V
const-string/jumbo v12, "url_prefix"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUrlPrefix(Ljava/lang/String;)V
const-string/jumbo v12, "small"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setSmall(Ljava/lang/String;)V
const-string/jumbo v12, "name"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTitle(Ljava/lang/String;)V
const-string/jumbo v12, "preview"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
const/4 v12, 0x0
invoke-virtual {v5, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v12, "name"
invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewName(Ljava/lang/String;)V
const-string/jumbo v12, "url"
invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewUrl(Ljava/lang/String;)V
const-string/jumbo v12, "activity_id"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setActivity(I)V
const-string/jumbo v12, "tag"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTag(Ljava/lang/String;)V
const-string/jumbo v12, "default"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDefault(Ljava/lang/String;)V
const-string/jumbo v12, "update_time"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUpdate(Ljava/lang/String;)V
:try_start_c9
:try_end_c9
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c9} :catch_105
const-string/jumbo v12, "description"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDescription(Ljava/lang/String;)V
const-string/jumbo v12, "content"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_e6
const-string/jumbo v12, "content"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setContent(Ljava/lang/String;)V
:cond_e6
const-string/jumbo v12, "push"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_f9
const-string/jumbo v12, "push"
invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v8, v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPush(Ljava/lang/String;)V
:goto_f9
:try_end_f9
.catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_f9} :catch_100
.catch Lorg/json/JSONException; {:try_start_c9 .. :try_end_f9} :catch_105
:try_start_f9
:cond_f9
invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto/16 :goto_35
:catch_100
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_104
.catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_104} :catch_105
goto :goto_f9
:catch_105
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto/16 :goto_37
.end method
.method public saveJSONFile(Ljava/lang/String;Ljava/lang/String;)V
.registers 11
:try_start_0
invoke-static {p1}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v2, Ljava/io/File;
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v6
if-nez v6, :cond_3e
const-string/jumbo v6, "/"
invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v4
const/4 v6, 0x0
invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
new-instance v6, Ljava/io/File;
invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
move-result v6
if-nez v6, :cond_2f
const-string/jumbo v6, ""
const-string/jumbo v7, "Create dir failed!"
invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_2f
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
move-result v6
if-nez v6, :cond_3e
const-string/jumbo v6, ""
const-string/jumbo v7, "Create new file failed!"
invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_3e
new-instance v5, Ljava/io/FileOutputStream;
invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const-string/jumbo v6, "UTF-8"
invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
:try_end_53
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_53} :catch_54
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_59
:goto_53
return-void
:catch_54
move-exception v1
invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto :goto_53
:catch_59
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_53
.end method
.method public uploadModel(Landroid/content/Context;Ljava/lang/String;Z)Z
.registers 13
const/4 v2, 0x0
invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile()Ljava/util/List;
move-result-object v6
invoke-static {v6, p2}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getStructForStyleId(Ljava/util/List;Ljava/lang/String;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v5
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
if-nez v5, :cond_18
invoke-virtual {p0, p1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModelInfo(Landroid/content/Context;)Ljava/util/List;
move-result-object v3
invoke-static {v3, p2}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getStructForStyleId(Ljava/util/List;Ljava/lang/String;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v5
:cond_18
if-eqz v5, :cond_1d
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1d
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v6
if-eqz v6, :cond_88
if-eqz p3, :cond_29
const/4 v6, 0x1
invoke-virtual {p0, v4, v6}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadPhotoes(Ljava/util/List;Z)V
:cond_29
const/4 v6, 0x0
invoke-virtual {p0, v4, v6}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadPhotoes(Ljava/util/List;Z)V
new-instance v6, Ljava/io/File;
new-instance v7, Ljava/lang/StringBuilder;
sget-object v8, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v1
if-eqz p3, :cond_95
if-eqz v1, :cond_93
new-instance v6, Ljava/io/File;
new-instance v7, Ljava/lang/StringBuilder;
sget-object v8, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v0
move v2, v0
:cond_88
:goto_88
if-nez p3, :cond_92
new-instance v6, Lcom/pinguo/share/theme/ThemeXMLConsole$2;
invoke-direct {v6, p0}, Lcom/pinguo/share/theme/ThemeXMLConsole$2;-><init>(Lcom/pinguo/share/theme/ThemeXMLConsole;)V
invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLConsole$2;->start()V
:cond_92
return v2
:cond_93
move v2, v1
goto :goto_88
:cond_95
move v2, v1
goto :goto_88
.end method
.method public uploadModelInfo(Landroid/content/Context;)Ljava/util/List;
.registers 10
const/4 v7, 0x1
new-instance v3, Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-direct {v3, p1}, Lcom/pinguo/share/theme/ThemeNetConsole;-><init>(Landroid/content/Context;)V
invoke-virtual {v3}, Lcom/pinguo/share/theme/ThemeNetConsole;->getNetDefaultInformation()Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v1
sget-object v4, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v2
const-string/jumbo v4, ""
iput-object v4, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strNewTemplateString:Ljava/lang/String;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_19
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_2b
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strNewTemplateString:Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strOrgTemplateString:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_8b
const/4 v2, 0x0
:goto_2a
:cond_2a
return-object v2
:cond_2b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/theme/ThemeXMLStruct;
iget-object v5, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strNewTemplateString:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v5
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTitle()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getActivity()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTag()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->strNewTemplateString:Ljava/lang/String;
goto :goto_19
:cond_8b
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->mPrev:Lcom/pinguo/share/theme/ThemeXMLStruct;
if-eqz v4, :cond_bc
if-eqz v1, :cond_ae
invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v4
iget-object v5, p0, Lcom/pinguo/share/theme/ThemeXMLConsole;->mPrev:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v5
if-eq v4, v5, :cond_ae
invoke-virtual {v3, v1}, Lcom/pinguo/share/theme/ThemeNetConsole;->simpleDownload(Lcom/pinguo/share/theme/ThemeXMLStruct;)I
move-result v4
if-ne v4, v7, :cond_2a
const-string/jumbo v4, "E"
const-string/jumbo v5, "Theme need update"
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2a
:cond_ae
invoke-virtual {v3, v1}, Lcom/pinguo/share/theme/ThemeNetConsole;->simpleDownload(Lcom/pinguo/share/theme/ThemeXMLStruct;)I
const-string/jumbo v4, "E"
const-string/jumbo v5, "Theme not need update"
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2a
:cond_bc
invoke-virtual {v3, v1}, Lcom/pinguo/share/theme/ThemeNetConsole;->simpleDownload(Lcom/pinguo/share/theme/ThemeXMLStruct;)I
move-result v4
if-ne v4, v7, :cond_2a
const-string/jumbo v4, "E"
const-string/jumbo v5, "Theme need update"
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2a
.end method
.method public uploadPhotoes(Ljava/util/List;Z)V
.registers 21
const/4 v5, 0x0
:goto_1
invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
move-result v15
if-lt v5, v15, :cond_8
return-void
:cond_8
move-object/from16 v0, p1
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/share/theme/ThemeXMLStruct;
const/4 v14, 0x0
const/4 v13, 0x0
if-eqz p2, :cond_b2
new-instance v15, Ljava/lang/StringBuilder;
invoke-virtual {v7}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
new-instance v15, Ljava/lang/StringBuilder;
sget-object v16, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v16, "/"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v7}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
:goto_4f
sget-object v16, Lcom/pinguo/share/theme/ThemeNetConsole;->lock:[B
monitor-enter v16
:try_start_52
new-instance v10, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const/16 v15, 0x7530
invoke-static {v10, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
const/16 v15, 0x7530
invoke-static {v10, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v2, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
new-instance v11, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v11, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v12
invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v15
invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v6
new-instance v4, Ljava/io/File;
invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v15
if-nez v15, :cond_ef
invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
move-result v15
if-nez v15, :cond_93
const-string/jumbo v15, ""
const-string/jumbo v17, "Create new file failed!"
move-object/from16 v0, v17
invoke-static {v15, v0}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_93
new-instance v9, Ljava/io/FileOutputStream;
invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v15, 0x1000
new-array v1, v15, [B
const/4 v8, -0x1
:goto_9d
invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I
move-result v8
const/4 v15, -0x1
if-ne v8, v15, :cond_f4
invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:try_start_ad
:try_end_ad
.catchall {:try_start_52 .. :try_end_ad} :catchall_f1
.catch Ljava/io/IOException; {:try_start_52 .. :try_end_ad} :catch_f9
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_ad} :catch_fe
:goto_ad
monitor-exit v16
:try_end_ae
.catchall {:try_start_ad .. :try_end_ae} :catchall_f1
:goto_ae
add-int/lit8 v5, v5, 0x1
goto/16 :goto_1
:cond_b2
new-instance v15, Ljava/lang/StringBuilder;
sget-object v16, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v16, "/"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v7}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
new-instance v15, Ljava/lang/StringBuilder;
invoke-virtual {v7}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
goto/16 :goto_4f
:cond_ef
:try_start_ef
monitor-exit v16
goto :goto_ae
:catchall_f1
move-exception v15
monitor-exit v16
:try_end_f3
.catchall {:try_start_ef .. :try_end_f3} :catchall_f1
throw v15
:cond_f4
const/4 v15, 0x0
:try_start_f5
invoke-virtual {v9, v1, v15, v8}, Ljava/io/OutputStream;->write([BII)V
:try_end_f8
.catchall {:try_start_f5 .. :try_end_f8} :catchall_f1
.catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9
.catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_fe
goto :goto_9d
:catch_f9
move-exception v3
:try_start_fa
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_ad
:catch_fe
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
:try_end_102
.catchall {:try_start_fa .. :try_end_102} :catchall_f1
goto :goto_ad
.end method