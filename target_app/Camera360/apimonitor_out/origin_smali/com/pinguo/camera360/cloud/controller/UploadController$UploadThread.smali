.class public Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
.super Ljava/lang/Thread;
.source "UploadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/controller/UploadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadThread"
.end annotation


# instance fields
.field private mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

.field private mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

.field final synthetic this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v18

    if-nez v18, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    const-string/jumbo v19, "\u7528\u6237\u4e0d\u5408\u6cd5"

    invoke-interface/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllFailed(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v6

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUpload(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$6(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/ScanController;

    move-result-object v18

    if-eqz v18, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$6(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/ScanController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/ScanController;->startScanPath()I

    move-result v12

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_8c

    const-string/jumbo v18, "CloudServiceManager"

    const-string/jumbo v19, "sdcard\u7a7a\u95f4\u4e0d\u591f\uff0c\u4e0d\u80fd\u591f\u4e0a\u4f20\u7167\u7247"

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadFailForSdcard()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllSuccess()V

    goto :goto_30

    :cond_8c
    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/FileSupport;->getNeedUploadCountByDate(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_1b3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_11f

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    :try_start_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v22, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getCheckList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashSet;
    :try_end_da
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_bb .. :try_end_da} :catch_137
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_bb .. :try_end_da} :catch_155
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_bb .. :try_end_da} :catch_174

    move-result-object v14

    :cond_db
    :goto_db
    if-eqz v14, :cond_1a5

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_193

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-eqz v18, :cond_288

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUploadForCrc32s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    const-string/jumbo v19, "\u5220\u9664\u672c\u5730\u6570\u636e\u5e93\u5df2\u7ecf\u4e0a\u4f20\u4e86\u7684\u7167\u7247\u8bb0\u5f55\u5931\u8d25"

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->uploadFailed(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$7(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_11f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/cloud/struct/DayInformation;

    invoke-virtual {v7}, Lcom/pinguo/camera360/cloud/struct/DayInformation;->getDate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a3

    :catch_137
    move-exception v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadDisableServer()V

    goto :goto_db

    :catch_155
    move-exception v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadUserUnavailable()V

    goto/16 :goto_db

    :catch_174
    move-exception v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadTimeOut()V

    goto/16 :goto_db

    :cond_193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e6

    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    const-string/jumbo v19, "\u4ece\u670d\u52a1\u5668\u83b7\u53d6\u5df2\u7ecf\u4e0a\u4f20\u7167\u7247\u7684crc32\u5217\u8868\u5931\u8d25"

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->uploadFailed(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$7(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_1b3
    const-string/jumbo v18, "CloudServiceManager"

    const-string/jumbo v19, "no photoes need upload"

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllSuccess()V

    goto/16 :goto_30

    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentAutoUpload(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_25a

    :cond_1e7
    :goto_1e7
    :try_start_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mEndLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$23(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1f4
    .catchall {:try_start_1e7 .. :try_end_1f4} :catchall_6fb

    :try_start_1f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$24(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    #setter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$25(Lcom/pinguo/camera360/cloud/controller/UploadController;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->getThreadStatus()Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$26(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-nez v18, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-eqz v18, :cond_70a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->getUploadDataType()I
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$19(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->setUploadData_DataBase()V
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$27(Lcom/pinguo/camera360/cloud/controller/UploadController;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->uploadFinish()V
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$28(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
    :try_end_24b
    .catchall {:try_start_1f4 .. :try_end_24b} :catchall_6fb
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_24b} :catch_6d7

    :cond_24b
    :goto_24b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mEndLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$23(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_30

    :cond_25a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentNetEnable(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_29b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_283

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadNetError()V

    :cond_283
    const-wide/16 v18, 0x2710

    :try_start_285
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_288
    .catch Ljava/lang/InterruptedException; {:try_start_285 .. :try_end_288} :catch_296

    :cond_288
    :goto_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-nez v18, :cond_1d7

    goto/16 :goto_1e7

    :catch_296
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_288

    :cond_29b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentBattyEnable(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_2cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_2c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadBattyError()V

    :cond_2c4
    const-wide/16 v18, 0x2710

    :try_start_2c6
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c9
    .catch Ljava/lang/InterruptedException; {:try_start_2c6 .. :try_end_2c9} :catch_2ca

    goto :goto_288

    :catch_2ca
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_288

    :cond_2cf
    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/FileSupport;->getNeedUploadCount(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v18, "CloudServiceManager"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u9700\u8981\u4e0a\u4f20\u7684\u56fe\u7247\u603b\u7684\u6570\u91cf uploadPicCount:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mReadDataLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$9(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/pinguo/cloudshare/support/FileSupport;->getNeedUpload(Ljava/lang/String;)Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    const-string/jumbo v18, "CloudServiceManager"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u9700\u8981\u4e0a\u4f20\u7684\u56fe\u7247\u4fe1\u606f:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0
    :try_end_32e
    .catchall {:try_start_2f1 .. :try_end_32e} :catchall_33f

    if-nez v18, :cond_34e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mReadDataLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$9(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1e7

    :catchall_33f
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mReadDataLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$9(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v18

    :cond_34e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mReadDataLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$9(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :try_start_35b
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getFilePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_3a4

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getCRC32()J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUpload(Ljava/lang/String;J)V
    :try_end_383
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_35b .. :try_end_383} :catch_385
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_35b .. :try_end_383} :catch_5ce
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_35b .. :try_end_383} :catch_635
    .catch Ljava/lang/InterruptedException; {:try_start_35b .. :try_end_383} :catch_65b

    goto/16 :goto_288

    :catch_385
    move-exception v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadDisableServer()V

    goto/16 :goto_288

    :cond_3a4
    :try_start_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->putUrlTimeout()Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$10(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-eqz v18, :cond_3c8

    :goto_3b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-nez v18, :cond_5ed

    :goto_3bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-eqz v18, :cond_1e7

    :cond_3c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bBeginUpload:Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$16(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-nez v18, :cond_3fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_3f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllStart(I)V

    :cond_3f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bBeginUpload:Z
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$17(Lcom/pinguo/camera360/cloud/controller/UploadController;Z)V

    :cond_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_41b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadStart(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V

    :cond_41b
    const-string/jumbo v18, "CloudServiceManager"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u4e0a\u50b3\u7167\u7247\u8def\u9032 : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getFilePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    const v19, 0x10301

    invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v18

    if-eqz v18, :cond_1e7

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->uploadImage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setResult(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-eqz v18, :cond_1e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getResult()I

    move-result v18

    const v19, 0x10200

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_670

    const-string/jumbo v18, "CloudServiceManager"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Count : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v20, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
    invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$18(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Type : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v20, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->getUploadDataType()I
    invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$19(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Success : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getFilePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    const v19, 0x10303

    invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setStatus(I)V
    :try_end_4ef
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_3a4 .. :try_end_4ef} :catch_385
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_3a4 .. :try_end_4ef} :catch_5ce
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_3a4 .. :try_end_4ef} :catch_635
    .catch Ljava/lang/InterruptedException; {:try_start_3a4 .. :try_end_4ef} :catch_65b

    :try_start_4ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUpdateLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$20(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$21(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/AnalysisController;

    move-result-object v18

    iget-object v0, v6, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getCRC32()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getServerID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->insertCRC32Recorder(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$18(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    #setter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$22(Lcom/pinguo/camera360/cloud/controller/UploadController;I)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v18, "vStudio.Android.Camera360.SAVE_SHARE_PREFERENCE"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "save_type"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_598

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    if-eqz v18, :cond_598

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v20, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
    invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$18(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v21, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
    invoke-static/range {v21 .. v21}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$18(Lcom/pinguo/camera360/cloud/controller/UploadController;)I

    move-result v21

    add-int v21, v21, v16

    add-int/lit8 v21, v21, -0x1

    invoke-interface/range {v18 .. v21}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadProgress(Ljava/lang/String;II)V

    :cond_598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_5b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadStop(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
    :try_end_5b7
    .catchall {:try_start_4ef .. :try_end_5b7} :catchall_661

    :cond_5b7
    :try_start_5b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUpdateLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$20(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_5c4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;
    :try_end_5cc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_5b7 .. :try_end_5cc} :catch_385
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_5b7 .. :try_end_5cc} :catch_5ce
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_5b7 .. :try_end_5cc} :catch_635
    .catch Ljava/lang/InterruptedException; {:try_start_5b7 .. :try_end_5cc} :catch_65b

    goto/16 :goto_288

    :catch_5ce
    move-exception v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadUserUnavailable()V

    goto/16 :goto_288

    :cond_5ed
    :try_start_5ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->reloadPutUrl()Z
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$11(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v18

    if-eqz v18, :cond_654

    invoke-static {}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$12()Ljava/util/regex/Pattern;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$13(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_654

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Address:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$14(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Path:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$15(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V
    :try_end_633
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_5ed .. :try_end_633} :catch_385
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_5ed .. :try_end_633} :catch_5ce
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_5ed .. :try_end_633} :catch_635
    .catch Ljava/lang/InterruptedException; {:try_start_5ed .. :try_end_633} :catch_65b

    goto/16 :goto_3bc

    :catch_635
    move-exception v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadTimeOut()V

    goto/16 :goto_288

    :cond_654
    const-wide/16 v18, 0x2710

    :try_start_656
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_659
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_656 .. :try_end_659} :catch_385
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_656 .. :try_end_659} :catch_5ce
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_656 .. :try_end_659} :catch_635
    .catch Ljava/lang/InterruptedException; {:try_start_656 .. :try_end_659} :catch_65b

    goto/16 :goto_3b0

    :catch_65b
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_288

    :catchall_661
    move-exception v18

    :try_start_662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUpdateLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$20(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v18

    :cond_670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getResult()I

    move-result v18

    const v19, 0x10204

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_691

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    const v19, 0x10304

    invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setStatus(I)V

    goto/16 :goto_5c4

    :cond_691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v18, v0

    const v19, 0x10304

    invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_6bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadError(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V

    :cond_6bc
    const-wide/16 v18, 0x2710

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6c1
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_662 .. :try_end_6c1} :catch_385
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_662 .. :try_end_6c1} :catch_5ce
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_662 .. :try_end_6c1} :catch_635
    .catch Ljava/lang/InterruptedException; {:try_start_662 .. :try_end_6c1} :catch_65b

    goto/16 :goto_5c4

    :cond_6c3
    :try_start_6c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->setUploadData_Sdcard()V
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$29(Lcom/pinguo/camera360/cloud/controller/UploadController;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->startSecondUploadServer()V
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$30(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
    :try_end_6d5
    .catchall {:try_start_6c3 .. :try_end_6d5} :catchall_6fb
    .catch Ljava/lang/Exception; {:try_start_6c3 .. :try_end_6d5} :catch_6d7

    goto/16 :goto_24b

    :catch_6d7
    move-exception v5

    :try_start_6d8
    const-string/jumbo v18, "CloudServiceManager"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    if-eqz v18, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadDisableServer()V
    :try_end_6f9
    .catchall {:try_start_6d8 .. :try_end_6f9} :catchall_6fb

    goto/16 :goto_24b

    :catchall_6fb
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mEndLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$23(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v18

    :cond_70a
    :try_start_70a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u7ebf\u7a0b running:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-object/from16 v20, v0

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
    invoke-static/range {v20 .. v20}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/pinguo/camera360/cloud/controller/UploadController;->uploadFailed(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$7(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V
    :try_end_72d
    .catchall {:try_start_70a .. :try_end_72d} :catchall_6fb
    .catch Ljava/lang/Exception; {:try_start_70a .. :try_end_72d} :catch_6d7

    goto/16 :goto_24b
.end method

.method public stopImageRequest()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->stop()V

    :cond_9
    return-void
.end method

.method public uploadImage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pinguo/camera360/cloud/exception/DisableServerException;,
            Lcom/pinguo/camera360/cloud/exception/UserInvalidException;,
            Lcom/pinguo/camera360/cloud/exception/TimeOutException;
        }
    .end annotation

    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_244
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_6} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_2 .. :try_end_6} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_2 .. :try_end_6} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_2 .. :try_end_6} :catch_278

    if-nez v2, :cond_f

    :cond_8
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    const v2, 0x10205

    :goto_e
    return v2

    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploading(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    const v3, 0x10302

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setStatus(I)V

    new-instance v2, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Address:Ljava/lang/String;
    invoke-static {v3}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$1(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Path:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$2(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
    invoke-static {v5}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$3(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getFilePath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
    invoke-static {v5}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$4(Lcom/pinguo/camera360/cloud/controller/UploadController;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getContentId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getCRC32()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getCameraModel()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getEffectParam()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getTokenMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v18}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v3}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setFileSize(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getDstName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->setContext(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->setUploadController(Lcom/pinguo/camera360/cloud/controller/UploadController;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v2

    if-eqz v2, :cond_f1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_f1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadStart(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V

    :cond_f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_258

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->sendMethod()Z
    :try_end_102
    .catchall {:try_start_f .. :try_end_102} :catchall_244
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_102} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_102} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_f .. :try_end_102} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_f .. :try_end_102} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_f .. :try_end_102} :catch_278

    move-result v2

    if-eqz v2, :cond_258

    const/16 v25, 0x0

    const/16 v24, 0x0

    :try_start_109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    new-instance v22, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_126
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_167

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->endObject()V

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_132
    .catchall {:try_start_109 .. :try_end_132} :catchall_244
    .catch Ljava/lang/NumberFormatException; {:try_start_109 .. :try_end_132} :catch_1ab
    .catch Ljava/lang/IllegalStateException; {:try_start_109 .. :try_end_132} :catch_1f6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_109 .. :try_end_132} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_132} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_109 .. :try_end_132} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_109 .. :try_end_132} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_109 .. :try_end_132} :catch_278

    :goto_132
    if-eqz v19, :cond_152

    :try_start_134
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_152

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_152

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Delete file failed!"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_152
    if-eqz v24, :cond_250

    const-string/jumbo v2, "200"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15c
    .catchall {:try_start_134 .. :try_end_15c} :catchall_244
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_134 .. :try_end_15c} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_15c} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_134 .. :try_end_15c} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_134 .. :try_end_15c} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_134 .. :try_end_15c} :catch_278

    move-result v2

    if-eqz v2, :cond_250

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    const v2, 0x10200

    goto/16 :goto_e

    :cond_167
    :try_start_167
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v25

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_126

    :cond_189
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mUploadObject:Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setServerID(Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_167 .. :try_end_1a9} :catchall_244
    .catch Ljava/lang/NumberFormatException; {:try_start_167 .. :try_end_1a9} :catch_1ab
    .catch Ljava/lang/IllegalStateException; {:try_start_167 .. :try_end_1a9} :catch_1f6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_167 .. :try_end_1a9} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_1a9} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_167 .. :try_end_1a9} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_167 .. :try_end_1a9} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_167 .. :try_end_1a9} :catch_278

    goto/16 :goto_126

    :catch_1ab
    move-exception v20

    :try_start_1ac
    invoke-virtual/range {v20 .. v20}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1af
    .catchall {:try_start_1ac .. :try_end_1af} :catchall_244
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1ac .. :try_end_1af} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_1ac .. :try_end_1af} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_1ac .. :try_end_1af} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_1ac .. :try_end_1af} :catch_278

    goto :goto_132

    :catch_1b0
    move-exception v20

    :try_start_1b1
    invoke-virtual/range {v20 .. v20}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    if-eqz v19, :cond_1c8

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_1c8
    .catchall {:try_start_1b1 .. :try_end_1c8} :catchall_244

    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    const v2, 0x10203

    goto/16 :goto_e

    :cond_1d0
    :try_start_1d0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "album_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v2, v3}, Lorg/pinguo/cloudshare/support/HelperConsole;->saveUserUploadedAlbum(Landroid/content/Context;I)V
    :try_end_1f4
    .catchall {:try_start_1d0 .. :try_end_1f4} :catchall_244
    .catch Ljava/lang/NumberFormatException; {:try_start_1d0 .. :try_end_1f4} :catch_1ab
    .catch Ljava/lang/IllegalStateException; {:try_start_1d0 .. :try_end_1f4} :catch_1f6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d0 .. :try_end_1f4} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1f4} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_1d0 .. :try_end_1f4} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_1d0 .. :try_end_1f4} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_1d0 .. :try_end_1f4} :catch_278

    goto/16 :goto_126

    :catch_1f6
    move-exception v20

    :try_start_1f7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1fa
    .catchall {:try_start_1f7 .. :try_end_1fa} :catchall_244
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f7 .. :try_end_1fa} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_1fa} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_1f7 .. :try_end_1fa} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_1f7 .. :try_end_1fa} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_1f7 .. :try_end_1fa} :catch_278

    goto/16 :goto_132

    :catch_1fc
    move-exception v20

    :try_start_1fd
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v19, :cond_214

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_214

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_214
    .catchall {:try_start_1fd .. :try_end_214} :catchall_244

    :cond_214
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    const v2, 0x10202

    goto/16 :goto_e

    :cond_21c
    :try_start_21c
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "picture_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_249

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->this$0:Lcom/pinguo/camera360/cloud/controller/UploadController;

    #getter for: Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v2, v3}, Lorg/pinguo/cloudshare/support/HelperConsole;->saveUserUploadedPicture(Landroid/content/Context;I)V
    :try_end_240
    .catchall {:try_start_21c .. :try_end_240} :catchall_244
    .catch Ljava/lang/NumberFormatException; {:try_start_21c .. :try_end_240} :catch_1ab
    .catch Ljava/lang/IllegalStateException; {:try_start_21c .. :try_end_240} :catch_1f6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21c .. :try_end_240} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_240} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_21c .. :try_end_240} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_21c .. :try_end_240} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_21c .. :try_end_240} :catch_278

    goto/16 :goto_126

    :catch_242
    move-exception v20

    :try_start_243
    throw v20
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_244

    :catchall_244
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    throw v2

    :cond_249
    :try_start_249
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_24c
    .catchall {:try_start_249 .. :try_end_24c} :catchall_244
    .catch Ljava/lang/NumberFormatException; {:try_start_249 .. :try_end_24c} :catch_1ab
    .catch Ljava/lang/IllegalStateException; {:try_start_249 .. :try_end_24c} :catch_1f6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_249 .. :try_end_24c} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_24c} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_249 .. :try_end_24c} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_249 .. :try_end_24c} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_249 .. :try_end_24c} :catch_278

    goto/16 :goto_126

    :catch_24e
    move-exception v20

    :try_start_24f
    throw v20
    :try_end_250
    .catchall {:try_start_24f .. :try_end_250} :catchall_244

    :cond_250
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    const v2, 0x10206

    goto/16 :goto_e

    :cond_258
    :try_start_258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->mImageRequestConsole:Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/request/ImageRequestConsole;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_27a

    if-eqz v19, :cond_8

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_276
    .catchall {:try_start_258 .. :try_end_276} :catchall_244
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_258 .. :try_end_276} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_276} :catch_1fc
    .catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_258 .. :try_end_276} :catch_242
    .catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_258 .. :try_end_276} :catch_24e
    .catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_258 .. :try_end_276} :catch_278

    goto/16 :goto_8

    :catch_278
    move-exception v20

    :try_start_279
    throw v20
    :try_end_27a
    .catchall {:try_start_279 .. :try_end_27a} :catchall_244

    :cond_27a
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V

    const v2, 0x10204

    goto/16 :goto_e
.end method
