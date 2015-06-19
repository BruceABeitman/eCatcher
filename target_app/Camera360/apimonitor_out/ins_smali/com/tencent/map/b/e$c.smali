.class final Lcom/tencent/map/b/e$c;
.super Ljava/lang/Object;
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;
.field private synthetic a:Lcom/tencent/map/b/e;
.method private constructor <init>(Lcom/tencent/map/b/e;)V
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/map/b/e;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/map/b/e$c;-><init>(Lcom/tencent/map/b/e;)V
return-void
.end method
.method public final onGpsStatusChanged(I)V
.registers 4
packed-switch p1, :pswitch_data_1e
:goto_3
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;)V
return-void
:pswitch_9
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I
goto :goto_3
:pswitch_10
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I
goto :goto_3
:pswitch_17
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
const/4 v1, 0x2
invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I
goto :goto_3
:pswitch_data_1e
.packed-switch 0x1
:pswitch_9
:pswitch_10
:pswitch_17
.end packed-switch
.end method
.method public final onLocationChanged(Landroid/location/Location;)V
.registers 11
const-wide v7, 0x3e45798ee2308c3aL
const/4 v0, 0x0
if-eqz p1, :cond_24
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v3
const-wide v5, 0x403dffffe2000000L
cmpl-double v5, v1, v5
if-eqz v5, :cond_22
const-wide v5, 0x4059fffffc800000L
cmpl-double v5, v3, v5
if-nez v5, :cond_25
:goto_22
:cond_22
if-nez v0, :cond_5b
:goto_24
:cond_24
return-void
:cond_25
invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D
move-result-wide v5
cmpg-double v5, v5, v7
if-ltz v5, :cond_22
invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D
move-result-wide v5
cmpg-double v5, v5, v7
if-ltz v5, :cond_22
const-wide v5, -0x3fa9800000000000L
cmpg-double v5, v1, v5
if-ltz v5, :cond_22
const-wide v5, 0x4056800000000000L
cmpl-double v1, v1, v5
if-gtz v1, :cond_22
const-wide v1, -0x3f99800000000000L
cmpg-double v1, v3, v1
if-ltz v1, :cond_22
const-wide v1, 0x4066800000000000L
cmpl-double v1, v3, v1
if-gtz v1, :cond_22
const/4 v0, 0x1
goto :goto_22
:cond_5b
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;J)J
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;)V
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
const/4 v1, 0x2
invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I
iget-object v8, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
new-instance v0, Lcom/tencent/map/b/e$a;
iget-object v1, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
iget-object v2, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v2}, Lcom/tencent/map/b/e;->b(Lcom/tencent/map/b/e;)I
move-result v3
iget-object v2, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v2}, Lcom/tencent/map/b/e;->c(Lcom/tencent/map/b/e;)I
move-result v4
iget-object v2, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v2}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;)I
move-result v5
iget-object v2, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v2}, Lcom/tencent/map/b/e;->e(Lcom/tencent/map/b/e;)J
move-result-wide v6
move-object v2, p1
invoke-direct/range {v0 .. v7}, Lcom/tencent/map/b/e$a;-><init>(Lcom/tencent/map/b/e;Landroid/location/Location;IIIJ)V
invoke-static {v8, v0}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;Lcom/tencent/map/b/e$a;)Lcom/tencent/map/b/e$a;
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
move-result-object v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v1}, Lcom/tencent/map/b/e;->g(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/tencent/map/b/e$b;->a(Lcom/tencent/map/b/e$a;)V
goto/16 :goto_24
.end method
.method public final onProviderDisabled(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_c
:try_start_3
const-string/jumbo v0, "gps"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_9
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_35
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
iget-object v1, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v1, v2}, Lcom/tencent/map/b/e;->c(Lcom/tencent/map/b/e;I)I
move-result v1
invoke-static {v0, v1}, Lcom/tencent/map/b/e;->b(Lcom/tencent/map/b/e;I)I
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0, v2}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;I)I
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
move-result-object v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v1}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;)I
move-result v1
invoke-interface {v0, v1}, Lcom/tencent/map/b/e$b;->a(I)V
goto :goto_c
:catch_35
move-exception v0
goto :goto_c
.end method
.method public final onProviderEnabled(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_b
:try_start_2
const-string/jumbo v0, "gps"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_8
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_2a
move-result v0
if-nez v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
const/4 v1, 0x4
invoke-static {v0, v1}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;I)I
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
move-result-object v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/e$c;->a:Lcom/tencent/map/b/e;
invoke-static {v1}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;)I
move-result v1
invoke-interface {v0, v1}, Lcom/tencent/map/b/e$b;->a(I)V
goto :goto_b
:catch_2a
move-exception v0
goto :goto_b
.end method
.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 4
return-void
.end method