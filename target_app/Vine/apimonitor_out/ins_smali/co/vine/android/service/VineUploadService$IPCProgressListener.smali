.class public Lco/vine/android/service/VineUploadService$IPCProgressListener;
.super Lco/vine/android/service/UploadProgressListener;
.source "VineUploadService.java"
.field public static final PROGRESS_RATIO_TRANSCODE:D = 0.65
.field public static final PROGRESS_RATIO_UPLOAD:D = 0.33
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;
.method public constructor <init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->this$0:Lco/vine/android/service/VineUploadService;
invoke-direct {p0, p2}, Lco/vine/android/service/UploadProgressListener;-><init>(Ljava/lang/String;)V
return-void
.end method
.method private sendMessageToActivity(Landroid/os/Message;)V
.registers 3
:try_start_0
invoke-static {}, Lco/vine/android/service/VineUploadService;->access$300()Landroid/os/Messenger;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_7
:try_end_7
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
goto :goto_7
.end method
.method public onPostFinished(Z)V
.registers 7
const/4 v4, 0x0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-static {}, Lco/vine/android/service/VineUploadService;->access$300()Landroid/os/Messenger;
move-result-object v1
if-eqz v1, :cond_2a
const-string v1, "success"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/4 v1, 0x7
invoke-static {v4, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-direct {p0, v1}, Lco/vine/android/service/VineUploadService$IPCProgressListener;->sendMessageToActivity(Landroid/os/Message;)V
if-nez p1, :cond_2a
const-string v1, "upload_progress"
const-wide/16 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
const/4 v1, 0x6
invoke-static {v4, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-direct {p0, v1}, Lco/vine/android/service/VineUploadService$IPCProgressListener;->sendMessageToActivity(Landroid/os/Message;)V
:cond_2a
return-void
.end method
.method public onTranscodeStarted()V
.registers 3
invoke-static {}, Lco/vine/android/service/VineUploadService;->access$300()Landroid/os/Messenger;
move-result-object v0
if-eqz v0, :cond_f
const/4 v0, 0x0
const/4 v1, 0x4
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/service/VineUploadService$IPCProgressListener;->sendMessageToActivity(Landroid/os/Message;)V
:cond_f
return-void
.end method
.method public progressChanged(Lco/vine/android/util/VineProgressEvent;)V
.registers 8
iget-wide v2, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->currentSize:J
invoke-virtual {p1}, Lco/vine/android/util/VineProgressEvent;->getBytesTransfered()I
move-result v4
int-to-long v4, v4
add-long/2addr v2, v4
iput-wide v2, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->currentSize:J
iget-wide v2, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->currentSize:J
const-wide/16 v4, 0x64
mul-long/2addr v2, v4
iget-wide v4, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->size:J
div-long/2addr v2, v4
long-to-int v1, v2
invoke-static {}, Lco/vine/android/service/VineUploadService;->access$300()Landroid/os/Messenger;
move-result-object v2
if-eqz v2, :cond_39
iget v2, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->lastProgress:I
sub-int/2addr v2, v1
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v2
const/4 v3, 0x2
if-le v2, v3, :cond_39
iput v1, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->lastProgress:I
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "upload_progress"
int-to-double v3, v1
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
const/4 v2, 0x0
const/4 v3, 0x6
invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
invoke-direct {p0, v2}, Lco/vine/android/service/VineUploadService$IPCProgressListener;->sendMessageToActivity(Landroid/os/Message;)V
:cond_39
return-void
.end method
.method public updateTranscodeProgress(I)V
.registers 6
invoke-static {}, Lco/vine/android/service/VineUploadService;->access$300()Landroid/os/Messenger;
move-result-object v1
if-eqz v1, :cond_26
iget v1, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->lastProgress:I
sub-int/2addr v1, p1
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
const/4 v2, 0x2
if-le v1, v2, :cond_26
iput p1, p0, Lco/vine/android/service/VineUploadService$IPCProgressListener;->lastProgress:I
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "transcode_progress"
int-to-double v2, p1
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
const/4 v1, 0x0
const/4 v2, 0x5
invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-direct {p0, v1}, Lco/vine/android/service/VineUploadService$IPCProgressListener;->sendMessageToActivity(Landroid/os/Message;)V
:cond_26
return-void
.end method