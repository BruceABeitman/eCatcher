.class  Lcom/rim/bbm/BbmMediaCallService$1;
.super Ljava/lang/Object;
.source "BbmMediaCallService.java"
.implements Lcom/rim/bbm/d;
.field final synthetic this$0:Lcom/rim/bbm/BbmMediaCallService;
.method constructor <init>(Lcom/rim/bbm/BbmMediaCallService;)V
.registers 2
iput-object p1, p0, Lcom/rim/bbm/BbmMediaCallService$1;->this$0:Lcom/rim/bbm/BbmMediaCallService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBluetoothStateChange(Z)V
.registers 3
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$000()Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
move-result-object v0
if-eqz v0, :cond_d
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->access$000()Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;->onBluetoothEnabled(Z)V
:cond_d
return-void
.end method