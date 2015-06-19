.class public Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;
.super Ljava/lang/Object;
.source "SceneTemplateUtil.java"
.field public static final DATABASE_NAME:Ljava/lang/String; = "template.db"
.field public static final LOCAL_TEMPLATE_PATH:Ljava/lang/String; = null
.field public static final NO_MEDIA:Ljava/lang/String; = ".nomedia"
.field public static final OLD_LOCAL_TEMPLATE_PATH:Ljava/lang/String; = null
.field public static final SCENE_TYPE_CACHE:I = 0x4
.field public static final SCENE_TYPE_LOCAL_DOWNLOADED:I = 0x3
.field public static final SCENE_TYPE_LOCAL_SETUP:I = 0x2
.field public static final SCENE_TYPE_NET:I = 0x5
.field public static final TEMPLATE_URL:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/Camera360/Template"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->OLD_LOCAL_TEMPLATE_PATH:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/Camera360/scene"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
const-string/jumbo v0, "http://scene4.camera360.com/Interface/ChildTemplate.aspx?"
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "version=%s&language=%s&pack=%s&imei=%s&net=%s&cuid=%s&last=%s"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->TEMPLATE_URL:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static getContentValues(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Landroid/content/ContentValues;
.registers 32
new-instance v24, Landroid/content/ContentValues;
invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v14
if-eqz v14, :cond_15
const-string/jumbo v28, "KEY"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_15
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_25
const-string/jumbo v28, "CHILD_ID"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_25
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getTemplateId()Ljava/lang/String;
move-result-object v21
if-eqz v21, :cond_37
const-string/jumbo v28, "TEMPLATE_ID"
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_37
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getTitle()Ljava/lang/String;
move-result-object v22
if-eqz v22, :cond_49
const-string/jumbo v28, "TITLE"
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v22
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_49
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDetailLogo()Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_59
const-string/jumbo v28, "DETAIL_LOGO"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_59
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDownloadCount()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_69
const-string/jumbo v28, "DOWNLOAD_COUNT"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_69
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getNeedPay()Ljava/lang/String;
move-result-object v16
if-eqz v16, :cond_7b
const-string/jumbo v28, "NEED_PAY"
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v16
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_7b
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsHot()Ljava/lang/String;
move-result-object v9
if-eqz v9, :cond_8b
const-string/jumbo v28, "IS_HOT"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_8b
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDownloaded()Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_9b
const-string/jumbo v28, "DOWNLOADED"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_9b
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFile()Ljava/lang/String;
move-result-object v25
if-eqz v25, :cond_ad
const-string/jumbo v28, "SCENE_XML_FILE"
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v25
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_ad
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFileLength()J
move-result-wide v26
const-wide/16 v28, 0x0
cmp-long v28, v28, v26
if-eqz v28, :cond_c7
const-string/jumbo v28, "SCENE_XML_FILE_LENGTH"
invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_c7
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;
move-result-object v11
if-eqz v11, :cond_d7
const-string/jumbo v28, "SCENE_JPG_FILE"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_d7
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFileLength()J
move-result-wide v12
const-wide/16 v28, 0x0
cmp-long v28, v28, v12
if-eqz v28, :cond_f1
const-string/jumbo v28, "SCENE_JPG_FILE_LENGTH"
invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_f1
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFile()Ljava/lang/String;
move-result-object v17
if-eqz v17, :cond_103
const-string/jumbo v28, "SCENE_PNG_FILE"
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_103
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFileLength()J
move-result-wide v18
const-wide/16 v28, 0x0
cmp-long v28, v28, v18
if-eqz v28, :cond_11d
const-string/jumbo v28, "SCENE_PNG_FILE_LENGTH"
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_11d
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneUsedCount()I
move-result v20
if-eqz v20, :cond_133
const-string/jumbo v28, "SCENE_USED_COUNT"
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_133
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v15
if-eqz v15, :cond_14d
const-string/jumbo v28, "LOCATION_TYPE"
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v29
invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_14d
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsNew()Ljava/lang/String;
move-result-object v10
if-eqz v10, :cond_163
const-string/jumbo v28, "IS_NEW"
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsNew()Ljava/lang/String;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_163
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getClosed()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_179
const-string/jumbo v28, "CLOSED"
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getClosed()Ljava/lang/String;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_179
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getAddedDate()Ljava/util/Date;
move-result-object v5
if-eqz v5, :cond_193
const-string/jumbo v28, "ADDED_DATE"
invoke-virtual {v5}, Ljava/util/Date;->getTime()J
move-result-wide v29
invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v29
move-object/from16 v0, v24
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_193
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getValid()Ljava/lang/Boolean;
move-result-object v23
if-eqz v23, :cond_1b1
const-string/jumbo v29, "VALID"
invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z
move-result v28
if-eqz v28, :cond_1b2
const/16 v28, 0xb
:goto_1a4
invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v28
move-object/from16 v0, v24
move-object/from16 v1, v29
move-object/from16 v2, v28
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_1b1
return-object v24
:cond_1b2
const/16 v28, 0x1
goto :goto_1a4
.end method
.method public static isCompleteSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Z
.registers 10
const/4 v8, 0x3
const/4 v3, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return v3
:cond_5
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_4
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v4
if-ne v4, v8, :cond_30
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFileLength()J
move-result-wide v6
cmp-long v4, v4, v6
if-eqz v4, :cond_30
invoke-virtual {v0}, Ljava/io/File;->delete()Z
goto :goto_4
:cond_30
new-instance v1, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ".png"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v4
if-ne v4, v8, :cond_77
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFileLength()J
move-result-wide v6
cmp-long v4, v4, v6
if-eqz v4, :cond_77
invoke-virtual {v1}, Ljava/io/File;->delete()Z
goto :goto_4
:cond_77
new-instance v2, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ".xml"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I
move-result v4
if-ne v4, v8, :cond_bf
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v4
invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFileLength()J
move-result-wide v6
cmp-long v4, v4, v6
if-eqz v4, :cond_bf
invoke-virtual {v2}, Ljava/io/File;->delete()Z
goto/16 :goto_4
:cond_bf
const/4 v3, 0x1
goto/16 :goto_4
.end method