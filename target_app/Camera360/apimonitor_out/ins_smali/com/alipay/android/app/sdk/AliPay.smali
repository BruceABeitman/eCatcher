.class public Lcom/alipay/android/app/sdk/AliPay;
.super Ljava/lang/Object;
.source "AliPay.java"
.field protected static final sLock:Ljava/lang/Object;
.field private final ALIPAY_APK_NAME:Ljava/lang/String;
.field private final MSP_APK_NAME:Ljava/lang/String;
.field private final URL:Ljava/lang/String;
.field private final URL_SANDBOX:Ljava/lang/String;
.field private isInstall:Z
.field private isSandbox:Z
.field private mContext:Landroid/app/Activity;
.field private mDownloadFailRunnable:Ljava/lang/Runnable;
.field private mDownloadType:Ljava/lang/String;
.field private mDownloadUrl:Ljava/lang/String;
.field private mHandler:Landroid/os/Handler;
.field private mInstallMessageAlert:Lcom/alipay/android/app/widget/CustomAlertDialog;
.field private mReceiver:Landroid/content/BroadcastReceiver;
.field private mTimeout:I
.field private mUrl:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "https://mclient.alipay.com/gateway.do"
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->URL:Ljava/lang/String;
const-string/jumbo v0, "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do"
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->URL_SANDBOX:Ljava/lang/String;
const-string/jumbo v0, "alipay_msp.apk"
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->MSP_APK_NAME:Ljava/lang/String;
const-string/jumbo v0, "alipay.apk"
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->ALIPAY_APK_NAME:Ljava/lang/String;
new-instance v0, Lcom/alipay/android/app/sdk/AliPay$1;
invoke-direct {v0, p0}, Lcom/alipay/android/app/sdk/AliPay$1;-><init>(Lcom/alipay/android/app/sdk/AliPay;)V
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadFailRunnable:Ljava/lang/Runnable;
new-instance v0, Lcom/alipay/android/app/sdk/AliPay$2;
invoke-direct {v0, p0}, Lcom/alipay/android/app/sdk/AliPay$2;-><init>(Lcom/alipay/android/app/sdk/AliPay;)V
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mReceiver:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
if-eqz p2, :cond_2c
iput-object p2, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
:goto_2b
return-void
:cond_2c
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
goto :goto_2b
.end method
.method static synthetic access$0(Lcom/alipay/android/app/sdk/AliPay;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic access$1(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$10(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadFailRunnable:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic access$11(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$12(Lcom/alipay/android/app/sdk/AliPay;Lcom/alipay/android/app/widget/CustomAlertDialog;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/AliPay;->mInstallMessageAlert:Lcom/alipay/android/app/widget/CustomAlertDialog;
return-void
.end method
.method static synthetic access$2(Lcom/alipay/android/app/sdk/AliPay;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/alipay/android/app/sdk/AliPay;)I
.registers 2
iget v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mTimeout:I
return v0
.end method
.method static synthetic access$4(Lcom/alipay/android/app/sdk/AliPay;)V
.registers 1
invoke-direct {p0}, Lcom/alipay/android/app/sdk/AliPay;->downloadFile()V
return-void
.end method
.method static synthetic access$5(Lcom/alipay/android/app/sdk/AliPay;)Lcom/alipay/android/app/widget/CustomAlertDialog;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mInstallMessageAlert:Lcom/alipay/android/app/widget/CustomAlertDialog;
return-object v0
.end method
.method static synthetic access$6(Lcom/alipay/android/app/sdk/AliPay;Z)V
.registers 2
iput-boolean p1, p0, Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
return-void
.end method
.method static synthetic access$7(Lcom/alipay/android/app/sdk/AliPay;)Landroid/content/BroadcastReceiver;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mReceiver:Landroid/content/BroadcastReceiver;
return-object v0
.end method
.method static synthetic access$8(Lcom/alipay/android/app/sdk/AliPay;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$9(Lcom/alipay/android/app/sdk/AliPay;)V
.registers 1
invoke-direct {p0}, Lcom/alipay/android/app/sdk/AliPay;->showInstallMessage()V
return-void
.end method
.method private doDownLoad(ZLjava/lang/String;)V
.registers 5
new-instance v0, Lcom/alipay/android/app/sdk/AliPay$4;
invoke-direct {v0, p0, p2, p1}, Lcom/alipay/android/app/sdk/AliPay$4;-><init>(Lcom/alipay/android/app/sdk/AliPay;Ljava/lang/String;Z)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private doInstall(ZLjava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/alipay/android/app/sdk/AliPay$3;
invoke-direct {v0, p0, p3, p1, p2}, Lcom/alipay/android/app/sdk/AliPay$3;-><init>(Lcom/alipay/android/app/sdk/AliPay;Ljava/lang/String;ZLjava/lang/String;)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private downloadFile()V
.registers 9
new-instance v3, Lcom/alipay/android/app/widget/Loading;
iget-object v4, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-direct {v3, v4}, Lcom/alipay/android/app/widget/Loading;-><init>(Landroid/app/Activity;)V
invoke-virtual {v3}, Lcom/alipay/android/app/widget/Loading;->show()V
iget-object v4, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
move-result-object v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "/temp.apk"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/alipay/android/app/util/FileDownloader;
invoke-direct {v2}, Lcom/alipay/android/app/util/FileDownloader;-><init>()V
iget-object v4, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadUrl:Ljava/lang/String;
invoke-virtual {v2, v4}, Lcom/alipay/android/app/util/FileDownloader;->setFileUrl(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Lcom/alipay/android/app/util/FileDownloader;->setSavePath(Ljava/lang/String;)V
new-instance v4, Lcom/alipay/android/app/sdk/AliPay$5;
invoke-direct {v4, p0, v3, v1}, Lcom/alipay/android/app/sdk/AliPay$5;-><init>(Lcom/alipay/android/app/sdk/AliPay;Lcom/alipay/android/app/widget/Loading;Ljava/lang/String;)V
invoke-virtual {v2, v4}, Lcom/alipay/android/app/util/FileDownloader;->setProgressOutput(Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;)V
invoke-virtual {v2}, Lcom/alipay/android/app/util/FileDownloader;->start()V
iget-object v4, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadFailRunnable:Ljava/lang/Runnable;
const-wide/32 v6, 0x88b8
invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private processInstall(ZLjava/lang/String;Lorg/json/JSONObject;)V
.registers 11
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
move-result-object v2
new-instance v5, Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/temp.apk"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const-string/jumbo v6, "safepay"
invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_64
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v6, "alipay_msp.apk"
invoke-static {v5, v6, v3}, Lcom/alipay/android/app/util/Utils;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_60
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v5}, Lcom/alipay/android/app/util/Utils;->is2G(Landroid/content/Context;)Z
move-result v5
if-eqz v5, :cond_40
invoke-direct {p0, p1, v3, p2}, Lcom/alipay/android/app/sdk/AliPay;->doInstall(ZLjava/lang/String;Ljava/lang/String;)V
:goto_3f
:cond_3f
return-void
:cond_40
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v5, v3}, Lcom/alipay/android/app/util/Utils;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
const-string/jumbo v5, "downloadVersion"
const-string/jumbo v6, "3.5.4"
invoke-virtual {p3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/alipay/android/app/util/Utils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
move-result v5
if-gez v5, :cond_5c
invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/sdk/AliPay;->doDownLoad(ZLjava/lang/String;)V
goto :goto_3f
:cond_5c
invoke-direct {p0, p1, v3, p2}, Lcom/alipay/android/app/sdk/AliPay;->doInstall(ZLjava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:cond_60
invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/sdk/AliPay;->doDownLoad(ZLjava/lang/String;)V
goto :goto_3f
:cond_64
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const-string/jumbo v6, "alipay"
invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_3f
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v6, "alipay.apk"
invoke-static {v5, v6, v3}, Lcom/alipay/android/app/util/Utils;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_a6
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v5}, Lcom/alipay/android/app/util/Utils;->is2G(Landroid/content/Context;)Z
move-result v5
if-eqz v5, :cond_86
invoke-direct {p0, p1, v3, p2}, Lcom/alipay/android/app/sdk/AliPay;->doInstall(ZLjava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:cond_86
iget-object v5, p0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v5, v3}, Lcom/alipay/android/app/util/Utils;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
const-string/jumbo v5, "downloadVersion"
const-string/jumbo v6, "7.1.0.0701"
invoke-virtual {p3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/alipay/android/app/util/Utils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
move-result v5
if-gez v5, :cond_a2
invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/sdk/AliPay;->doDownLoad(ZLjava/lang/String;)V
goto :goto_3f
:cond_a2
invoke-direct {p0, p1, v3, p2}, Lcom/alipay/android/app/sdk/AliPay;->doInstall(ZLjava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:cond_a6
invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/sdk/AliPay;->doDownLoad(ZLjava/lang/String;)V
goto :goto_3f
.end method
.method private showInstallMessage()V
.registers 3
new-instance v0, Lcom/alipay/android/app/sdk/AliPay$6;
invoke-direct {v0, p0}, Lcom/alipay/android/app/sdk/AliPay$6;-><init>(Lcom/alipay/android/app/sdk/AliPay;)V
iget-object v1, p0, Lcom/alipay/android/app/sdk/AliPay;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public pay(Ljava/lang/String;)Ljava/lang/String;
.registers 32
new-instance v18, Lcom/alipay/android/app/widget/Loading;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
move-object/from16 v0, v18
invoke-direct {v0, v6}, Lcom/alipay/android/app/widget/Loading;-><init>(Landroid/app/Activity;)V
invoke-virtual/range {v18 .. v18}, Lcom/alipay/android/app/widget/Loading;->show()V
const-string/jumbo v21, ""
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->getClientKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->getClientId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->getAlixTid(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->getNetConnectionType(Landroid/content/Context;)Lcom/alipay/android/app/util/NetConnectionType;
move-result-object v6
invoke-virtual {v6}, Lcom/alipay/android/app/util/NetConnectionType;->getName()Ljava/lang/String;
move-result-object v7
new-instance v24, Ljava/lang/StringBuilder;
const-string/jumbo v6, ""
move-object/from16 v0, v24
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->isExistMsp(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_51
const-string/jumbo v6, "safepay|"
move-object/from16 v0, v24
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_51
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->isExistClient(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_f7
const-string/jumbo v6, "alipay"
move-object/from16 v0, v24
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_63
:goto_63
new-instance v20, Lcom/alipay/android/app/util/PayHelper;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
move-object/from16 v0, v20
invoke-direct {v0, v6}, Lcom/alipay/android/app/util/PayHelper;-><init>(Landroid/app/Activity;)V
new-instance v2, Lcom/alipay/android/app/net/RequestData;
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object/from16 v8, p1
invoke-direct/range {v2 .. v8}, Lcom/alipay/android/app/net/RequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v15, Lcom/alipay/android/app/net/HttpClient;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-direct {v15, v6}, Lcom/alipay/android/app/net/HttpClient;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iget-boolean v6, v0, Lcom/alipay/android/app/sdk/AliPay;->isSandbox:Z
if-eqz v6, :cond_113
const-string/jumbo v6, "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do"
invoke-virtual {v15, v6}, Lcom/alipay/android/app/net/HttpClient;->setUrl(Ljava/lang/String;)V
:goto_8e
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v8, "sdk request:"
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/alipay/android/app/net/RequestData;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/alipay/android/app/util/LogUtils;->i(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/alipay/android/app/net/RequestData;->toString()Ljava/lang/String;
move-result-object v6
const/4 v8, 0x0
invoke-virtual {v15, v6, v8}, Lcom/alipay/android/app/net/HttpClient;->sendSynchronousRequest(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v18 .. v18}, Lcom/alipay/android/app/widget/Loading;->dismiss()V
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v8, "sdk response:"
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/alipay/android/app/util/LogUtils;->i(Ljava/lang/String;)V
invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_240
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v8, "config"
invoke-static {v6, v8}, Lcom/alipay/android/app/util/StoreUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
const-string/jumbo v6, "safepay"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_11b
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->isExistMsp(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_240
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Msp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
:goto_f6
return-object v6
:cond_f7
const-string/jumbo v6, "|"
move-object/from16 v0, v24
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I
move-result v6
const/4 v8, -0x1
if-eq v6, v8, :cond_63
const-string/jumbo v6, "|"
move-object/from16 v0, v24
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I
move-result v6
move-object/from16 v0, v24
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
goto/16 :goto_63
:cond_113
const-string/jumbo v6, "https://mclient.alipay.com/gateway.do"
invoke-virtual {v15, v6}, Lcom/alipay/android/app/net/HttpClient;->setUrl(Ljava/lang/String;)V
goto/16 :goto_8e
:cond_11b
const-string/jumbo v6, "alipay"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_13b
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->isExistClient(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_240
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Client(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto :goto_f6
:cond_13b
invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_240
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->isExistMsp(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_156
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Msp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto :goto_f6
:cond_156
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->isExistClient(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_16b
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Client(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto :goto_f6
:cond_16b
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-virtual {v6}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
move-result-object v9
new-instance v6, Ljava/lang/StringBuilder;
invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "/temp.apk"
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v8, "alipay_msp.apk"
invoke-static {v6, v8, v10}, Lcom/alipay/android/app/util/Utils;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_1d8
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v8, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v8
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_install_msp()I
move-result v29
move/from16 v0, v29
invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p0
invoke-direct {v0, v6, v10, v8}, Lcom/alipay/android/app/sdk/AliPay;->doInstall(ZLjava/lang/String;Ljava/lang/String;)V
sget-object v8, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v8
:try_start_1b3
sget-object v6, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v6}, Ljava/lang/Object;->wait()V
:try_end_1b8
.catchall {:try_start_1b3 .. :try_end_1b8} :catchall_1d0
.catch Ljava/lang/InterruptedException; {:try_start_1b3 .. :try_end_1b8} :catch_1cb
:goto_1b8
:try_start_1b8
monitor-exit v8
:try_end_1b9
.catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1d0
move-object/from16 v0, p0
iget-boolean v6, v0, Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
if-eqz v6, :cond_1d3
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Msp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
:goto_1c7
move-object/from16 v6, v21
goto/16 :goto_f6
:catch_1cb
move-exception v12
:try_start_1cc
invoke-static {v12}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_1b8
:catchall_1d0
move-exception v6
monitor-exit v8
:try_end_1d2
.catchall {:try_start_1cc .. :try_end_1d2} :catchall_1d0
throw v6
:cond_1d3
invoke-static {}, Lcom/alipay/android/app/sdk/Result;->getPayResult()Ljava/lang/String;
move-result-object v21
goto :goto_1c7
:cond_1d8
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v8, "alipay.apk"
invoke-static {v6, v8, v10}, Lcom/alipay/android/app/util/Utils;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_225
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v8, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v8
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_install_alipay()I
move-result v29
move/from16 v0, v29
invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p0
invoke-direct {v0, v6, v10, v8}, Lcom/alipay/android/app/sdk/AliPay;->doInstall(ZLjava/lang/String;Ljava/lang/String;)V
sget-object v8, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v8
:try_start_200
sget-object v6, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v6}, Ljava/lang/Object;->wait()V
:try_end_205
.catchall {:try_start_200 .. :try_end_205} :catchall_21d
.catch Ljava/lang/InterruptedException; {:try_start_200 .. :try_end_205} :catch_218
:try_start_205
:goto_205
monitor-exit v8
:try_end_206
.catchall {:try_start_205 .. :try_end_206} :catchall_21d
move-object/from16 v0, p0
iget-boolean v6, v0, Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
if-eqz v6, :cond_220
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Client(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
:goto_214
move-object/from16 v6, v21
goto/16 :goto_f6
:catch_218
move-exception v12
:try_start_219
invoke-static {v12}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_205
:catchall_21d
move-exception v6
monitor-exit v8
:try_end_21f
.catchall {:try_start_219 .. :try_end_21f} :catchall_21d
throw v6
:cond_220
invoke-static {}, Lcom/alipay/android/app/sdk/Result;->getPayResult()Ljava/lang/String;
move-result-object v21
goto :goto_214
:cond_225
const/16 v6, 0x1772
invoke-static {v6}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v6
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v8
const-string/jumbo v29, ""
move-object/from16 v0, v29
invoke-static {v6, v8, v0}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_240
new-instance v23, Lcom/alipay/android/app/net/ResponseData;
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-direct {v0, v1}, Lcom/alipay/android/app/net/ResponseData;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v23 .. v23}, Lcom/alipay/android/app/net/ResponseData;->getParams()Lorg/json/JSONObject;
move-result-object v17
if-nez v17, :cond_26a
const/16 v6, 0xfa0
invoke-static {v6}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v6
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v8
const-string/jumbo v29, ""
move-object/from16 v0, v29
invoke-static {v6, v8, v0}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_26a
const-string/jumbo v6, "state"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
const-string/jumbo v6, "7001"
move-object/from16 v0, v25
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_296
const-string/jumbo v6, "errorMessage"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
const-string/jumbo v8, ""
invoke-static {v6, v13, v8}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_296
const-string/jumbo v6, "9000"
move-object/from16 v0, v25
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_4d6
const-string/jumbo v6, "alixtid"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
invoke-static {v6}, Lcom/alipay/android/app/util/Utils;->getAlixTid(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_2c2
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v8, "alix_tid"
invoke-static {v6, v8, v5}, Lcom/alipay/android/app/util/StoreUtils;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:cond_2c2
const-string/jumbo v6, "config"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
const-string/jumbo v6, "safepay"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_2ee
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v8, "safepay"
move-object/from16 v0, v19
invoke-static {v6, v0, v8}, Lcom/alipay/android/app/util/StoreUtils;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Msp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_2ee
const-string/jumbo v6, "alipay"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_311
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-string/jumbo v8, "alipay"
move-object/from16 v0, v19
invoke-static {v6, v0, v8}, Lcom/alipay/android/app/util/StoreUtils;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Client(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_311
const-string/jumbo v6, "wap"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_396
const-string/jumbo v6, "timeout"
const/16 v8, 0xf
move-object/from16 v0, v17
invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v27
const-string/jumbo v6, "url"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v28
new-instance v16, Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
const-class v8, Lcom/alipay/android/app/sdk/WapPayActivity;
move-object/from16 v0, v16
invoke-direct {v0, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v14, Landroid/os/Bundle;
invoke-direct {v14}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v6, "url"
move-object/from16 v0, v28
invoke-virtual {v14, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v6, "timeout"
move/from16 v0, v27
invoke-virtual {v14, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
move-object/from16 v0, v16
invoke-virtual {v0, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mContext:Landroid/app/Activity;
move-object/from16 v0, v16
invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
sget-object v8, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v8
:try_start_363
sget-object v6, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v6}, Ljava/lang/Object;->wait()V
:try_start_368
:try_end_368
.catchall {:try_start_363 .. :try_end_368} :catchall_393
.catch Ljava/lang/InterruptedException; {:try_start_363 .. :try_end_368} :catch_38e
:goto_368
monitor-exit v8
:try_end_369
.catchall {:try_start_368 .. :try_end_369} :catchall_393
invoke-static {}, Lcom/alipay/android/app/sdk/Result;->getPayResult()Ljava/lang/String;
move-result-object v21
invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_38a
const/16 v6, 0x1771
invoke-static {v6}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v6
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v8
const-string/jumbo v29, ""
move-object/from16 v0, v29
invoke-static {v6, v8, v0}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
:cond_38a
move-object/from16 v6, v21
goto/16 :goto_f6
:catch_38e
move-exception v12
:try_start_38f
invoke-static {v12}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_368
:catchall_393
move-exception v6
monitor-exit v8
:try_end_395
.catchall {:try_start_38f .. :try_end_395} :catchall_393
throw v6
:cond_396
const-string/jumbo v6, "wap_sdk"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_431
const-string/jumbo v6, "timeout"
const/16 v8, 0xf
move-object/from16 v0, v17
invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v6
move-object/from16 v0, p0
iput v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mTimeout:I
const-string/jumbo v6, "downloadUrl"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iput-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadUrl:Ljava/lang/String;
const-string/jumbo v6, "downloadMessage"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
const-string/jumbo v6, "url"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iput-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mUrl:Ljava/lang/String;
const-string/jumbo v6, "downloadType"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iput-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const/4 v6, 0x1
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v6, v11, v1}, Lcom/alipay/android/app/sdk/AliPay;->processInstall(ZLjava/lang/String;Lorg/json/JSONObject;)V
sget-object v8, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v8
:try_start_3eb
sget-object v6, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v6}, Ljava/lang/Object;->wait()V
:goto_3f0
:try_end_3f0
.catchall {:try_start_3eb .. :try_end_3f0} :catchall_415
.catch Ljava/lang/InterruptedException; {:try_start_3eb .. :try_end_3f0} :catch_410
:try_start_3f0
monitor-exit v8
:try_end_3f1
.catchall {:try_start_3f0 .. :try_end_3f1} :catchall_415
move-object/from16 v0, p0
iget-boolean v6, v0, Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
if-eqz v6, :cond_50f
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const-string/jumbo v8, "safepay"
invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_418
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Msp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:catch_410
move-exception v12
:try_start_411
invoke-static {v12}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_3f0
:catchall_415
move-exception v6
monitor-exit v8
:try_end_417
.catchall {:try_start_411 .. :try_end_417} :catchall_415
throw v6
:cond_418
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const-string/jumbo v8, "alipay"
invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_50f
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Client(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_431
const-string/jumbo v6, "download"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_4b0
const-string/jumbo v6, "downloadUrl"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iput-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadUrl:Ljava/lang/String;
const-string/jumbo v6, "downloadMessage"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
const-string/jumbo v6, "downloadType"
move-object/from16 v0, v17
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iput-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const/4 v6, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v6, v11, v1}, Lcom/alipay/android/app/sdk/AliPay;->processInstall(ZLjava/lang/String;Lorg/json/JSONObject;)V
sget-object v8, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v8
:try_start_46a
sget-object v6, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
invoke-virtual {v6}, Ljava/lang/Object;->wait()V
:try_start_46f
:try_end_46f
.catchall {:try_start_46a .. :try_end_46f} :catchall_494
.catch Ljava/lang/InterruptedException; {:try_start_46a .. :try_end_46f} :catch_48f
:goto_46f
monitor-exit v8
:try_end_470
.catchall {:try_start_46f .. :try_end_470} :catchall_494
move-object/from16 v0, p0
iget-boolean v6, v0, Lcom/alipay/android/app/sdk/AliPay;->isInstall:Z
if-eqz v6, :cond_50f
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const-string/jumbo v8, "safepay"
invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_497
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Msp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:catch_48f
move-exception v12
:try_start_490
invoke-static {v12}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_46f
:catchall_494
move-exception v6
monitor-exit v8
:try_end_496
.catchall {:try_start_490 .. :try_end_496} :catchall_494
throw v6
:cond_497
move-object/from16 v0, p0
iget-object v6, v0, Lcom/alipay/android/app/sdk/AliPay;->mDownloadType:Ljava/lang/String;
const-string/jumbo v8, "alipay"
invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_50f
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/PayHelper;->pay4Client(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_4b0
const-string/jumbo v6, "exit"
move-object/from16 v0, v19
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_50f
const/16 v6, 0xfa0
invoke-static {v6}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v6
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v8
const-string/jumbo v29, ""
move-object/from16 v0, v29
invoke-static {v6, v8, v0}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_4d6
const-string/jumbo v6, "4001"
move-object/from16 v0, v25
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_4fe
invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
invoke-static {v6}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v6
invoke-virtual/range {v26 .. v26}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v8
const-string/jumbo v29, ""
move-object/from16 v0, v29
invoke-static {v6, v8, v0}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v6, v21
goto/16 :goto_f6
:cond_4fe
const-string/jumbo v6, "5001"
move-object/from16 v0, v25
invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_50f
invoke-virtual/range {p0 .. p1}, Lcom/alipay/android/app/sdk/AliPay;->pay(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
goto/16 :goto_f6
:cond_50f
invoke-static {}, Lcom/alipay/android/app/sdk/Result;->getPayResult()Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_519
invoke-static {}, Lcom/alipay/android/app/sdk/Result;->getPayResult()Ljava/lang/String;
move-result-object v21
:cond_519
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v8, "sdk result:"
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v21
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/alipay/android/app/util/LogUtils;->i(Ljava/lang/String;)V
move-object/from16 v6, v21
goto/16 :goto_f6
.end method
.method public setSandBox(Z)V
.registers 2
iput-boolean p1, p0, Lcom/alipay/android/app/sdk/AliPay;->isSandbox:Z
return-void
.end method