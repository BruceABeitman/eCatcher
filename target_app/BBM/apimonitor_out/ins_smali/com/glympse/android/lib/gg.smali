.class  Lcom/glympse/android/lib/gg;
.super Ljava/lang/Object;
.source "Notification.java"
.implements Lcom/glympse/android/lib/GNotification;
.field private ik:Ljava/lang/String;
.field private kr:Ljava/lang/String;
.field private qD:Ljava/lang/String;
.field private qE:Ljava/lang/String;
.field private qF:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/gg;->ik:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/gg;->kr:Ljava/lang/String;
iput-object p3, p0, Lcom/glympse/android/lib/gg;->qD:Ljava/lang/String;
iput-object p4, p0, Lcom/glympse/android/lib/gg;->qE:Ljava/lang/String;
iput-object p5, p0, Lcom/glympse/android/lib/gg;->qF:Ljava/lang/String;
return-void
.end method
.method public A(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/gg;->qD:Ljava/lang/String;
return-void
.end method
.method public B(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/gg;->qE:Ljava/lang/String;
return-void
.end method
.method public C(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/gg;->qF:Ljava/lang/String;
return-void
.end method
.method public getActionText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gg;->qE:Ljava/lang/String;
return-object v0
.end method
.method public getActionUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gg;->qF:Ljava/lang/String;
return-object v0
.end method
.method public getBody()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gg;->kr:Ljava/lang/String;
return-object v0
.end method
.method public getCancelText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gg;->qD:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gg;->ik:Ljava/lang/String;
return-object v0
.end method
.method public hasAction()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gg;->qE:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/gg;->qF:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/gg;->ik:Ljava/lang/String;
return-void
.end method
.method public z(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/gg;->kr:Ljava/lang/String;
return-void
.end method