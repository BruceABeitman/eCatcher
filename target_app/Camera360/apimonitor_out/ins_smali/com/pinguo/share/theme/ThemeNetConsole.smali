.class public Lcom/pinguo/share/theme/ThemeNetConsole;
.super Ljava/lang/Object;
.source "ThemeNetConsole.java"
.field public static final BUFFER_SIZE:I = 0x1000
.field public static final CONNECTION_TIME_OUT:I = 0x7530
.field public static final READ_TIME_OUT:I = 0x7530
.field public static final SELECT_THEME_ID_TEMP:Ljava/lang/String; = "special.temp"
.field private static final TAG:Ljava/lang/String; = null
.field public static final THEME_TEMPLATE_FILE_NAME:Ljava/lang/String; = null
.field public static final THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String; = null
.field private static final THEME_URI:Ljava/lang/String; = "http://theme4.camera360.com/Rest.ashx"
.field private static final THEME_URI_TEST:Ljava/lang/String; = "http://apprestest2.camera360.com/Rest.ashx"
.field public static THREAD_CANCEL:I
.field public static THREAD_CANCEL_DOWNLOAD:I
.field private static THREAD_COUNT:I
.field private static bThemeInformation:Z
.field public static final lock:[B
.field private bCancelThread:Z
.field private bLoadCancel:Z
.field private mContext:Landroid/content/Context;
.field private mDownloadList:Ljava/util/List;
.field private mParentHandler:Landroid/os/Handler;
.field private mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
.field private strMethod:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
const/4 v0, 0x1
new-array v0, v0, [B
sput-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->lock:[B
sget-object v0, Lcom/pinguo/share/ShareConstants;->TEMPLATE_DATA:Ljava/lang/String;
sput-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "theme_list_new.xml"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
const v0, 0x10101
sput v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_CANCEL:I
const v0, 0x10102
sput v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_CANCEL_DOWNLOAD:I
const/4 v0, 0x3
sput v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_COUNT:I
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/share/theme/ThemeNetConsole;->bThemeInformation:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v1, "style_get_latest"
iput-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->strMethod:Ljava/lang/String;
sget v1, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_COUNT:I
new-array v1, v1, [Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
iput-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
iput-boolean v2, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
iput-boolean v2, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bLoadCancel:Z
iput-object v3, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
const/4 v0, 0x0
:goto_24
sget v1, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_COUNT:I
if-lt v0, v1, :cond_29
return-void
:cond_29
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
new-instance v2, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
invoke-direct {v2, p0, v3}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;-><init>(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_24
.end method
.method private ThemeSendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.registers 5
invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/theme/ThemeNetConsole;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 2
invoke-direct {p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getNextData()Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/share/theme/ThemeNetConsole;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/share/theme/ThemeNetConsole;)Lorg/apache/http/client/HttpClient;
.registers 2
invoke-direct {p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getConnection()Lorg/apache/http/client/HttpClient;
move-result-object v0
return-object v0
.end method
.method static synthetic access$2()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/share/theme/ThemeNetConsole;->startFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)I
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/share/theme/ThemeNetConsole;->download(Lcom/pinguo/share/theme/ThemeXMLStruct;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)I
move-result v0
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/share/theme/ThemeNetConsole;->errorFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/share/theme/ThemeNetConsole;->stopFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/share/theme/ThemeNetConsole;->cancelFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/share/theme/ThemeNetConsole;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/share/theme/ThemeNetConsole;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
return v0
.end method
.method private cancelFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
const v2, 0x10006
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public static checkAndUpdateTimespan(Landroid/content/Context;)Z
.registers 11
const/4 v5, 0x0
const-string/jumbo v6, "theme_info"
invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-string/jumbo v6, "lastTime"
const-wide/16 v7, -0x1
invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
sub-long v6, v1, v3
const-wide/32 v8, 0x1d4c0
cmp-long v6, v6, v8
if-lez v6, :cond_2d
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v5
const-string/jumbo v6, "lastTime"
invoke-interface {v5, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
const/4 v5, 0x1
:cond_2d
return v5
.end method
.method private download(Lcom/pinguo/share/theme/ThemeXMLStruct;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)I
.registers 23
new-instance v17, Ljava/lang/StringBuilder;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v18
invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v18
invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
new-instance v17, Ljava/lang/StringBuilder;
sget-object v18, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v18
invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v18, "/"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v18
invoke-static/range {v18 .. v18}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z
invoke-static/range {p2 .. p2}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$1(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
move-result v17
if-eqz v17, :cond_47
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z
invoke-static/range {p2 .. p2}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$2(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
move-result v17
if-nez v17, :cond_4a
:cond_47
const/16 v17, 0x2
:goto_49
return v17
:cond_4a
const-wide/16 v17, -0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
move-wide/from16 v2, v17
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/share/theme/ThemeNetConsole;->goFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;J)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getConnection()Lorg/apache/http/client/HttpClient;
move-result-object v5
if-nez v5, :cond_5e
const/16 v17, 0x0
goto :goto_49
:cond_5e
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z
invoke-static/range {p2 .. p2}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$1(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
move-result v17
if-eqz v17, :cond_6a
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z
invoke-static/range {p2 .. p2}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$2(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
move-result v17
if-nez v17, :cond_6d
:cond_6a
const/16 v17, 0x2
goto :goto_49
:cond_6d
const-wide/16 v17, -0x1
:try_start_6f
move-object/from16 v0, p0
move-object/from16 v1, p1
move-wide/from16 v2, v17
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/share/theme/ThemeNetConsole;->goFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;J)V
new-instance v13, Lorg/apache/http/client/methods/HttpGet;
move-object/from16 v0, v16
invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v5, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v14
invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v17
invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v8
new-instance v7, Ljava/io/File;
invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v17
if-nez v17, :cond_b3
invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
move-result v17
if-nez v17, :cond_b3
sget-object v17, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "Create new file failed!"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_b3
new-instance v12, Ljava/io/FileOutputStream;
invoke-direct {v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v17, 0x1000
move/from16 v0, v17
new-array v4, v0, [B
const/4 v11, -0x1
const-wide/16 v9, 0x0
:cond_c1
invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I
move-result v11
const/16 v17, -0x1
move/from16 v0, v17
if-ne v11, v0, :cond_d8
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
const/16 v17, 0x1
goto/16 :goto_49
:cond_d8
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v12, v4, v0, v11}, Ljava/io/OutputStream;->write([BII)V
int-to-long v0, v11
move-wide/from16 v17, v0
add-long v9, v9, v17
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v9, v10}, Lcom/pinguo/share/theme/ThemeNetConsole;->goFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;J)V
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z
invoke-static/range {p2 .. p2}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$1(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
move-result v17
if-eqz v17, :cond_f7
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z
invoke-static/range {p2 .. p2}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$2(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
move-result v17
if-nez v17, :cond_c1
:cond_f7
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v17
if-eqz v17, :cond_120
invoke-virtual {v7}, Ljava/io/File;->delete()Z
move-result v17
if-nez v17, :cond_120
sget-object v17, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "Delete file failed!"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_120
.catch Ljava/io/IOException; {:try_start_6f .. :try_end_120} :catch_124
:cond_120
const/16 v17, 0x2
goto/16 :goto_49
:catch_124
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
new-instance v7, Ljava/io/File;
invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v17
if-eqz v17, :cond_142
invoke-virtual {v7}, Ljava/io/File;->delete()Z
move-result v17
if-nez v17, :cond_142
const-string/jumbo v17, ""
const-string/jumbo v18, "Delete file failed!"
invoke-static/range {v17 .. v18}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_142
const/16 v17, 0x0
goto/16 :goto_49
.end method
.method private errorFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
const v2, 0x10005
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method private getConnection()Lorg/apache/http/client/HttpClient;
.registers 5
const/16 v3, 0x7530
invoke-virtual {p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->currentNetType()I
move-result v2
if-nez v2, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v1, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
goto :goto_9
.end method
.method public static getLastTime(Landroid/content/Context;)Ljava/lang/String;
.registers 10
const-wide/16 v7, -0x1
const-string/jumbo v5, "theme_info"
const/4 v6, 0x0
invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
const-string/jumbo v5, "lastTime"
invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
const/4 v2, 0x0
cmp-long v5, v0, v7
if-eqz v5, :cond_29
new-instance v3, Ljava/text/SimpleDateFormat;
const-string/jumbo v5, "yyyyMMdd"
sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v5, Ljava/util/Date;
invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
:cond_29
return-object v2
.end method
.method private declared-synchronized getNextData()Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 4
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_1f
move-result v1
if-nez v1, :cond_10
:cond_d
const/4 v0, 0x0
:goto_e
monitor-exit p0
return-object v0
:cond_10
:try_start_10
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/theme/ThemeXMLStruct;
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:try_end_1e
.catchall {:try_start_10 .. :try_end_1e} :catchall_1f
goto :goto_e
:catchall_1f
move-exception v1
monitor-exit p0
throw v1
.end method
.method private getRequestPath()Ljava/lang/String;
.registers 6
const-string/jumbo v2, "http://theme4.camera360.com/Rest.ashx"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "?"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "method="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->strMethod:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&version="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&language="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&pack="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
move-result-object v4
iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&imei="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&net="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getNetName(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "&cuid="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/theme/ThemeNetConsole;->getLastTime(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_97
const-string/jumbo v3, "&last="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_97
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public static getTemplateInformation()Z
.registers 1
sget-boolean v0, Lcom/pinguo/share/theme/ThemeNetConsole;->bThemeInformation:Z
return v0
.end method
.method private goFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;J)V
.registers 4
return-void
.end method
.method private readJSONData(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;
.registers 14
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
:try_start_5
iget-boolean v8, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bLoadCancel:Z
:try_end_7
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_59
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_5e
if-eqz v8, :cond_d
const-string/jumbo v8, ""
:goto_c
return-object v8
:cond_d
:try_start_d
const-string/jumbo v8, "theme"
invoke-static {v8, p2}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v5, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {p1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v6
invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v8
invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v2
const/16 v8, 0x1000
new-array v0, v8, [B
const/4 v4, -0x1
const/4 v3, 0x0
:goto_2a
invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
move-result v4
const/4 v8, -0x1
if-ne v4, v8, :cond_43
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_34
:try_end_34
.catch Ljava/io/IOException; {:try_start_d .. :try_end_34} :catch_59
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_34} :catch_5e
const-string/jumbo v8, "theme"
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
goto :goto_c
:try_start_43
:cond_43
iget-boolean v8, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bLoadCancel:Z
:try_end_45
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_45} :catch_59
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_45} :catch_5e
if-eqz v8, :cond_4b
const-string/jumbo v8, ""
goto :goto_c
:cond_4b
:try_start_4b
new-instance v8, Ljava/lang/String;
const/4 v9, 0x0
const-string/jumbo v10, "UTF-8"
invoke-direct {v8, v0, v9, v4, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_57
.catch Ljava/io/IOException; {:try_start_4b .. :try_end_57} :catch_59
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_5e
add-int/2addr v3, v4
goto :goto_2a
:catch_59
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_34
:catch_5e
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_34
.end method
.method private startFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 2
return-void
.end method
.method public static startTemplateInformation()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/pinguo/share/theme/ThemeNetConsole;->bThemeInformation:Z
return-void
.end method
.method private stopFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
const v2, 0x10004
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public cancelThread()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
return-void
.end method
.method public currentNetType()I
.registers 13
const/4 v9, 0x1
const/4 v8, 0x0
:try_start_2
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mContext:Landroid/content/Context;
const-string/jumbo v11, "connectivity"
invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
if-eqz v1, :cond_15
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v10
if-nez v10, :cond_16
:cond_15
:goto_15
return v8
:cond_16
const/4 v10, 0x0
invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v3
const-string/jumbo v5, "DISCONNECTED"
if-eqz v3, :cond_2c
invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
move-result-object v2
invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v5
:cond_2c
const/4 v10, 0x1
invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v10
invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
move-result-object v7
invoke-virtual {v7}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v10
invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_58
sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v4, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v10
const-string/jumbo v11, "wap"
invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v10
if-eqz v10, :cond_58
const/4 v8, 0x3
goto :goto_15
:cond_58
const-string/jumbo v10, "DISCONNECTED"
invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_6a
const-string/jumbo v10, "DISCONNECTED"
invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_15
:cond_6a
const-string/jumbo v10, "DISCONNECTED"
invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_70
.catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_70} :catch_77
move-result v8
if-eqz v8, :cond_75
move v8, v9
goto :goto_15
:cond_75
const/4 v8, 0x2
goto :goto_15
:catch_77
move-exception v0
invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
goto :goto_15
.end method
.method public getDownloadList()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
return-object v0
.end method
.method public getModel(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;
.registers 8
move-object v1, p1
move-object v3, p2
move-object v2, p3
new-instance v0, Lcom/pinguo/share/theme/ThemeNetConsole$1;
invoke-direct {v0, p0, v1, v3, v2}, Lcom/pinguo/share/theme/ThemeNetConsole$1;-><init>(Lcom/pinguo/share/theme/ThemeNetConsole;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-object v0
.end method
.method public getNetDefaultInformation()Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 11
invoke-direct {p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getRequestPath()Ljava/lang/String;
move-result-object v6
const/4 v1, 0x0
iget-boolean v7, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->bLoadCancel:Z
if-eqz v7, :cond_b
move-object v2, v1
:goto_a
return-object v2
:cond_b
invoke-direct {p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getConnection()Lorg/apache/http/client/HttpClient;
move-result-object v0
if-nez v0, :cond_13
move-object v2, v1
goto :goto_a
:cond_13
invoke-direct {p0, v0, v6}, Lcom/pinguo/share/theme/ThemeNetConsole;->readJSONData(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
sget-object v7, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "JSON:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_45
new-instance v3, Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-direct {v3}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V
sget-object v7, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
invoke-virtual {v3, v7, v5}, Lcom/pinguo/share/theme/ThemeXMLConsole;->saveJSONFile(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-direct {v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V
invoke-virtual {v4, v5}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getDefaultInformation(Ljava/lang/String;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v1
:cond_45
move-object v2, v1
goto :goto_a
.end method
.method public getThemeInformation(Ljava/util/List;Landroid/os/Handler;III)Ljava/lang/String;
.registers 23
invoke-static {}, Lcom/pinguo/share/theme/ThemeNetConsole;->startTemplateInformation()V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getRequestPath()Ljava/lang/String;
move-result-object v14
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/share/theme/ThemeNetConsole;->bLoadCancel:Z
if-eqz v15, :cond_f
const/4 v13, 0x0
:goto_e
:cond_e
return-object v13
:cond_f
invoke-direct/range {p0 .. p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getConnection()Lorg/apache/http/client/HttpClient;
move-result-object v3
if-nez v3, :cond_21
const/4 v15, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p4
invoke-direct {v0, v1, v2, v15}, Lcom/pinguo/share/theme/ThemeNetConsole;->ThemeSendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
const/4 v13, 0x0
goto :goto_e
:cond_21
invoke-static {}, Lcom/pinguo/share/theme/ThemeNetConsole;->getTemplateInformation()Z
move-result v15
if-nez v15, :cond_33
const/4 v15, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p5
invoke-direct {v0, v1, v2, v15}, Lcom/pinguo/share/theme/ThemeNetConsole;->ThemeSendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
const/4 v13, 0x0
goto :goto_e
:cond_33
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/share/theme/ThemeNetConsole;->bLoadCancel:Z
if-eqz v15, :cond_3b
const/4 v13, 0x0
goto :goto_e
:cond_3b
move-object/from16 v0, p0
invoke-direct {v0, v3, v14}, Lcom/pinguo/share/theme/ThemeNetConsole;->readJSONData(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const/4 v13, 0x0
invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z
move-result v15
if-nez v15, :cond_16a
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v13
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "{\"data\":"
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, "}"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
:try_start_63
new-instance v15, Lorg/json/JSONObject;
invoke-direct {v15, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v16, "data"
invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v5, 0x0
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v11
:goto_78
if-ge v5, v11, :cond_e
invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
new-instance v10, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-direct {v10}, Lcom/pinguo/share/theme/ThemeXMLStruct;-><init>()V
const-string/jumbo v15, "id"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setId(I)V
const-string/jumbo v15, "url_prefix"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUrlPrefix(Ljava/lang/String;)V
const-string/jumbo v15, "small"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setSmall(Ljava/lang/String;)V
const-string/jumbo v15, "name"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTitle(Ljava/lang/String;)V
const-string/jumbo v15, "preview"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
const/4 v15, 0x0
invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v9
const-string/jumbo v15, "name"
invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewName(Ljava/lang/String;)V
const-string/jumbo v15, "url"
invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewUrl(Ljava/lang/String;)V
const-string/jumbo v15, "activity_id"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setActivity(I)V
const-string/jumbo v15, "tag"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTag(Ljava/lang/String;)V
const-string/jumbo v15, "default"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDefault(Ljava/lang/String;)V
const-string/jumbo v15, "update_time"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUpdate(Ljava/lang/String;)V
:try_start_10b
:try_end_10b
.catch Lorg/json/JSONException; {:try_start_63 .. :try_end_10b} :catch_159
const-string/jumbo v15, "description"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_11e
const-string/jumbo v15, "description"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDescription(Ljava/lang/String;)V
:cond_11e
const-string/jumbo v15, "content"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_131
const-string/jumbo v15, "content"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setContent(Ljava/lang/String;)V
:cond_131
const-string/jumbo v15, "push"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_144
const-string/jumbo v15, "push"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPush(Ljava/lang/String;)V
:try_start_144
:goto_144
:try_end_144
.catch Ljava/lang/Exception; {:try_start_10b .. :try_end_144} :catch_154
.catch Lorg/json/JSONException; {:try_start_10b .. :try_end_144} :catch_159
:cond_144
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p1
invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v5, v5, 0x1
goto/16 :goto_78
:catch_154
move-exception v4
invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
:try_end_158
.catch Lorg/json/JSONException; {:try_start_144 .. :try_end_158} :catch_159
goto :goto_144
:catch_159
move-exception v4
invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
const/4 v15, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p4
invoke-direct {v0, v1, v2, v15}, Lcom/pinguo/share/theme/ThemeNetConsole;->ThemeSendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
const/4 v13, 0x0
goto/16 :goto_e
:cond_16a
const/4 v15, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p4
invoke-direct {v0, v1, v2, v15}, Lcom/pinguo/share/theme/ThemeNetConsole;->ThemeSendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
const/4 v13, 0x0
goto/16 :goto_e
.end method
.method public go(Landroid/os/Handler;)V
.registers 7
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
const/4 v1, 0x0
const/4 v0, 0x0
:goto_4
sget v2, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_COUNT:I
if-lt v0, v2, :cond_9
return-void
:cond_9
iget-object v2, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
aget-object v1, v2, v0
invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->isAlive()Z
move-result v2
if-nez v2, :cond_2d
invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->getState()Ljava/lang/Thread$State;
move-result-object v2
sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;
if-ne v2, v3, :cond_2a
iget-object v2, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
new-instance v3, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;-><init>(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)V
aput-object v3, v2, v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
aget-object v1, v2, v0
:cond_2a
invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->start()V
:cond_2d
add-int/lit8 v0, v0, 0x1
goto :goto_4
.end method
.method public simpleDownload(Lcom/pinguo/share/theme/ThemeXMLStruct;)I
.registers 18
if-nez p1, :cond_4
const/4 v13, 0x0
:goto_3
return v13
:cond_4
new-instance v13, Ljava/lang/StringBuilder;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
new-instance v13, Ljava/lang/StringBuilder;
sget-object v14, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v14, "/"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
new-instance v4, Ljava/io/File;
invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v13
if-eqz v13, :cond_7a
new-instance v7, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v13, 0x1
iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v11, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I
const/4 v14, -0x1
if-eq v13, v14, :cond_5f
iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I
const/4 v14, -0x1
if-ne v13, v14, :cond_82
:cond_5f
invoke-virtual {v4}, Ljava/io/File;->delete()Z
move-result v13
if-nez v13, :cond_7a
sget-object v13, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "Delete file failed!"
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_7a
invoke-direct/range {p0 .. p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getConnection()Lorg/apache/http/client/HttpClient;
move-result-object v1
if-nez v1, :cond_84
const/4 v13, 0x0
goto :goto_3
:cond_82
const/4 v13, 0x1
goto :goto_3
:cond_84
:try_start_84
new-instance v9, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v9, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v1, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v10
invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v13
invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v5
new-instance v3, Ljava/io/File;
invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v13
if-nez v13, :cond_bb
invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
move-result v13
if-nez v13, :cond_bb
sget-object v13, Lcom/pinguo/share/theme/ThemeNetConsole;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "Create new file failed!"
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_bb
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v13, 0x1000
new-array v0, v13, [B
const/4 v6, -0x1
:goto_c5
invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
move-result v6
const/4 v13, -0x1
if-ne v6, v13, :cond_d8
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
const/4 v13, 0x1
goto/16 :goto_3
:cond_d8
const/4 v13, 0x0
invoke-virtual {v8, v0, v13, v6}, Ljava/io/OutputStream;->write([BII)V
:try_end_dc
.catch Ljava/io/IOException; {:try_start_84 .. :try_end_dc} :catch_dd
goto :goto_c5
:catch_dd
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
new-instance v3, Ljava/io/File;
invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v13
if-eqz v13, :cond_fb
invoke-virtual {v3}, Ljava/io/File;->delete()Z
move-result v13
if-nez v13, :cond_fb
const-string/jumbo v13, ""
const-string/jumbo v14, "Delete file failed!"
invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_fb
const/4 v13, 0x0
goto/16 :goto_3
.end method
.method public stop()V
.registers 6
const/4 v4, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
:goto_4
sget v3, Lcom/pinguo/share/theme/ThemeNetConsole;->THREAD_COUNT:I
if-lt v0, v3, :cond_9
return-void
:cond_9
iget-object v3, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mThreads:[Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
aget-object v1, v3, v0
#calls: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->getCurrentStruct()Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v1}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$3(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v2
invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->isAlive()Z
move-result v3
if-eqz v3, :cond_24
#setter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z
invoke-static {v1, v4}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$4(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;Z)V
#setter for: Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z
invoke-static {v1, v4}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->access$5(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;Z)V
if-eqz v2, :cond_24
iget-object v3, p0, Lcom/pinguo/share/theme/ThemeNetConsole;->mDownloadList:Ljava/util/List;
invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_24
add-int/lit8 v0, v0, 0x1
goto :goto_4
.end method