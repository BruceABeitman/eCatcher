.class  Lcom/instagram/realtimeclient/RealtimeClient$7$1;
.super Ljava/lang/Object;
.source "RealtimeClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/instagram/realtimeclient/RealtimeClient$7;
.field final synthetic val$event:Lcom/instagram/realtimeclient/RealtimeEvent;
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient$7;Lcom/instagram/realtimeclient/RealtimeEvent;)V
.registers 3
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$7$1;->this$1:Lcom/instagram/realtimeclient/RealtimeClient$7;
iput-object p2, p0, Lcom/instagram/realtimeclient/RealtimeClient$7$1;->val$event:Lcom/instagram/realtimeclient/RealtimeEvent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$7$1;->this$1:Lcom/instagram/realtimeclient/RealtimeClient$7;
iget-object v0, v0, Lcom/instagram/realtimeclient/RealtimeClient$7;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient$7$1;->val$event:Lcom/instagram/realtimeclient/RealtimeEvent;
#calls: Lcom/instagram/realtimeclient/RealtimeClient;->handleRealtimeEvent(Lcom/instagram/realtimeclient/RealtimeEvent;)V
invoke-static {v0, v1}, Lcom/instagram/realtimeclient/RealtimeClient;->access$400(Lcom/instagram/realtimeclient/RealtimeClient;Lcom/instagram/realtimeclient/RealtimeEvent;)V
return-void
.end method