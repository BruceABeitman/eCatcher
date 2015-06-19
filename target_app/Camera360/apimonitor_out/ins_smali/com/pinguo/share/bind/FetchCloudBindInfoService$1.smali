.class  Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;
.super Ljava/lang/Object;
.source "FetchCloudBindInfoService.java"
.implements Lcom/pinguo/share/bind/IBindProcess;
.field final synthetic this$0:Lcom/pinguo/share/bind/FetchCloudBindInfoService;
.field private final synthetic val$rannum:J
.method constructor <init>(Lcom/pinguo/share/bind/FetchCloudBindInfoService;J)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;->this$0:Lcom/pinguo/share/bind/FetchCloudBindInfoService;
iput-wide p2, p0, Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;->val$rannum:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public beforeThread()V
.registers 1
return-void
.end method
.method public fail()V
.registers 1
return-void
.end method
.method public finishBind()V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "FetchCloudBindInfoService.MyBroadCastReceiver"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "rannum"
iget-wide v2, p0, Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;->val$rannum:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/share/bind/FetchCloudBindInfoService$1;->this$0:Lcom/pinguo/share/bind/FetchCloudBindInfoService;
invoke-virtual {v1, v0}, Lcom/pinguo/share/bind/FetchCloudBindInfoService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public stopProgress()V
.registers 1
return-void
.end method