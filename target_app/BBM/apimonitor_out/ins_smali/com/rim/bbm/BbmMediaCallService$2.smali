.class final Lcom/rim/bbm/BbmMediaCallService$2;
.super Ljava/lang/Object;
.source "BbmMediaCallService.java"
.implements Ljava/lang/Runnable;
.field final synthetic val$audioState:I
.field final synthetic val$callDirection:I
.field final synthetic val$callState:I
.field final synthetic val$callTransport:I
.field final synthetic val$connectedTime:J
.field final synthetic val$createdTime:J
.field final synthetic val$event:I
.field final synthetic val$failureReason:I
.field final synthetic val$id:I
.field final synthetic val$muted:I
.field final synthetic val$peerAddress:Ljava/lang/String;
.field final synthetic val$peerCaps:I
.field final synthetic val$peerName:Ljava/lang/String;
.field final synthetic val$rateCall:I
.field final synthetic val$videoEnabled:I
.field final synthetic val$videoState:I
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIJJI)V
.registers 21
iput p1, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$id:I
iput-object p2, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$peerAddress:Ljava/lang/String;
iput-object p3, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$peerName:Ljava/lang/String;
iput p4, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$peerCaps:I
iput p5, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$callState:I
iput p6, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$callDirection:I
iput p7, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$audioState:I
iput p8, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$videoState:I
iput p9, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$failureReason:I
iput p10, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$videoEnabled:I
iput p11, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$muted:I
iput p12, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$callTransport:I
iput p13, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$rateCall:I
move-wide/from16 v0, p14
iput-wide v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$createdTime:J
move-wide/from16 v0, p16
iput-wide v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$connectedTime:J
move/from16 v0, p18
iput v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$event:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 10
const-wide/16 v7, 0x3e8
const/4 v6, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
new-instance v3, Lcom/rim/bbm/BbmMediaCallService$CallData;
invoke-direct {v3}, Lcom/rim/bbm/BbmMediaCallService$CallData;-><init>()V
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$id:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->callID:I
iget-object v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$peerAddress:Ljava/lang/String;
iput-object v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->peerAddress:Ljava/lang/String;
iget-object v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$peerName:Ljava/lang/String;
iput-object v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->peerName:Ljava/lang/String;
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$peerCaps:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->peerCaps:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$callState:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->callState:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$callDirection:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->callDirection:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$audioState:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->audioState:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$videoState:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->videoState:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$failureReason:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->failureReason:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$videoEnabled:I
if-eqz v0, :cond_70
move v0, v1
:goto_33
iput-boolean v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->videoEnabled:Z
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$muted:I
if-eqz v0, :cond_72
move v0, v1
:goto_3a
iput-boolean v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->muted:Z
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$callTransport:I
iput v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->callTransport:I
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$rateCall:I
if-eqz v0, :cond_74
move v0, v1
:goto_45
iput-boolean v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->rateCall:Z
new-instance v0, Ljava/util/Date;
iget-wide v4, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$createdTime:J
mul-long/2addr v4, v7
invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V
iput-object v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->createdTime:Ljava/util/Date;
new-instance v0, Ljava/util/Date;
iget-wide v4, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$connectedTime:J
mul-long/2addr v4, v7
invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V
iput-object v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->connectedTime:Ljava/util/Date;
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$event:I
if-nez v0, :cond_76
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$000()Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
move-result-object v0
iget v1, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$id:I
invoke-interface {v0, v1, v3}, Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;->onIncomingCall(ILcom/rim/bbm/BbmMediaCallService$CallData;)V
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$200()Lcom/rim/bbm/a;
move-result-object v0
invoke-virtual {v0}, Lcom/rim/bbm/a;->a()V
:goto_6f
:cond_6f
return-void
:cond_70
move v0, v2
goto :goto_33
:cond_72
move v0, v2
goto :goto_3a
:cond_74
move v0, v2
goto :goto_45
:cond_76
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$event:I
if-ne v0, v1, :cond_d5
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$000()Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
move-result-object v0
iget v4, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$id:I
invoke-interface {v0, v4, v3}, Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;->onCallStateChange(ILcom/rim/bbm/BbmMediaCallService$CallData;)V
iget v0, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->callState:I
const/4 v3, 0x7
if-ne v0, v3, :cond_6f
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$200()Lcom/rim/bbm/a;
move-result-object v0
iget-boolean v3, v0, Lcom/rim/bbm/a;->e:Z
if-eqz v3, :cond_6f
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "BluetoothManager.deactivate()"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v4, v0, Lcom/rim/bbm/a;->f:Z
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-array v4, v2, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v3, v0, Lcom/rim/bbm/a;->c:Landroid/bluetooth/BluetoothHeadset;
if-eqz v3, :cond_b8
iget-object v3, v0, Lcom/rim/bbm/a;->d:Landroid/content/Context;
iget-object v4, v0, Lcom/rim/bbm/a;->h:Landroid/content/BroadcastReceiver;
invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v3, v0, Lcom/rim/bbm/a;->b:Landroid/bluetooth/BluetoothAdapter;
iget-object v4, v0, Lcom/rim/bbm/a;->c:Landroid/bluetooth/BluetoothHeadset;
invoke-virtual {v3, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
:cond_b8
iget-boolean v1, v0, Lcom/rim/bbm/a;->f:Z
if-eqz v1, :cond_cc
iput-boolean v2, v0, Lcom/rim/bbm/a;->f:Z
iget-object v1, v0, Lcom/rim/bbm/a;->a:Landroid/media/AudioManager;
invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V
iget-object v1, v0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;
if-eqz v1, :cond_cc
iget-object v1, v0, Lcom/rim/bbm/a;->g:Lcom/rim/bbm/d;
invoke-interface {v1, v2}, Lcom/rim/bbm/d;->onBluetoothStateChange(Z)V
:cond_cc
iput-object v6, v0, Lcom/rim/bbm/a;->a:Landroid/media/AudioManager;
iput-object v6, v0, Lcom/rim/bbm/a;->b:Landroid/bluetooth/BluetoothAdapter;
iput-object v6, v0, Lcom/rim/bbm/a;->c:Landroid/bluetooth/BluetoothHeadset;
iput-boolean v2, v0, Lcom/rim/bbm/a;->e:Z
goto :goto_6f
:cond_d5
iget v0, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$event:I
const/4 v1, 0x2
if-ne v0, v1, :cond_6f
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$000()Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
move-result-object v0
iget v1, p0, Lcom/rim/bbm/BbmMediaCallService$2;->val$id:I
invoke-interface {v0, v1, v3}, Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;->onMediaStateChange(ILcom/rim/bbm/BbmMediaCallService$CallData;)V
goto :goto_6f
.end method