.class  Lcom/pinguo/camera360/gallery/GalleryActivity$2;
.super Ljava/lang/Thread;
.source "GalleryActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
.method constructor <init>(Lcom/pinguo/camera360/gallery/GalleryActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$2;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/GalleryActivity$2;)Lcom/pinguo/camera360/gallery/GalleryActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$2;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
return-object v0
.end method
.method public run()V
.registers 33
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/GalleryActivity$2;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string/jumbo v5, "eftAppendix is not null"
sget-object v3, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/String;
const/4 v7, 0x0
const-string/jumbo v8, "id"
aput-object v8, v4, v7
const/4 v7, 0x1
const-string/jumbo v8, "eftAppendix"
aput-object v8, v4, v7
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v15
if-nez v15, :cond_25
:goto_24
return-void
:cond_25
new-instance v30, Lorg/json/JSONObject;
invoke-direct/range {v30 .. v30}, Lorg/json/JSONObject;-><init>()V
new-instance v12, Lorg/json/JSONObject;
invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
new-instance v24, Ljava/util/ArrayList;
invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
:cond_39
:try_start_39
:goto_39
invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
if-nez v3, :cond_114
const-string/jumbo v3, "desc"
move-object/from16 v0, v30
invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual/range {v30 .. v30}, Lorg/json/JSONObject;->length()I
move-result v3
if-lez v3, :cond_10f
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, LvStudio/Android/Camera360/RemoteConstants;->HOST_CLOUD:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "mobile"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "picture"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "setDescByCrc32"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
new-instance v6, Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;
const/4 v8, 0x1
const/4 v10, 0x0
const/4 v11, 0x0
move-object/from16 v7, p0
invoke-direct/range {v6 .. v12}, Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;-><init>(Lcom/pinguo/camera360/gallery/GalleryActivity$2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V
new-instance v17, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;
invoke-direct/range {v17 .. v17}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;-><init>()V
new-instance v13, Lcom/android/volley/toolbox/BasicNetwork;
move-object/from16 v0, v17
invoke-direct {v13, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V
:try_start_99
:try_end_99
.catchall {:try_start_39 .. :try_end_99} :catchall_1b4
.catch Lorg/json/JSONException; {:try_start_39 .. :try_end_99} :catch_177
invoke-virtual {v13, v6}, Lcom/android/volley/toolbox/BasicNetwork;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
move-result-object v26
move-object/from16 v0, v26
iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I
move/from16 v29, v0
const-string/jumbo v3, "GalleryActivity"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "statusCode = "
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0xc8
move/from16 v0, v29
if-ne v0, v3, :cond_10f
new-instance v27, Lorg/json/JSONObject;
new-instance v3, Ljava/lang/String;
move-object/from16 v0, v26
iget-object v4, v0, Lcom/android/volley/NetworkResponse;->data:[B
invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
move-object/from16 v0, v27
invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "status"
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v28
const-string/jumbo v3, "GalleryActivity"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v7, "resultCode = "
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, v28
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0xc8
move/from16 v0, v28
if-ne v0, v3, :cond_10f
new-instance v14, Landroid/content/ContentValues;
invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
const/16 v18, 0x0
:goto_ff
invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
move-result v3
move/from16 v0, v18
if-lt v0, v3, :cond_180
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIsChangedPicDesciribe(Z)V
:goto_10f
:cond_10f
:try_end_10f
.catchall {:try_start_99 .. :try_end_10f} :catchall_1b4
.catch Lcom/android/volley/VolleyError; {:try_start_99 .. :try_end_10f} :catch_1ae
.catch Lorg/json/JSONException; {:try_start_99 .. :try_end_10f} :catch_177
invoke-interface {v15}, Landroid/database/Cursor;->close()V
goto/16 :goto_24
:try_start_114
:cond_114
const-string/jumbo v3, "eftAppendix"
invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v22
const-string/jumbo v3, "id"
invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
:try_end_129
.catchall {:try_start_114 .. :try_end_129} :catchall_1b4
.catch Lorg/json/JSONException; {:try_start_114 .. :try_end_129} :catch_177
move-result v19
:try_start_12a
new-instance v25, Lorg/json/JSONObject;
move-object/from16 v0, v25
move-object/from16 v1, v22
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "describe"
move-object/from16 v0, v25
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v23
const/4 v3, 0x0
move-object/from16 v0, v23
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getBoolean(I)Z
move-result v3
if-nez v3, :cond_39
const/4 v3, 0x1
move-object/from16 v0, v23
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x2
move-object/from16 v0, v23
invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const/4 v3, 0x0
const/4 v4, 0x1
move-object/from16 v0, v23
invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v24
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_16f
.catchall {:try_start_12a .. :try_end_16f} :catchall_1b4
.catch Ljava/lang/Exception; {:try_start_12a .. :try_end_16f} :catch_171
.catch Lorg/json/JSONException; {:try_start_12a .. :try_end_16f} :catch_177
goto/16 :goto_39
:catch_171
move-exception v16
:try_start_172
invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
:try_end_175
.catchall {:try_start_172 .. :try_end_175} :catchall_1b4
.catch Lorg/json/JSONException; {:try_start_172 .. :try_end_175} :catch_177
goto/16 :goto_39
:catch_177
move-exception v16
:try_start_178
invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V
:try_end_17b
.catchall {:try_start_178 .. :try_end_17b} :catchall_1b4
invoke-interface {v15}, Landroid/database/Cursor;->close()V
goto/16 :goto_24
:try_start_180
:cond_180
move-object/from16 v0, v24
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v21
check-cast v21, Ljava/lang/String;
const-string/jumbo v3, "eftAppendix"
move-object/from16 v0, v21
invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;
const-string/jumbo v7, "id = ?"
const/4 v3, 0x1
new-array v8, v3, [Ljava/lang/String;
const/4 v10, 0x0
move-object/from16 v0, v20
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
aput-object v3, v8, v10
invoke-virtual {v2, v4, v14, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_1aa
.catchall {:try_start_180 .. :try_end_1aa} :catchall_1b4
.catch Lcom/android/volley/VolleyError; {:try_start_180 .. :try_end_1aa} :catch_1ae
.catch Lorg/json/JSONException; {:try_start_180 .. :try_end_1aa} :catch_177
add-int/lit8 v18, v18, 0x1
goto/16 :goto_ff
:catch_1ae
move-exception v31
:try_start_1af
invoke-virtual/range {v31 .. v31}, Lcom/android/volley/VolleyError;->printStackTrace()V
:try_end_1b2
.catchall {:try_start_1af .. :try_end_1b2} :catchall_1b4
.catch Lorg/json/JSONException; {:try_start_1af .. :try_end_1b2} :catch_177
goto/16 :goto_10f
:catchall_1b4
move-exception v3
invoke-interface {v15}, Landroid/database/Cursor;->close()V
throw v3
.end method