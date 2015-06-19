.class public Lco/vine/android/AppImpl;
.super Ljava/lang/Object;
.source "AppImpl.java"
.implements Lco/vine/android/AppInterface;
.field private static sInstance:Lco/vine/android/AppImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lco/vine/android/AppImpl;
.registers 1
sget-object v0, Lco/vine/android/AppImpl;->sInstance:Lco/vine/android/AppImpl;
if-nez v0, :cond_b
new-instance v0, Lco/vine/android/AppImpl;
invoke-direct {v0}, Lco/vine/android/AppImpl;-><init>()V
sput-object v0, Lco/vine/android/AppImpl;->sInstance:Lco/vine/android/AppImpl;
:cond_b
sget-object v0, Lco/vine/android/AppImpl;->sInstance:Lco/vine/android/AppImpl;
return-object v0
.end method
.method public appendDebugInfo(Landroid/content/Context;Ljava/lang/StringBuilder;Z)V
.registers 7
invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getGenericConfig(Landroid/content/Context;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v0
const-string v1, "\n\nDefault Recording Configuration: "
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nRecording enabled: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nZoom enabled: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nCamera Switch enabled: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nFlash Switch enabled: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nBuffer Pre-allocation enabled: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nBuffer count: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nPreview width: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nTarget Frame Rate: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez p3, :cond_e7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nProcess path: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processDir:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_e7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nTarget Size: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getGenericConfig(Landroid/content/Context;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v0
const-string v1, "\n\nDefault Message Recording Configuration: "
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nBuffer count: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nPreview width: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nPreview height: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewHeight:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nTarget Frame Rate: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\nTarget Size: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public clearUploadCaptchas(Landroid/content/Context;)V
.registers 2
invoke-static {p1}, Lco/vine/android/util/UploadManager;->clearUploadCaptchas(Landroid/content/Context;)V
return-void
.end method
.method public doAddWidget(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
.registers 5
invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->loadWasEverSuccessful(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p2, p3}, Lco/vine/android/client/VineAccountHelper;->needsAddwidget(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lco/vine/android/service/VineUploadService;->getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public getDiscardAllIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lco/vine/android/service/VineUploadService;->getDiscardAllIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lco/vine/android/service/VineUploadService;->getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public getRecordingIntent(Landroid/app/Activity;ILjava/lang/String;)Landroid/content/Intent;
.registers 5
invoke-static {p1, p2, p3}, Lco/vine/android/AbstractRecordingActivity;->getIntentForGeneric(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public setupWidget(Landroid/app/Activity;)V
.registers 2
invoke-static {p1}, Lco/vine/android/CameraWidgetConfigureActivity;->setupShortcut(Landroid/content/Context;)V
return-void
.end method
.method public startCameraService(Landroid/app/Activity;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/service/ResourceService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public startCapture(Landroid/app/Activity;)V
.registers 5
const/high16 v0, 0x2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Base options: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p1, v0, v1}, Lco/vine/android/AbstractRecordingActivity;->getIntentForGeneric(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Lco/vine/android/util/Util;->startActionOnRecordingAvailable(Landroid/app/Activity;Landroid/content/Intent;I)V
return-void
.end method
.method public startConversationActivity(Landroid/app/Activity;JLjava/lang/String;JZ)V
.registers 17
const/4 v7, 0x0
move-object v0, p1
move-wide v1, p2
move-object v3, p4
move-wide v4, p5
move/from16 v6, p7
invoke-static/range {v0 .. v7}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;
move-result-object v8
invoke-virtual {p1, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public startUploadsListActivity(Landroid/app/Activity;)V
.registers 2
invoke-static {p1}, Lco/vine/android/UploadsListActivity;->start(Landroid/content/Context;)V
return-void
.end method
.method public updateClientProfile(Landroid/content/Context;Lco/vine/android/client/AppController;Z)V
.registers 5
invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->needsUpdate(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_b
if-nez p3, :cond_b
invoke-virtual {p2}, Lco/vine/android/client/AppController;->updateClientProfile()Ljava/lang/String;
:cond_b
return-void
.end method
.method public updateRecordConfigs(Landroid/content/Context;Lorg/json/JSONObject;)V
.registers 3
invoke-static {p1, p2}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->update(Landroid/content/Context;Lorg/json/JSONObject;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
return-void
.end method