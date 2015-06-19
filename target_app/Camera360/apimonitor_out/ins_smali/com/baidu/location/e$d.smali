.class  Lcom/baidu/location/e$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/baidu/location/e;
.method private constructor <init>(Lcom/baidu/location/e;)V
.registers 2
iput-object p1, p0, Lcom/baidu/location/e$d;->a:Lcom/baidu/location/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/baidu/location/e;Lcom/baidu/location/e$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/baidu/location/e$d;-><init>(Lcom/baidu/location/e;)V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/baidu/location/e$d;->a:Lcom/baidu/location/e;
invoke-static {v0}, Lcom/baidu/location/e;->do(Lcom/baidu/location/e;)Z
move-result v0
if-eqz v0, :cond_2e
sget-boolean v0, Lcom/baidu/location/j;->R:Z
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/baidu/location/e$d;->a:Lcom/baidu/location/e;
invoke-static {v0}, Lcom/baidu/location/e;->if(Lcom/baidu/location/e;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
iget-object v0, p0, Lcom/baidu/location/e$d;->a:Lcom/baidu/location/e;
invoke-static {v0}, Lcom/baidu/location/e;->if(Lcom/baidu/location/e;)Landroid/os/Handler;
move-result-object v0
sget v1, Lcom/baidu/location/j;->S:I
int-to-long v1, v1
invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lcom/baidu/location/e$d;->a:Lcom/baidu/location/e;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/baidu/location/e;->a(Lcom/baidu/location/e;Z)Z
:goto_2d
return-void
:cond_2e
iget-object v0, p0, Lcom/baidu/location/e$d;->a:Lcom/baidu/location/e;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/baidu/location/e;->a(Lcom/baidu/location/e;Z)Z
goto :goto_2d
.end method