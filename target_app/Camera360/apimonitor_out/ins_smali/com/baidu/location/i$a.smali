.class public Lcom/baidu/location/i$a;
.super Ljava/lang/Object;
.implements Lcom/baidu/location/BDLocationListener;
.field final synthetic a:Lcom/baidu/location/i;
.method public constructor <init>(Lcom/baidu/location/i;)V
.registers 2
iput-object p1, p0, Lcom/baidu/location/i$a;->a:Lcom/baidu/location/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
.registers 3
iget-object v0, p0, Lcom/baidu/location/i$a;->a:Lcom/baidu/location/i;
invoke-static {v0, p1}, Lcom/baidu/location/i;->a(Lcom/baidu/location/i;Lcom/baidu/location/BDLocation;)V
return-void
.end method
.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
.registers 2
return-void
.end method