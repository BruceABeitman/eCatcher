.class final Lcom/bbm/aa;
.super Ljava/util/TimerTask;
.source "LocationSynchronizer.java"
.field final synthetic a:Lcom/bbm/y;
.method constructor <init>(Lcom/bbm/y;)V
.registers 2
iput-object p1, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
iget-object v0, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v0, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v0, v0, Lcom/bbm/y;->f:Landroid/content/Context;
const-string v1, "passive"
invoke-static {v0, v1}, Lcom/bbm/y;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
if-eqz v0, :cond_21
if-eqz v0, :cond_3b
invoke-static {v0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v3
sub-long v3, v1, v3
const-wide/32 v5, 0xdbba0
cmp-long v3, v3, v5
if-lez v3, :cond_3b
:cond_21
iget-object v0, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v0, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v0, v0, Lcom/bbm/y;->f:Landroid/content/Context;
const-string v3, "network"
invoke-static {v0, v3}, Lcom/bbm/y;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
if-nez v0, :cond_3b
iget-object v0, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v0, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v0, v0, Lcom/bbm/y;->f:Landroid/content/Context;
const-string v3, "gps"
invoke-static {v0, v3}, Lcom/bbm/y;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
:cond_3b
if-eqz v0, :cond_4f
invoke-static {v0}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_4f
iget-object v3, p0, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v3, v3, Lcom/bbm/y;->g:Landroid/os/Handler;
new-instance v4, Lcom/bbm/ab;
invoke-direct {v4, p0, v0, v1, v2}, Lcom/bbm/ab;-><init>(Lcom/bbm/aa;Landroid/location/Location;J)V
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_4f
return-void
.end method