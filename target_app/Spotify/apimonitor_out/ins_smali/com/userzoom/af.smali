.class public final Lcom/userzoom/af;
.super Landroid/os/Handler;
.field private synthetic a:Luserzoom/com/InterceptDialog;
.method public constructor <init>(Luserzoom/com/InterceptDialog;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/af;->a:Luserzoom/com/InterceptDialog;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p0, Lcom/userzoom/af;->a:Luserzoom/com/InterceptDialog;
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x1
if-eq v0, v1, :cond_13
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, -0x1
if-ne v0, v1, :cond_13
iget-object v0, p0, Lcom/userzoom/af;->a:Luserzoom/com/InterceptDialog;
const-string v1, ""
invoke-static {v0, v1}, Luserzoom/com/InterceptDialog;->a(Luserzoom/com/InterceptDialog;Ljava/lang/String;)V
:cond_13
return-void
.end method