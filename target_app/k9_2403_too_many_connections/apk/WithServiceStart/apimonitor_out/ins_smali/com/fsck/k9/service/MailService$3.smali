.class  Lcom/fsck/k9/service/MailService$3;
.super Ljava/lang/Object;
.source "MailService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;
.field final synthetic val$startId:Ljava/lang/Integer;
.method constructor <init>(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/service/MailService$3;->this$0:Lcom/fsck/k9/service/MailService;
iput-object p2, p0, Lcom/fsck/k9/service/MailService$3;->val$startId:Ljava/lang/Integer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_c
const-string v0, "k9"
const-string v1, "Rescheduling pushers"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
iget-object v0, p0, Lcom/fsck/k9/service/MailService$3;->this$0:Lcom/fsck/k9/service/MailService;
#calls: Lcom/fsck/k9/service/MailService;->stopPushers(Ljava/lang/Integer;)V
invoke-static {v0, v2}, Lcom/fsck/k9/service/MailService;->access$100(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
iget-object v0, p0, Lcom/fsck/k9/service/MailService$3;->this$0:Lcom/fsck/k9/service/MailService;
#calls: Lcom/fsck/k9/service/MailService;->setupPushers(Ljava/lang/Integer;)V
invoke-static {v0, v2}, Lcom/fsck/k9/service/MailService;->access$200(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
iget-object v0, p0, Lcom/fsck/k9/service/MailService$3;->this$0:Lcom/fsck/k9/service/MailService;
iget-object v1, p0, Lcom/fsck/k9/service/MailService$3;->val$startId:Ljava/lang/Integer;
#calls: Lcom/fsck/k9/service/MailService;->schedulePushers(Ljava/lang/Integer;)V
invoke-static {v0, v1}, Lcom/fsck/k9/service/MailService;->access$300(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
return-void
.end method