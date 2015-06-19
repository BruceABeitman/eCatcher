.class public Lorg/pinguo/cloudshare/support/DataSupport;
.super Ljava/lang/Object;
.source "DataSupport.java"
.field public static final CRC32:Ljava/lang/String; = "crc32"
.field public static final EFFECT:Ljava/lang/String; = "effect"
.field private static final EFFECT_NONE:Ljava/lang/String; = "none"
.field private static final EFFECT_NULL:Ljava/lang/String; = ""
.field public static final MODEL:Ljava/lang/String; = "model"
.field public static final PATH:Ljava/lang/String; = "path"
.field public static final TIME_TOKEN:Ljava/lang/String; = "time"
.field public static final TYPE:Ljava/lang/String; = "type"
.field public static final USER_ID:Ljava/lang/String; = "user_id"
.field private static mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lorg/pinguo/cloudshare/support/DataSupport;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static localFunction(Ljava/lang/String;JI)V
.registers 46
:try_start_0
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v41
invoke-virtual/range {v41 .. v41}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z
move-result v2
if-nez v2, :cond_18
const-string/jumbo v2, "test"
const-string/jumbo v5, "\u7528\u6237\u4e0d\u5408\u6cd5"
invoke-static {v2, v5}, Lcom/pinguo/camera360/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_17
:goto_17
return-void
:cond_18
invoke-virtual/range {v41 .. v41}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v33
const/4 v2, 0x4
move/from16 v0, p3
if-ne v0, v2, :cond_111
const-string/jumbo v2, "_org.jpg"
const-string/jumbo v5, ".jpg"
move-object/from16 v0, p0
invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v39
invoke-static/range {v39 .. v39}, Lorg/pinguo/cloudshare/support/FileSupport;->getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;
move-result-object v36
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J
move-result-wide v17
const-string/jumbo v14, "100"
const-wide/16 v5, 0x3e8
mul-long v5, v5, p1
invoke-static {v5, v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDateByTimeToken(J)Ljava/lang/String;
move-result-object v11
const-string/jumbo v19, ""
const/16 v20, 0x0
const/16 v32, 0x0
if-eqz v36, :cond_6a
const-string/jumbo v2, "cameramodel"
move-object/from16 v0, v36
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
const-string/jumbo v2, "effect"
move-object/from16 v0, v36
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v20
check-cast v20, Ljava/lang/String;
const-string/jumbo v2, "exif"
move-object/from16 v0, v36
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v32
check-cast v32, Ljava/lang/String;
:cond_6a
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/FileSupport;->getOrgPictureByFileNameForCamera360DataBase(Ljava/lang/String;)J
move-result-wide v34
const-wide/16 v5, 0x0
cmp-long v2, v34, v5
if-eqz v2, :cond_de
invoke-static/range {v34 .. v35}, Lorg/pinguo/cloudshare/support/FileSupport;->getOrgPictureByTokenmillis(J)Ljava/util/Map;
move-result-object v37
if-eqz v37, :cond_de
if-eqz v20, :cond_10d
const-string/jumbo v2, "none"
move-object/from16 v0, v20
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_10d
const-string/jumbo v2, ""
move-object/from16 v0, v20
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_10d
const-string/jumbo v2, "org_pic_path"
move-object/from16 v0, v37
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-static {v3}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J
move-result-wide v7
sget-object v2, Lorg/pinguo/cloudshare/support/DataSupport;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
invoke-virtual {v2, v7, v8}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->checkExists(J)Z
move-result v2
if-nez v2, :cond_de
const-string/jumbo v4, "100"
const-string/jumbo v2, "cameramodel"
move-object/from16 v0, v36
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
const-string/jumbo v2, "exif"
move-object/from16 v0, v36
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v40
check-cast v40, Ljava/lang/String;
if-eqz v40, :cond_d2
const-string/jumbo v2, ""
move-object/from16 v0, v40
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d2
const-string/jumbo v4, "104"
:cond_d2
move-object/from16 v0, v33
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
const-string/jumbo v10, ""
move-wide/from16 v5, p1
invoke-static/range {v2 .. v11}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_de
:cond_de
sget-object v2, Lorg/pinguo/cloudshare/support/DataSupport;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
move-wide/from16 v0, v17
invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->checkExists(J)Z
move-result v2
if-nez v2, :cond_17
if-eqz v32, :cond_f8
const-string/jumbo v2, ""
move-object/from16 v0, v32
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_f8
const-string/jumbo v14, "104"
:cond_f8
move-object/from16 v0, v33
iget-object v12, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
move-object/from16 v13, p0
move-wide/from16 v15, p1
move-object/from16 v21, v11
invoke-static/range {v12 .. v21}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_105
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_105} :catch_107
goto/16 :goto_17
:catch_107
move-exception v31
invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_17
:cond_10d
:try_start_10d
const-string/jumbo v14, "100"
goto :goto_de
:cond_111
const/4 v2, 0x3
move/from16 v0, p3
if-ne v0, v2, :cond_146
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J
move-result-wide v26
sget-object v2, Lorg/pinguo/cloudshare/support/DataSupport;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
move-wide/from16 v0, v26
invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->checkExists(J)Z
move-result v2
if-nez v2, :cond_17
const-string/jumbo v23, "100"
const-wide/16 v5, 0x3e8
mul-long v5, v5, p1
invoke-static {v5, v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDateByTimeToken(J)Ljava/lang/String;
move-result-object v11
move-object/from16 v0, v33
iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
move-object/from16 v21, v0
const-string/jumbo v28, "unknow"
const-string/jumbo v29, ""
move-object/from16 v22, p0
move-wide/from16 v24, p1
move-object/from16 v30, v11
invoke-static/range {v21 .. v30}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_17
:cond_146
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J
move-result-wide v26
sget-object v2, Lorg/pinguo/cloudshare/support/DataSupport;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
move-wide/from16 v0, v26
invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->checkExists(J)Z
move-result v2
if-nez v2, :cond_17
invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v23
const-wide/16 v5, 0x3e8
mul-long v5, v5, p1
invoke-static {v5, v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDateByTimeToken(J)Ljava/lang/String;
move-result-object v11
const-string/jumbo v28, ""
const-string/jumbo v29, ""
const-string/jumbo v38, ""
const-string/jumbo v2, "_org.jpg"
const-string/jumbo v5, ".jpg"
move-object/from16 v0, p0
invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v39
invoke-static/range {v39 .. v39}, Lorg/pinguo/cloudshare/support/FileSupport;->getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;
move-result-object v37
if-eqz v37, :cond_1a8
const-string/jumbo v2, "cameramodel"
move-object/from16 v0, v37
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v28
check-cast v28, Ljava/lang/String;
const-string/jumbo v2, "_org.jpg"
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
const/4 v5, -0x1
if-ne v2, v5, :cond_19d
const-string/jumbo v2, "effect"
move-object/from16 v0, v37
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v29
check-cast v29, Ljava/lang/String;
:cond_19d
const-string/jumbo v2, "exif"
move-object/from16 v0, v37
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v38
check-cast v38, Ljava/lang/String;
:cond_1a8
if-eqz v38, :cond_1b8
const-string/jumbo v2, ""
move-object/from16 v0, v38
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1b8
const-string/jumbo v23, "104"
:cond_1b8
move-object/from16 v0, v33
iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
move-object/from16 v21, v0
move-object/from16 v22, p0
move-wide/from16 v24, p1
move-object/from16 v30, v11
invoke-static/range {v21 .. v30}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_1c7
.catch Ljava/lang/Exception; {:try_start_10d .. :try_end_1c7} :catch_107
goto/16 :goto_17
.end method
.method public static setAnalysisController(Lcom/pinguo/camera360/cloud/controller/AnalysisController;)V
.registers 1
sput-object p0, Lorg/pinguo/cloudshare/support/DataSupport;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
return-void
.end method