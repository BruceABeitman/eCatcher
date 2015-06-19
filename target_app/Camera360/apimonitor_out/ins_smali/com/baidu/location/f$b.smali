.class  Lcom/baidu/location/f$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/baidu/location/f;
.method private constructor <init>(Lcom/baidu/location/f;)V
.registers 2
iput-object p1, p0, Lcom/baidu/location/f$b;->a:Lcom/baidu/location/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/baidu/location/f;Lcom/baidu/location/f$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/baidu/location/f$b;-><init>(Lcom/baidu/location/f;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/baidu/location/f$b;->a:Lcom/baidu/location/f;
invoke-static {v0}, Lcom/baidu/location/f;->int(Lcom/baidu/location/f;)Z
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_14
iget-object v0, p0, Lcom/baidu/location/f$b;->a:Lcom/baidu/location/f;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Z)Z
iget-object v0, p0, Lcom/baidu/location/f$b;->a:Lcom/baidu/location/f;
invoke-static {v0}, Lcom/baidu/location/f;->else(Lcom/baidu/location/f;)V
:cond_14
return-void
.end method