.class final Lcom/bbm/ab;
.super Ljava/lang/Object;
.source "LocationSynchronizer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/location/Location;
.field final synthetic b:J
.field final synthetic c:Lcom/bbm/aa;
.method constructor <init>(Lcom/bbm/aa;Landroid/location/Location;J)V
.registers 5
iput-object p1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iput-object p2, p0, Lcom/bbm/ab;->a:Landroid/location/Location;
iput-wide p3, p0, Lcom/bbm/ab;->b:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 10
iget-object v6, p0, Lcom/bbm/ab;->a:Landroid/location/Location;
invoke-static {v6}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;
move-result-object v1
invoke-static {v6}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v2
invoke-static {v6}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v3
iget-wide v4, p0, Lcom/bbm/ab;->b:J
const-wide/16 v7, 0x3e8
div-long/2addr v4, v7
new-instance v0, Lcom/bbm/d/cr;
invoke-direct/range {v0 .. v5}, Lcom/bbm/d/cr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
invoke-static {v6}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v1
const-string v2, "network"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_85
sget-object v1, Lcom/bbm/d/cs;->d:Lcom/bbm/d/cs;
invoke-virtual {v0, v1}, Lcom/bbm/d/cr;->a(Lcom/bbm/d/cs;)Lcom/bbm/d/cr;
:cond_35
:goto_35
iget-object v1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v1, v1, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-wide v1, v1, Lcom/bbm/y;->a:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-eqz v1, :cond_6d
iget-wide v1, p0, Lcom/bbm/ab;->b:J
iget-object v3, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v3, v3, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-wide v3, v3, Lcom/bbm/y;->a:J
sub-long/2addr v1, v3
const-wide/32 v3, 0x1499700
cmp-long v1, v1, v3
if-gtz v1, :cond_6d
iget-object v1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v1, v1, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v1, v1, Lcom/bbm/y;->b:Landroid/location/Location;
if-eqz v1, :cond_84
iget-object v1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v1, v1, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v1, v1, Lcom/bbm/y;->b:Landroid/location/Location;
invoke-static {v1, v6}, Ldroidbox/android/location/Location;->distanceTo(Landroid/location/Location;Landroid/location/Location;)F
move-result v1
float-to-double v1, v1
const-wide v3, 0x40a7700000000000L
cmpl-double v1, v1, v3
if-lez v1, :cond_84
:cond_6d
iget-object v1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v1, v1, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-wide v2, p0, Lcom/bbm/ab;->b:J
iput-wide v2, v1, Lcom/bbm/y;->a:J
iget-object v1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v1, v1, Lcom/bbm/aa;->a:Lcom/bbm/y;
iput-object v6, v1, Lcom/bbm/y;->b:Landroid/location/Location;
iget-object v1, p0, Lcom/bbm/ab;->c:Lcom/bbm/aa;
iget-object v1, v1, Lcom/bbm/aa;->a:Lcom/bbm/y;
iget-object v1, v1, Lcom/bbm/y;->e:Lcom/bbm/d/a;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_84
return-void
:cond_85
invoke-static {v6}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v1
const-string v2, "gps"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
sget-object v1, Lcom/bbm/d/cs;->b:Lcom/bbm/d/cs;
invoke-virtual {v0, v1}, Lcom/bbm/d/cr;->a(Lcom/bbm/d/cs;)Lcom/bbm/d/cr;
goto :goto_35
.end method