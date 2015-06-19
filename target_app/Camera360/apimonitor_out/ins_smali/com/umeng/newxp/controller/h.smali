.class  Lcom/umeng/newxp/controller/h;
.super Landroid/os/Handler;
.source "SwithAdThread.java"
.field final synthetic a:Lcom/umeng/newxp/controller/g;
.method constructor <init>(Lcom/umeng/newxp/controller/g;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/controller/h;->a:Lcom/umeng/newxp/controller/g;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/controller/h;->a:Lcom/umeng/newxp/controller/g;
iget-object v0, v0, Lcom/umeng/newxp/controller/g;->a:Lcom/umeng/newxp/controller/f$a;
invoke-interface {v0}, Lcom/umeng/newxp/controller/f$a;->timeup()V
return-void
.end method