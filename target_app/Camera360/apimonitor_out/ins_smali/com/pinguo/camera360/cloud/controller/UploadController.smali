.class public Lcom/pinguo/camera360/cloud/controller/UploadController;
.super Ljava/lang/Object;
.source "UploadController.java"
.field public static final CHECK_LIST_URL:Ljava/lang/String; = "/api/Sync/GetCheckList"
.field public static final GET_SERVER_LIST_URL:Ljava/lang/String; = "/api/server/getServerList"
.field public static final GET_USER_SPACE_URL:Ljava/lang/String; = "/api/Sync/GetUsedSpace"
.field public static final JSON_STRING_ERRROR:I = 0x10202
.field public static final LOGIN_URL:Ljava/lang/String; = "/api/User/Login"
.field public static final MULTI_DAY_COMPLETE_URL:Ljava/lang/String; = "/api/Sync/multiDayComplete"
.field public static final PUT_URL_URL:Ljava/lang/String; = "/api/Sync/PutUrl"
.field public static final REGISTER_EMAIL_URL:Ljava/lang/String; = "/api/User/RegisterEmail"
.field private static final TAG:Ljava/lang/String; = "CloudServiceManager"
.field public static final TEXT_CHARSET_ERROR:I = 0x10203
.field public static final UPLOAD_DATA_ERROR:I = 0x10205
.field private static final UPLOAD_DATA_TYPE_DATABASE:I = 0x0
.field private static final UPLOAD_DATA_TYPE_SDCARD:I = 0x1
.field public static final UPLOAD_ERROR_LOG_URL:Ljava/lang/String; = "/api/server/uploadErrorLog"
.field public static final UPLOAD_FILE_ERROR:I = 0x10204
.field public static final UPLOAD_PARAM_ERROR:I = 0x10206
.field public static final UPLOAD_PUTURL_ERROR:I = 0x10207
.field public static final UPLOAD_SUCCESS:I = 0x10200
.field private static final url_information_regex:Ljava/util/regex/Pattern;
.field private bBeginUpload:Z
.field private bUploadRunning:Z
.field private lPutUrlLocal:J
.field private lPutUrlOffset:J
.field private lPutUrlSer:J
.field private lPutUrlTimeOut:J
.field private mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
.field private mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
.field private mContext:Landroid/content/Context;
.field private mEndLock:Ljava/util/concurrent/locks/Lock;
.field private mReadDataLock:Ljava/util/concurrent/locks/Lock;
.field private mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
.field private mThreads:[Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
.field private mUpdateLock:Ljava/util/concurrent/locks/Lock;
.field private mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
.field private mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
.field private nCurrentUploadedCount:I
.field private nThreading:I
.field private nUploadDataType:I
.field private strPutUrl:Ljava/lang/String;
.field private strPutUrl_Address:Ljava/lang/String;
.field private strPutUrl_Path:Ljava/lang/String;
.field private strTblName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "^(\\w+:\\/\\/.+?)(\\/.+)$"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/controller/UploadController;->url_information_regex:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/cloud/controller/AnalysisController;Lcom/pinguo/camera360/cloud/controller/ScanController;Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;)V
.registers 12
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
const-wide/16 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
iput-boolean v5, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
new-array v0, v6, [Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mThreads:[Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
iput v5, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Address:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Path:Ljava/lang/String;
iput-wide v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
iput-wide v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
iput-wide v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
const-wide/32 v0, 0x360420
iput-wide v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlTimeOut:J
iput-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
iput-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
iput v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nUploadDataType:I
iput-boolean v5, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bBeginUpload:Z
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mReadDataLock:Ljava/util/concurrent/locks/Lock;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUpdateLock:Ljava/util/concurrent/locks/Lock;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mEndLock:Ljava/util/concurrent/locks/Lock;
iput-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
iput-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
iput v5, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
iput-object p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
iput-object p3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
iput-object p4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
iput-wide v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
iput-wide v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
iput-wide v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Address:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->putUrlTimeout()Z
move-result v0
return v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->reloadPutUrl()Z
move-result v0
return v0
.end method
.method static synthetic access$12()Ljava/util/regex/Pattern;
.registers 1
sget-object v0, Lcom/pinguo/camera360/cloud/controller/UploadController;->url_information_regex:Ljava/util/regex/Pattern;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Address:Ljava/lang/String;
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Path:Ljava/lang/String;
return-void
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bBeginUpload:Z
return v0
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/cloud/controller/UploadController;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bBeginUpload:Z
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/cloud/controller/UploadController;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
return v0
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/cloud/controller/UploadController;)I
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getUploadDataType()I
move-result v0
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl_Path:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUpdateLock:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method static synthetic access$21(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/AnalysisController;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
return-object v0
.end method
.method static synthetic access$22(Lcom/pinguo/camera360/cloud/controller/UploadController;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
return-void
.end method
.method static synthetic access$23(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mEndLock:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method static synthetic access$24(Lcom/pinguo/camera360/cloud/controller/UploadController;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
return v0
.end method
.method static synthetic access$25(Lcom/pinguo/camera360/cloud/controller/UploadController;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
return-void
.end method
.method static synthetic access$26(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getThreadStatus()Z
move-result v0
return v0
.end method
.method static synthetic access$27(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->setUploadData_DataBase()V
return-void
.end method
.method static synthetic access$28(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->uploadFinish()V
return-void
.end method
.method static synthetic access$29(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->setUploadData_Sdcard()V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$30(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->startSecondUploadServer()V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/cloud/controller/UploadController;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
return-wide v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/cloud/controller/UploadController;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/cloud/controller/UploadController;)Lcom/pinguo/camera360/cloud/controller/ScanController;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/cloud/controller/UploadController;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/controller/UploadController;->uploadFailed(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/cloud/controller/UploadController;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
return v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/cloud/controller/UploadController;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mReadDataLock:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method private cleanUploadData()V
.registers 4
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->cleanCRC32Data()V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
if-eqz v0, :cond_16
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v2}, Lorg/pinguo/cloudshare/support/FileSupport;->resetNeedUploadStatus(Ljava/lang/String;)V
:cond_16
return-void
.end method
.method private createTmpDir()V
.registers 8
const-string/jumbo v3, "CloudServiceManager"
const-string/jumbo v4, "createTmpDir"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
sget-object v3, Lorg/pinguo/cloudshare/support/Config;->TEMP_PICTURE_PATH:Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_30
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-nez v1, :cond_1d
:goto_1c
:cond_1c
return-void
:cond_1d
array-length v4, v1
const/4 v3, 0x0
:goto_1f
if-lt v3, v4, :cond_40
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v3
if-nez v3, :cond_30
const-string/jumbo v3, "CloudServiceManager"
const-string/jumbo v4, "Delete file failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
move-result v3
if-nez v3, :cond_1c
const-string/jumbo v3, "CloudServiceManager"
const-string/jumbo v4, "Create file failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1c
:cond_40
aget-object v2, v1, v3
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v5
if-nez v5, :cond_51
const-string/jumbo v5, "CloudServiceManager"
const-string/jumbo v6, "Delete file failed!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_51
add-int/lit8 v3, v3, 0x1
goto :goto_1f
.end method
.method private getThreadStatus()Z
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
const/4 v0, 0x1
goto :goto_5
.end method
.method private getUploadDataType()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nUploadDataType:I
return v0
.end method
.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
.registers 30
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v7, "--"
const-string/jumbo v5, "\r\n"
const-string/jumbo v6, "multipart/form-data"
const-string/jumbo v4, "UTF-8"
new-instance v23, Ljava/net/URL;
move-object/from16 v0, v23
move-object/from16 v1, p0
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v11
check-cast v11, Ljava/net/HttpURLConnection;
const v24, 0x88b8
move/from16 v0, v24
invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
const/16 v24, 0x1388
move/from16 v0, v24
invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const/16 v24, 0x1
move/from16 v0, v24
invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const/16 v24, 0x1
move/from16 v0, v24
invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/16 v24, 0x0
move/from16 v0, v24
invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
const-string/jumbo v24, "POST"
move-object/from16 v0, v24
invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string/jumbo v24, "connection"
const-string/jumbo v25, "keep-alive"
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v24, "Charsert"
const-string/jumbo v25, "UTF-8"
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v24, "Content-Type"
new-instance v25, Ljava/lang/StringBuilder;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v26
invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v26, ";boundary="
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, v25
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v24
invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v25
:goto_9a
invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z
move-result v24
if-nez v24, :cond_136
new-instance v20, Ljava/io/DataOutputStream;
invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v24
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
const/4 v8, 0x0
:try_start_ae
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B
move-result-object v24
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
if-eqz p2, :cond_cd
invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v24
invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v25
:goto_c7
invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z
move-result v24
if-nez v24, :cond_1da
:cond_cd
new-instance v24, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v25
invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v24
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B
move-result-object v13
move-object/from16 v0, v20
invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->write([B)V
invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->flush()V
invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v22
const/16 v24, 0xc8
move/from16 v0, v22
move/from16 v1, v24
if-ne v0, v1, :cond_2c2
new-instance v9, Ljava/io/BufferedReader;
new-instance v24, Ljava/io/InputStreamReader;
invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v25
invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
move-object/from16 v0, v24
invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_114
.catchall {:try_start_ae .. :try_end_114} :catchall_296
const/16 v19, 0x0
:try_start_116
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
:goto_11b
invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v19
if-nez v19, :cond_2b8
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_124
.catchall {:try_start_116 .. :try_end_124} :catchall_2bf
move-result-object v24
if-eqz v9, :cond_12a
invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
:cond_12a
if-eqz v20, :cond_12f
invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V
:cond_12f
if-eqz v11, :cond_134
invoke-static {v11}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_134
move-object v8, v9
:goto_135
return-object v24
:cond_136
invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/Map$Entry;
move-object/from16 v0, v21
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v21
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v21
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v26, Ljava/lang/StringBuilder;
const-string/jumbo v24, "Content-Disposition: form-data; name=\""
move-object/from16 v0, v26
move-object/from16 v1, v24
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/lang/String;
move-object/from16 v0, v26
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
const-string/jumbo v26, "\""
move-object/from16 v0, v24
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
move-object/from16 v0, v21
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v24, Ljava/lang/StringBuilder;
const-string/jumbo v26, "Content-Type: text/plain; charset="
move-object/from16 v0, v24
move-object/from16 v1, v26
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v24
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
move-object/from16 v0, v21
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v24, Ljava/lang/StringBuilder;
const-string/jumbo v26, "Content-Transfer-Encoding: 8bit"
move-object/from16 v0, v24
move-object/from16 v1, v26
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v24
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
move-object/from16 v0, v21
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v21
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/lang/String;
move-object/from16 v0, v21
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v21
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_9a
:try_start_1da
:cond_1da
invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, Ljava/util/Map$Entry;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v16
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v16
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v16
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v26, Ljava/lang/StringBuilder;
const-string/jumbo v24, "Content-Disposition: form-data; name=\"file\"; filename=\""
move-object/from16 v0, v26
move-object/from16 v1, v24
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/lang/String;
move-object/from16 v0, v26
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
const-string/jumbo v26, "\""
move-object/from16 v0, v24
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
move-object/from16 v0, v16
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v24, Ljava/lang/StringBuilder;
const-string/jumbo v26, "Content-Type: image/jpeg; charset="
move-object/from16 v0, v24
move-object/from16 v1, v26
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v24
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
move-object/from16 v0, v16
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v16
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B
move-result-object v24
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
new-instance v17, Ljava/io/FileInputStream;
invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/io/File;
move-object/from16 v0, v17
move-object/from16 v1, v24
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_270
.catchall {:try_start_1da .. :try_end_270} :catchall_296
const/16 v24, 0x2000
:try_start_272
move/from16 v0, v24
new-array v10, v0, [B
const/16 v18, 0x0
:goto_278
move-object/from16 v0, v17
invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I
:try_end_27d
.catchall {:try_start_272 .. :try_end_27d} :catchall_2b3
move-result v18
const/16 v24, -0x1
move/from16 v0, v18
move/from16 v1, v24
if-ne v0, v1, :cond_2a7
:try_start_286
invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
move-result-object v24
move-object/from16 v0, v20
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
:try_end_294
.catchall {:try_start_286 .. :try_end_294} :catchall_296
goto/16 :goto_c7
:catchall_296
move-exception v24
:goto_297
if-eqz v8, :cond_29c
invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
:cond_29c
if-eqz v20, :cond_2a1
invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V
:cond_2a1
if-eqz v11, :cond_2a6
invoke-static {v11}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_2a6
throw v24
:cond_2a7
const/16 v24, 0x0
:try_start_2a9
move-object/from16 v0, v20
move/from16 v1, v24
move/from16 v2, v18
invoke-virtual {v0, v10, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
:try_end_2b2
.catchall {:try_start_2a9 .. :try_end_2b2} :catchall_2b3
goto :goto_278
:catchall_2b3
move-exception v24
:try_start_2b4
invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
throw v24
:try_end_2b8
.catchall {:try_start_2b4 .. :try_end_2b8} :catchall_296
:cond_2b8
:try_start_2b8
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_2bd
.catchall {:try_start_2b8 .. :try_end_2bd} :catchall_2bf
goto/16 :goto_11b
:catchall_2bf
move-exception v24
move-object v8, v9
goto :goto_297
:cond_2c2
if-eqz v8, :cond_2c7
invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
:cond_2c7
if-eqz v20, :cond_2cc
invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V
:cond_2cc
if-eqz v11, :cond_2d1
invoke-static {v11}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_2d1
const/16 v24, 0x0
goto/16 :goto_135
.end method
.method private putUrlTimeout()Z
.registers 6
const/4 v0, 0x1
iget-wide v1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-nez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
sub-long/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J
move-result-wide v1
iget-wide v3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlTimeOut:J
cmp-long v1, v1, v3
if-gtz v1, :cond_9
const/4 v0, 0x0
goto :goto_9
.end method
.method private reloadPutUrl()Z
.registers 11
const/4 v0, 0x0
:try_start_1
iget-object v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
invoke-static {v6}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z
move-result v6
if-nez v6, :cond_18
new-instance v6, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;
invoke-direct {v6}, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;-><init>()V
throw v6
:catch_13
:try_end_13
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_13} :catch_13
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_1 .. :try_end_13} :catch_74
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_1 .. :try_end_13} :catch_76
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_1 .. :try_end_13} :catch_78
move-exception v1
invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
:cond_17
:goto_17
return v0
:cond_18
:try_start_18
invoke-virtual {v5}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v2
iget-object v6, v2, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
iget-object v7, v2, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
invoke-virtual {p0, v6, v7, v8}, Lcom/pinguo/camera360/cloud/controller/UploadController;->putUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
move-result-object v3
if-eqz v3, :cond_17
const-string/jumbo v6, "putURL"
invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
iput-object v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
const-string/jumbo v6, "serTime"
invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
iput-wide v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "000"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
move-result-wide v6
iput-wide v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
iget-wide v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
iget-wide v8, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
sub-long/2addr v6, v8
iput-wide v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
const-string/jumbo v6, "tblName"
invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
iput-object v6, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
:try_end_72
.catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_72} :catch_13
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_18 .. :try_end_72} :catch_74
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_18 .. :try_end_72} :catch_76
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_18 .. :try_end_72} :catch_78
const/4 v0, 0x1
goto :goto_17
:catch_74
move-exception v1
throw v1
:catch_76
move-exception v1
throw v1
:catch_78
move-exception v1
throw v1
.end method
.method private removeTmpDir()V
.registers 8
const-string/jumbo v3, "CloudServiceManager"
const-string/jumbo v4, "removeTmpDir"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
sget-object v3, Lorg/pinguo/cloudshare/support/Config;->TEMP_PICTURE_PATH:Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_23
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_20
array-length v4, v1
const/4 v3, 0x0
:goto_1e
if-lt v3, v4, :cond_24
:cond_20
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_23
return-void
:cond_24
aget-object v2, v1, v3
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v5
if-nez v5, :cond_35
const-string/jumbo v5, ""
const-string/jumbo v6, "Delete file failed!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_35
add-int/lit8 v3, v3, 0x1
goto :goto_1e
.end method
.method private setUploadData_DataBase()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nUploadDataType:I
return-void
.end method
.method private setUploadData_Sdcard()V
.registers 2
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nUploadDataType:I
return-void
.end method
.method private startFirstUploadServer()V
.registers 7
const/4 v5, 0x0
const-wide/16 v3, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z
move-result v2
if-nez v2, :cond_1c
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
const-string/jumbo v3, "\u7528\u6237\u4e0d\u5408\u6cd5"
invoke-interface {v2, v3}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllFailed(Ljava/lang/String;)V
:cond_1b
:goto_1b
return-void
:cond_1c
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
iput v5, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
iput-boolean v5, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bBeginUpload:Z
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
iput-wide v3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
iput-wide v3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
iput-wide v3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->createTmpDir()V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
iget-object v3, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->reloadRecorder(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->startUpload()V
goto :goto_1b
.end method
.method private startSecondUploadServer()V
.registers 4
iget-boolean v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
if-eqz v2, :cond_1c
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z
move-result v2
if-eqz v2, :cond_1c
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v2}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUpload(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->startUpload()V
:cond_1c
return-void
.end method
.method private startUpload()V
.registers 5
const/4 v3, 0x1
const/4 v1, 0x0
iput v3, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nThreading:I
const/4 v0, 0x0
:goto_5
if-lt v0, v3, :cond_8
return-void
:cond_8
new-instance v1, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;-><init>(Lcom/pinguo/camera360/cloud/controller/UploadController;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->start()V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mThreads:[Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
aput-object v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method private stopUpload()V
.registers 7
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mScanController:Lcom/pinguo/camera360/cloud/controller/ScanController;
invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/controller/ScanController;->stopScanPath()V
invoke-static {}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->stopUsedSpace()V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopCheckList()V
invoke-static {}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->stopDayComplete()V
invoke-static {}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->stopMultiDayComplete()V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadURL()V
invoke-static {}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->stopUploadErrorLog()V
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
if-eqz v1, :cond_28
iget-object v4, v1, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v4}, Lorg/pinguo/cloudshare/support/FileSupport;->resetNeedUploadStatus(Ljava/lang/String;)V
:cond_28
const/4 v2, 0x0
const/4 v4, 0x0
iput-boolean v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
const/4 v0, 0x0
:goto_2d
const/4 v4, 0x1
if-lt v0, v4, :cond_34
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->removeTmpDir()V
return-void
:cond_34
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mThreads:[Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
aget-object v2, v4, v0
if-eqz v2, :cond_40
invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->interrupt()V
invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;->stopImageRequest()V
:cond_40
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mThreads:[Lcom/pinguo/camera360/cloud/controller/UploadController$UploadThread;
const/4 v5, 0x0
aput-object v5, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2d
.end method
.method private uploadFailed(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadServer()V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllFailed(Ljava/lang/String;)V
:cond_c
return-void
.end method
.method private uploadFinish()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadServer()V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadFunction:Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
invoke-interface {v0}, Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;->uploadAllSuccess()V
:cond_c
return-void
.end method
.method public checkUploading()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
return v0
.end method
.method public getCheckList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashSet;
.registers 23
const-string/jumbo v1, "CloudServiceManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "getCheckList date="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v8, 0x0
:try_start_19
new-instance v1, Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
sget-object v2, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_ADDRESS:Ljava/lang/String;
const-string/jumbo v3, "/api/Sync/GetCheckList"
move-object/from16 v4, p1
move-object/from16 v5, p3
move-object/from16 v6, p2
invoke-direct/range {v1 .. v6}, Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iput-object v1, v0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
move-object/from16 v0, p4
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;->setContext(Landroid/content/Context;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;->sendMethod()Z
move-result v1
if-eqz v1, :cond_88
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;->getResponse()Ljava/lang/String;
move-result-object v11
const/4 v14, 0x0
const/4 v12, 0x0
new-instance v10, Lcom/google/gson/stream/JsonReader;
new-instance v1, Ljava/io/StringReader;
invoke-direct {v1, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v10, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->beginObject()V
const/4 v15, 0x0
:goto_58
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v1
if-nez v1, :cond_89
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->endObject()V
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->close()V
const-string/jumbo v1, "200"
invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_88
new-instance v9, Ljava/util/HashSet;
invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
:try_start_72
:try_end_72
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_72} :catch_c3
.catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_72} :catch_d8
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_19 .. :try_end_72} :catch_dd
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_19 .. :try_end_72} :catch_df
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_19 .. :try_end_72} :catch_e1
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_f2
const-string/jumbo v1, ","
invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v13
array-length v2, v13
:try_end_84
.catch Ljava/io/IOException; {:try_start_72 .. :try_end_84} :catch_ef
.catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_84} :catch_ec
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_72 .. :try_end_84} :catch_e9
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_72 .. :try_end_84} :catch_e6
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_72 .. :try_end_84} :catch_e3
const/4 v1, 0x0
:goto_85
if-lt v1, v2, :cond_c8
move-object v8, v9
:goto_88
:cond_88
return-object v8
:try_start_89
:cond_89
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;
move-result-object v15
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v16
const-string/jumbo v1, "status"
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_ab
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->nextInt()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v14
goto :goto_58
:cond_ab
const-string/jumbo v1, "crc32_values"
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_bf
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v12
goto :goto_58
:cond_bf
invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->skipValue()V
:try_end_c2
.catch Ljava/io/IOException; {:try_start_89 .. :try_end_c2} :catch_c3
.catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_c2} :catch_d8
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_89 .. :try_end_c2} :catch_dd
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_89 .. :try_end_c2} :catch_df
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_89 .. :try_end_c2} :catch_e1
goto :goto_58
:catch_c3
move-exception v7
:goto_c4
invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
goto :goto_88
:try_start_c8
:cond_c8
aget-object v17, v13, v1
const/16 v3, 0x10
move-object/from16 v0, v17
invoke-static {v0, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:try_end_d5
.catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d5} :catch_ef
.catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_d5} :catch_ec
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_c8 .. :try_end_d5} :catch_e9
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_c8 .. :try_end_d5} :catch_e6
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_c8 .. :try_end_d5} :catch_e3
add-int/lit8 v1, v1, 0x1
goto :goto_85
:catch_d8
move-exception v7
:goto_d9
invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
goto :goto_88
:catch_dd
move-exception v7
:goto_de
throw v7
:catch_df
move-exception v7
:goto_e0
throw v7
:catch_e1
move-exception v7
:goto_e2
throw v7
:catch_e3
move-exception v7
move-object v8, v9
goto :goto_e2
:catch_e6
move-exception v7
move-object v8, v9
goto :goto_e0
:catch_e9
move-exception v7
move-object v8, v9
goto :goto_de
:catch_ec
move-exception v7
move-object v8, v9
goto :goto_d9
:catch_ef
move-exception v7
move-object v8, v9
goto :goto_c4
:cond_f2
move-object v8, v9
goto :goto_88
.end method
.method public getCurrentUploadedCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
return v0
.end method
.method public getUploadStatus()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
return v0
.end method
.method public isUploading()Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getThreadStatus()Z
move-result v0
return v0
.end method
.method public putUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
.registers 14
const/4 v1, 0x0
new-instance v7, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
sget-object v8, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_ADDRESS:Ljava/lang/String;
const-string/jumbo v9, "/api/Sync/PutUrl"
invoke-direct {v7, v8, v9, p1, p2}, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v7, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
iget-object v7, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
invoke-virtual {v7, p3}, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->setContext(Landroid/content/Context;)V
:try_start_12
iget-object v7, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
invoke-virtual {v7}, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->sendMethod()Z
move-result v7
if-eqz v7, :cond_44
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
:try_start_1f
:try_end_1f
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_df
.catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1f} :catch_dd
.catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_db
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_12 .. :try_end_1f} :catch_d9
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_12 .. :try_end_1f} :catch_d7
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_12 .. :try_end_1f} :catch_d5
iget-object v7, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
invoke-virtual {v7}, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->getResponse()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
new-instance v3, Lcom/google/gson/stream/JsonReader;
new-instance v7, Ljava/io/StringReader;
invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v3, v7}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->beginObject()V
const/4 v5, 0x0
:goto_37
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v7
if-nez v7, :cond_45
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->endObject()V
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V
move-object v1, v2
:goto_44
:cond_44
return-object v1
:cond_45
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;
move-result-object v5
sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "status"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_66
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextInt()I
:try_end_5f
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_5f} :catch_60
.catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_5f} :catch_73
.catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_5f} :catch_8d
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_1f .. :try_end_5f} :catch_ab
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_1f .. :try_end_5f} :catch_ca
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_1f .. :try_end_5f} :catch_d2
goto :goto_37
:catch_60
move-exception v0
move-object v1, v2
:goto_62
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_44
:cond_66
:try_start_66
const-string/jumbo v7, "message"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_79
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
:try_end_72
.catch Ljava/io/IOException; {:try_start_66 .. :try_end_72} :catch_60
.catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_72} :catch_73
.catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_72} :catch_8d
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_66 .. :try_end_72} :catch_ab
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_66 .. :try_end_72} :catch_ca
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_66 .. :try_end_72} :catch_d2
goto :goto_37
:catch_73
move-exception v0
move-object v1, v2
:goto_75
invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
goto :goto_44
:try_start_79
:cond_79
const-string/jumbo v7, "tblname"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_93
const-string/jumbo v7, "tblName"
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_8c
.catch Ljava/io/IOException; {:try_start_79 .. :try_end_8c} :catch_60
.catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_8c} :catch_73
.catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_8c} :catch_8d
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_79 .. :try_end_8c} :catch_ab
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_79 .. :try_end_8c} :catch_ca
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_79 .. :try_end_8c} :catch_d2
goto :goto_37
:catch_8d
move-exception v0
move-object v1, v2
:goto_8f
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
goto :goto_44
:cond_93
:try_start_93
const-string/jumbo v7, "sertime"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_ae
const-string/jumbo v7, "serTime"
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextInt()I
move-result v8
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_aa
.catch Ljava/io/IOException; {:try_start_93 .. :try_end_aa} :catch_60
.catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_aa} :catch_73
.catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_aa} :catch_8d
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_93 .. :try_end_aa} :catch_ab
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_93 .. :try_end_aa} :catch_ca
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_93 .. :try_end_aa} :catch_d2
goto :goto_37
:catch_ab
move-exception v0
move-object v1, v2
:goto_ad
throw v0
:cond_ae
:try_start_ae
const-string/jumbo v7, "puturl"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_cd
const-string/jumbo v7, "putURL"
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "UTF-8"
invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_c8
.catch Ljava/io/IOException; {:try_start_ae .. :try_end_c8} :catch_60
.catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_c8} :catch_73
.catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_c8} :catch_8d
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_ae .. :try_end_c8} :catch_ab
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_ae .. :try_end_c8} :catch_ca
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_ae .. :try_end_c8} :catch_d2
goto/16 :goto_37
:catch_ca
move-exception v0
move-object v1, v2
:goto_cc
throw v0
:cond_cd
:try_start_cd
invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->skipValue()V
:try_end_d0
.catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_60
.catch Ljava/lang/IllegalStateException; {:try_start_cd .. :try_end_d0} :catch_73
.catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_d0} :catch_8d
.catch Lcom/pinguo/camera360/cloud/exception/DisableServerException; {:try_start_cd .. :try_end_d0} :catch_ab
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_cd .. :try_end_d0} :catch_ca
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_cd .. :try_end_d0} :catch_d2
goto/16 :goto_37
:catch_d2
move-exception v0
move-object v1, v2
:goto_d4
throw v0
:catch_d5
move-exception v0
goto :goto_d4
:catch_d7
move-exception v0
goto :goto_cc
:catch_d9
move-exception v0
goto :goto_ad
:catch_db
move-exception v0
goto :goto_8f
:catch_dd
move-exception v0
goto :goto_75
:catch_df
move-exception v0
goto :goto_62
.end method
.method public resetPutUrl()V
.registers 4
const-wide/16 v1, 0x0
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strTblName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->strPutUrl:Ljava/lang/String;
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlSer:J
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlOffset:J
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->lPutUrlLocal:J
return-void
.end method
.method public setCurrentUploadedCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->nCurrentUploadedCount:I
return-void
.end method
.method public startUploadServer()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->startFirstUploadServer()V
return-void
.end method
.method public stopCheckList()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mCheckListRequestConsole:Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/GetCheckListRequestConsole;->stop()V
:cond_9
return-void
.end method
.method public stopUploadServer()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->bUploadRunning:Z
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUpload()V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->cleanUploadData()V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->setUploadData_DataBase()V
return-void
.end method
.method public stopUploadURL()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/UploadController;->mUploadURLRequestConsole:Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/request/UploadURLRequestConsole;->stop()V
:cond_9
return-void
.end method