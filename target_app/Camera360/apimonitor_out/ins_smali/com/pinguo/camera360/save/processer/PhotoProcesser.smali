.class public Lcom/pinguo/camera360/save/processer/PhotoProcesser;
.super Ljava/lang/Object;
.source "PhotoProcesser.java"
.field private static volatile INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcesser; = null
.field public static final PHOTO_PROCESS_SERVICE:Ljava/lang/String; = "com.camera360.PhotoProcessService"
.field private static final TAG:Ljava/lang/String; = "PhotoProcesser"
.field private static mBound:Z
.field private static mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.field private mConnection:Landroid/content/ServiceConnection;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcesser;
sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser$1;-><init>(Lcom/pinguo/camera360/save/processer/PhotoProcesser;)V
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mConnection:Landroid/content/ServiceConnection;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V
.registers 1
sput-object p0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
return-void
.end method
.method static synthetic access$1(Z)V
.registers 1
sput-boolean p0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
return-void
.end method
.method public static getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
.registers 2
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcesser;
if-nez v0, :cond_13
const-class v1, Lcom/pinguo/camera360/save/processer/PhotoProcesser;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcesser;
if-nez v0, :cond_12
new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;
invoke-direct {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;-><init>()V
sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcesser;
:cond_12
monitor-exit v1
:cond_13
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_16
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcesser;
return-object v0
:catchall_16
move-exception v0
:try_start_17
monitor-exit v1
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
throw v0
.end method
.method public bind(Landroid/content/Context;)V
.registers 6
const-string/jumbo v1, "PhotoProcesser"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "bind"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-boolean v3, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mConnection:Landroid/content/ServiceConnection;
const/4 v2, 0x1
invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
return-void
.end method
.method public canProcessPicture()Z
.registers 2
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-virtual {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->canProcessPicture()Z
move-result v0
goto :goto_5
.end method
.method public makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 4
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Must call bind function before call insert."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
return-void
.end method
.method public makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
.registers 12
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Must call bind function before call insert."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
return-void
.end method
.method public makePreviewAndSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 6
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Must call bind function before call insert."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->makePreviewAndSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
return-void
.end method
.method public makePreviewNew(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
.registers 12
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Must call bind function before call insert."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->makePreviewNew(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
return-void
.end method
.method public save(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 7
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Must call bind function before call insert."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-virtual {v0, p2, p1, p3, p4}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->save([BLcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
return-void
.end method
.method public select(Ljava/lang/String;)J
.registers 4
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-nez v0, :cond_7
const-wide/16 v0, -0x1
:goto_6
return-wide v0
:cond_7
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->selecte(Ljava/lang/String;)J
move-result-wide v0
goto :goto_6
.end method
.method public start(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public stop()V
.registers 2
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mService:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-virtual {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->stop()V
:cond_9
return-void
.end method
.method public unBind(Landroid/content/Context;)V
.registers 5
const-string/jumbo v0, "PhotoProcesser"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "unBind"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-boolean v2, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mBound:Z
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_21
return-void
.end method