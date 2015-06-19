.class  Lcom/instagram/realtimeclient/RealtimeClient$1;
.super Ljava/lang/Object;
.source "RealtimeClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeClient;
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$1;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$1;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;
#calls: Lcom/instagram/realtimeclient/RealtimeClient;->connect()V
invoke-static {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->access$000(Lcom/instagram/realtimeclient/RealtimeClient;)V
return-void
.end method