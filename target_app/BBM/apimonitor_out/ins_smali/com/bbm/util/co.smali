.class final Lcom/bbm/util/co;
.super Ljava/lang/Object;
.source "LocationServicesUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/location/LocationManager;
.field final synthetic b:Lcom/bbm/util/cn;
.method constructor <init>(Lcom/bbm/util/cn;Landroid/location/LocationManager;)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/co;->b:Lcom/bbm/util/cn;
iput-object p2, p0, Lcom/bbm/util/co;->a:Landroid/location/LocationManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/util/co;->b:Lcom/bbm/util/cn;
invoke-static {v0}, Lcom/bbm/util/cn;->a(Lcom/bbm/util/cn;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/bbm/util/co;->b:Lcom/bbm/util/cn;
invoke-static {v0}, Lcom/bbm/util/cn;->b(Lcom/bbm/util/cn;)Z
iget-object v0, p0, Lcom/bbm/util/co;->b:Lcom/bbm/util/cn;
invoke-virtual {v0}, Lcom/bbm/util/cn;->a()V
:cond_12
iget-object v0, p0, Lcom/bbm/util/co;->a:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/bbm/util/co;->b:Lcom/bbm/util/cn;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
return-void
.end method