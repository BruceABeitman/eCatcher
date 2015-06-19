.class public Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
.super Ljava/lang/Object;
.source "CloudUploadStatusManager.java"
.field public static final ACTION_BROADCAST_STATUS_CHANGED:Ljava/lang/String; = "vStudio.Android.Camera360.UPLOAD_STATUS_CHANGED"
.field public static final STATUS_PREPARING:I = 0x0
.field public static final STATUS_UPLOADING:I = 0x1
.field public static final STATUS_UPLOAD_SUCCESS:I = 0x2
.field public static final TRANSFER_MSG_PARAM:Ljava/lang/String; = "msg"
.field public static final TRANSFER_STATUS_FILE:Ljava/lang/String; = null
.field public static final TRANSFER_STATUS_PARAM:Ljava/lang/String; = "status"
.field private static mInstance:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
.field private mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
.field private mStatusChangeReceiver:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
.field private mStatusTransferFile:Ljava/io/File;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/cloudUploadStatus.tmp"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->TRANSFER_STATUS_FILE:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/io/File;
sget-object v2, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->TRANSFER_STATUS_FILE:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_19
:try_start_14
iget-object v1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:try_end_19
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a
:goto_19
:cond_19
return-void
:catch_1a
move-exception v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_19
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;)Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
return-object v0
.end method
.method public static getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
.registers 2
sget-object v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mInstance:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
if-nez v0, :cond_13
const-class v1, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mInstance:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
if-nez v0, :cond_12
new-instance v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mInstance:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
:cond_12
monitor-exit v1
:cond_13
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_16
sget-object v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mInstance:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
return-object v0
:catchall_16
move-exception v0
:try_start_17
monitor-exit v1
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
throw v0
.end method
.method public static status2String(Landroid/content/Context;I)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->status2String(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static status2String(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
.registers 8
if-nez p0, :cond_6
const-string/jumbo v0, ""
:goto_5
return-object v0
:cond_6
const-string/jumbo v0, ""
packed-switch p1, :pswitch_data_70
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const v2, 0x7f080019
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_25
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const v2, 0x7f08001a
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_3e
if-eqz p2, :cond_44
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object p2
:cond_44
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_4d
const-string/jumbo p2, "n"
:cond_4d
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const v2, 0x7f080018
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p2, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_data_70
.packed-switch 0x1
:pswitch_3e
:pswitch_25
.end packed-switch
.end method
.method public declared-synchronized getStatus(Landroid/content/Context;)Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;
.registers 11
monitor-enter p0
const/4 v5, 0x0
:try_start_2
iget-object v7, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_4f
if-eqz v7, :cond_5b
const/4 v2, 0x0
:try_start_7
new-instance v3, Ljava/io/ObjectInputStream;
new-instance v7, Ljava/io/FileInputStream;
iget-object v8, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v3, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_13
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_48
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_37
invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v7
move-object v0, v7
check-cast v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;
move-object v5, v0
:try_end_1b
.catchall {:try_start_13 .. :try_end_1b} :catchall_5d
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_60
if-eqz v3, :cond_5b
:try_start_1d
invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_4f
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_57
move-object v6, v5
:goto_21
if-nez v6, :cond_66
:try_start_23
new-instance v5, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;
invoke-direct {v5}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;-><init>()V
:try_end_28
.catchall {:try_start_23 .. :try_end_28} :catchall_63
const/4 v7, 0x2
:try_start_29
iput v7, v5, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->status:I
:goto_2b
iget v7, v5, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->status:I
iget-object v8, v5, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->msg:Ljava/lang/String;
invoke-static {p1, v7, v8}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->status2String(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v5, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->msg:Ljava/lang/String;
:try_end_35
.catchall {:try_start_29 .. :try_end_35} :catchall_4f
monitor-exit p0
return-object v5
:catch_37
move-exception v1
:goto_38
:try_start_38
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_48
if-eqz v2, :cond_5b
:try_start_3d
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_40
.catchall {:try_start_3d .. :try_end_40} :catchall_4f
.catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_42
move-object v6, v5
goto :goto_21
:catch_42
move-exception v1
:try_start_43
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_4f
move-object v6, v5
goto :goto_21
:catchall_48
move-exception v7
:goto_49
if-eqz v2, :cond_4e
:try_start_4b
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:goto_4e
:try_start_4e
:cond_4e
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_4f
.catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_52
throw v7
:catchall_4f
:try_end_4f
.catchall {:try_start_4e .. :try_end_4f} :catchall_4f
move-exception v7
:goto_50
monitor-exit p0
throw v7
:catch_52
move-exception v1
:try_start_53
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_4e
:catch_57
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_5b
.catchall {:try_start_53 .. :try_end_5b} :catchall_4f
:cond_5b
move-object v6, v5
goto :goto_21
:catchall_5d
move-exception v7
move-object v2, v3
goto :goto_49
:catch_60
move-exception v1
move-object v2, v3
goto :goto_38
:catchall_63
move-exception v7
move-object v5, v6
goto :goto_50
:cond_66
move-object v5, v6
goto :goto_2b
.end method
.method public declared-synchronized registListener(Landroid/content/Context;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;)V
.registers 6
monitor-enter p0
:try_start_1
new-instance v1, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;-><init>(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusChangeReceiver:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string/jumbo v1, "vStudio.Android.Camera360.UPLOAD_STATUS_CHANGED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusChangeReceiver:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iput-object p2, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized setStatus(Landroid/content/Context;ILjava/lang/String;)V
.registers 11
monitor-enter p0
:try_start_1
new-instance v1, Landroid/content/Intent;
const-string/jumbo v5, "vStudio.Android.Camera360.UPLOAD_STATUS_CHANGED"
invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "status"
invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v5, "msg"
invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
iget-object v5, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_51
if-eqz v5, :cond_3d
const/4 v2, 0x0
:try_start_1d
new-instance v3, Ljava/io/ObjectOutputStream;
new-instance v5, Ljava/io/FileOutputStream;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusTransferFile:Ljava/io/File;
invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_29
.catchall {:try_start_1d .. :try_end_29} :catchall_54
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_3f
:try_start_29
new-instance v4, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;
invoke-direct {v4}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;-><init>()V
iput p2, v4, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->status:I
iput-object p3, v4, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->msg:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_end_35
.catchall {:try_start_29 .. :try_end_35} :catchall_68
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_6b
if-eqz v3, :cond_3d
:try_start_37
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
:try_end_3d
.catchall {:try_start_37 .. :try_end_3d} :catchall_51
.catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_63
:goto_3d
:cond_3d
monitor-exit p0
return-void
:catch_3f
move-exception v0
:goto_40
:try_start_40
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_43
.catchall {:try_start_40 .. :try_end_43} :catchall_54
if-eqz v2, :cond_3d
:try_start_45
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
:try_end_4b
.catchall {:try_start_45 .. :try_end_4b} :catchall_51
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_4c
goto :goto_3d
:catch_4c
move-exception v0
:try_start_4d
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_50
.catchall {:try_start_4d .. :try_end_50} :catchall_51
goto :goto_3d
:catchall_51
move-exception v5
monitor-exit p0
throw v5
:catchall_54
move-exception v5
:goto_55
if-eqz v2, :cond_5d
:try_start_57
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
:goto_5d
:try_end_5d
.catchall {:try_start_57 .. :try_end_5d} :catchall_51
.catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_5e
:cond_5d
:try_start_5d
throw v5
:catch_5e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_5d
:catch_63
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_67
.catchall {:try_start_5d .. :try_end_67} :catchall_51
goto :goto_3d
:catchall_68
move-exception v5
move-object v2, v3
goto :goto_55
:catch_6b
move-exception v0
move-object v2, v3
goto :goto_40
.end method
.method public declared-synchronized unRegistListener(Landroid/content/Context;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
if-eq v0, p2, :cond_e
const-string/jumbo v0, "cx"
const-string/jumbo v1, "wrong code"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusChangeReceiver:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusChangeReceiver:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mStatusChangeReceiver:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
:cond_1a
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_1f
monitor-exit p0
return-void
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
.end method