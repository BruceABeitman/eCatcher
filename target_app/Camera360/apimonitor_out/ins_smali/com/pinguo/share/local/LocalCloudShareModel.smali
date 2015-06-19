.class public Lcom/pinguo/share/local/LocalCloudShareModel;
.super Ljava/lang/Object;
.source "LocalCloudShareModel.java"
.field private static final TAG:Ljava/lang/String;
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
.field private mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
.field private mShareProcessCancelled:Z
.field private mShareProcessing:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/share/local/LocalCloudShareModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/local/LocalCloudShareModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/share/CloudShareInfo;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
iput-boolean v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessCancelled:Z
new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel$1;
invoke-direct {v0, p0}, Lcom/pinguo/share/local/LocalCloudShareModel$1;-><init>(Lcom/pinguo/share/local/LocalCloudShareModel;)V
iput-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
iput-object p1, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/local/LocalCloudShareModel;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessCancelled:Z
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
return-object v0
.end method
.method static synthetic access$2()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/share/local/LocalCloudShareModel;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/share/local/LocalCloudShareModel;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/share/local/LocalCloudShareModel;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessCancelled:Z
return v0
.end method
.method public share(Landroid/app/Activity;)V
.registers 12
const v9, 0x7f08004b
const v8, 0x7f080049
const/4 v7, 0x1
const/4 v6, 0x0
sget-object v0, Lcom/pinguo/share/local/LocalCloudShareModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "start local cloud share"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;
if-eqz v0, :cond_23
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v1, v1, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
:cond_23
sget-object v0, Lcom/pinguo/share/local/LocalCloudShareModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "error,has no url"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
:goto_2b
return-void
:cond_2c
sget-object v0, Lcom/pinguo/share/local/LocalCloudShareModel;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "cloudShareInfo:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
if-nez v0, :cond_2b
iput-boolean v6, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessCancelled:Z
iput-boolean v7, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-virtual {v0}, Lcom/pinguo/share/CloudShareInfo;->isMultiplePhotoes()Z
move-result v0
if-nez v0, :cond_76
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-virtual {v0}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v0
if-nez v0, :cond_76
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;
if-eq v0, v1, :cond_6b
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;
if-ne v0, v1, :cond_76
:cond_6b
new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel$2;
invoke-direct {v0, p0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel$2;-><init>(Lcom/pinguo/share/local/LocalCloudShareModel;Landroid/app/Activity;)V
new-array v1, v6, [Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/pinguo/share/local/LocalCloudShareModel$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_2b
:cond_76
const v0, 0x7f080047
iget-object v1, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
invoke-static {p1, v0, v7, v1, v6}, Lcom/pinguo/share/ui/dialog/ShareBSDialogUtils;->showProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;I)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v5
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
invoke-virtual {v5, v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;
if-ne v0, v1, :cond_ac
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "weixin"
:goto_97
sget-object v0, Lcom/pinguo/share/local/LocalCloudShareModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "need get photowall url"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel$3;
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v5}, Lcom/pinguo/share/local/LocalCloudShareModel$3;-><init>(Lcom/pinguo/share/local/LocalCloudShareModel;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
new-array v1, v6, [Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/pinguo/share/local/LocalCloudShareModel$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_2b
:cond_ac
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;
if-ne v0, v1, :cond_c0
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "circle"
goto :goto_97
:cond_c0
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;
if-ne v0, v1, :cond_d7
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
sget-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->QZONE:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->getCode()Ljava/lang/String;
move-result-object v4
goto :goto_97
:cond_d7
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_SMS:Lcom/pinguo/share/ShareType;
if-ne v0, v1, :cond_eb
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "noto"
goto :goto_97
:cond_eb
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->QZONE:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->getCode()Ljava/lang/String;
move-result-object v4
goto :goto_97
.end method