.class public Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;
.super Ljava/lang/Object;
.source "PGScanResultProcess.java"

# interfaces
.implements Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;


# static fields
.field public static final EFFECT:Ljava/lang/String; = "effect"

.field private static final EFFECT_NONE:Ljava/lang/String; = "none"

.field private static final EFFECT_NULL:Ljava/lang/String; = ""

.field public static final MODEL:Ljava/lang/String; = "model"


# instance fields
.field private mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

.field private mUser:Lcom/pinguo/camera360/login/model/User;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;Lcom/pinguo/camera360/login/model/User;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

    iput-object p2, p0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mUser:Lcom/pinguo/camera360/login/model/User;

    return-void
.end method


# virtual methods
.method public processResult(Ljava/lang/String;JI)V
    .registers 44

    const-string/jumbo v2, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mUser:Lcom/pinguo/camera360/login/model/User;

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mUser:Lcom/pinguo/camera360/login/model/User;

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_42
    const-string/jumbo v2, "test"

    const-string/jumbo v5, "\u7528\u6237\u4e0d\u5408\u6cd5"

    invoke-static {v2, v5}, Lcom/pinguo/camera360/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

    if-nez v2, :cond_61

    const-string/jumbo v2, "test"

    const-string/jumbo v5, "argument mAnalysis==null"

    invoke-static {v2, v5}, Lcom/pinguo/camera360/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5b} :catch_5c

    goto :goto_4b

    :catch_5c
    move-exception v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    :cond_61
    :try_start_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mUser:Lcom/pinguo/camera360/login/model/User;

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v33

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_163

    const-string/jumbo v2, "_org.jpg"

    const-string/jumbo v5, ".jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/pinguo/cloudshare/support/FileSupport;->getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v34

    invoke-static/range {p1 .. p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v17

    const-string/jumbo v14, "100"

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, p2

    invoke-static {v5, v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDateByTimeToken(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v19, ""

    const/16 v20, 0x0

    const/16 v32, 0x0

    if-eqz v34, :cond_b7

    const-string/jumbo v2, "cameramodel"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string/jumbo v2, "effect"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string/jumbo v2, "exif"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    :cond_b7
    invoke-static/range {p1 .. p1}, Lorg/pinguo/cloudshare/support/FileSupport;->getOrgPictureByFileNameForCamera360DataBase(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v5, 0x0

    cmp-long v2, v24, v5

    if-eqz v2, :cond_134

    invoke-static/range {v24 .. v25}, Lorg/pinguo/cloudshare/support/FileSupport;->getOrgPictureByTokenmillis(J)Ljava/util/Map;

    move-result-object v35

    if-eqz v35, :cond_134

    if-eqz v20, :cond_15f

    const-string/jumbo v2, "none"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string/jumbo v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string/jumbo v2, "org_pic_path"

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

    invoke-virtual {v2, v7, v8}, Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;->checkExists(J)Z

    move-result v2

    if-nez v2, :cond_134

    const-string/jumbo v4, "100"

    const-string/jumbo v9, ""

    const/16 v38, 0x0

    if-eqz v34, :cond_118

    const-string/jumbo v2, "cameramodel"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v2, "exif"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    :cond_118
    if-eqz v38, :cond_128

    const-string/jumbo v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_128

    const-string/jumbo v4, "104"

    :cond_128
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    const-string/jumbo v10, ""

    move-wide/from16 v5, p2

    invoke-static/range {v2 .. v11}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_134
    :goto_134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;->checkExists(J)Z

    move-result v2

    if-nez v2, :cond_4b

    if-eqz v32, :cond_150

    const-string/jumbo v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_150

    const-string/jumbo v14, "104"

    :cond_150
    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v13, p1

    move-wide/from16 v15, p2

    move-object/from16 v21, v11

    invoke-static/range {v12 .. v21}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_15f
    const-string/jumbo v14, "100"

    goto :goto_134

    :cond_163
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_19a

    invoke-static/range {p1 .. p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;->checkExists(J)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string/jumbo v23, "100"

    move-wide/from16 v24, p2

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, p2

    invoke-static {v5, v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDateByTimeToken(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v28, "unknow"

    const-string/jumbo v29, ""

    move-object/from16 v22, p1

    move-object/from16 v30, v11

    invoke-static/range {v21 .. v30}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_19a
    invoke-static/range {p1 .. p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/upload/model/PGScanResultProcess;->mAnalysis:Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/cloud/upload/model/PGAnalysis;->checkExists(J)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-wide/from16 v24, p2

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, p2

    invoke-static {v5, v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDateByTimeToken(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v28, ""

    const-string/jumbo v29, ""

    const-string/jumbo v36, ""

    const-string/jumbo v2, "_org.jpg"

    const-string/jumbo v5, ".jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/pinguo/cloudshare/support/FileSupport;->getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v35

    if-eqz v35, :cond_200

    const-string/jumbo v2, "cameramodel"

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-string/jumbo v2, "_org.jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1f5

    const-string/jumbo v2, "effect"

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    :cond_1f5
    const-string/jumbo v2, "exif"

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    :cond_200
    if-eqz v36, :cond_210

    const-string/jumbo v2, ""

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_210

    const-string/jumbo v23, "104"

    :cond_210
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v22, p1

    move-object/from16 v30, v11

    invoke-static/range {v21 .. v30}, Lorg/pinguo/cloudshare/support/FileSupport;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_21d} :catch_5c

    goto/16 :goto_4b
.end method
