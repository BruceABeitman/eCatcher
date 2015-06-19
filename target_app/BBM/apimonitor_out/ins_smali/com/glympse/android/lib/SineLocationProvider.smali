.class public Lcom/glympse/android/lib/SineLocationProvider;
.super Ljava/lang/Object;
.source "SineLocationProvider.java"
.implements Lcom/glympse/android/core/GLocationProvider;
.field private F:Z
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private bZ:Lcom/glympse/android/core/GLocationListener;
.field private hL:Lcom/glympse/android/core/GLocation;
.field private km:Ljava/lang/Runnable;
.field private sq:Lcom/glympse/android/core/GLocation;
.field private sr:J
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
.registers 13
const/high16 v6, 0x7fc0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/SineLocationProvider;->_handler:Lcom/glympse/android/core/GHandler;
const-wide/16 v0, 0x0
const-wide v2, 0x4047cf70f7b9e061L
const-wide v4, -0x3fa169a5d28d002eL
move v7, v6
move v8, v6
move v9, v6
move v10, v6
invoke-static/range {v0 .. v10}, Lcom/glympse/android/core/CoreFactory;->createLocation(JDDFFFFF)Lcom/glympse/android/core/GLocation;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->sq:Lcom/glympse/android/core/GLocation;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->sr:J
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/core/GHandler;Lcom/glympse/android/core/GLocation;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/SineLocationProvider;->_handler:Lcom/glympse/android/core/GHandler;
iput-object p2, p0, Lcom/glympse/android/lib/SineLocationProvider;->sq:Lcom/glympse/android/core/GLocation;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->sr:J
return-void
.end method
.method public applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
.registers 2
return-void
.end method
.method public getLastKnownLocation()Lcom/glympse/android/core/GLocation;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->hL:Lcom/glympse/android/core/GLocation;
return-object v0
.end method
.method public isStarted()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
return v0
.end method
.method public locationUpdated()V
.registers 16
const/high16 v10, 0x4040
const/4 v8, 0x0
const-wide v13, 0x408f400000000000L
iget-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
if-nez v0, :cond_10
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->bZ:Lcom/glympse/android/core/GLocationListener;
if-eqz v0, :cond_50
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v1
iget-wide v3, p0, Lcom/glympse/android/lib/SineLocationProvider;->sr:J
sub-long v3, v1, v3
long-to-double v3, v3
const-wide v5, 0x400921fd36f7e3d2L
mul-double/2addr v3, v5
const-wide v5, 0x40d4820000000000L
div-double v5, v3, v5
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->sq:Lcom/glympse/android/core/GLocation;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v3
invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D
move-result-wide v11
div-double/2addr v11, v13
add-double/2addr v3, v11
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->sq:Lcom/glympse/android/core/GLocation;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v11
div-double/2addr v5, v13
add-double/2addr v5, v11
new-instance v0, Lcom/glympse/android/lib/Location;
const/high16 v7, 0x4120
move v9, v8
move v11, v10
invoke-direct/range {v0 .. v11}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V
iput-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->hL:Lcom/glympse/android/core/GLocation;
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->bZ:Lcom/glympse/android/core/GLocationListener;
iget-object v1, p0, Lcom/glympse/android/lib/SineLocationProvider;->hL:Lcom/glympse/android/core/GLocation;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationListener;->locationChanged(Lcom/glympse/android/core/GLocation;)V
:cond_50
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
if-nez v0, :cond_61
new-instance v1, Lcom/glympse/android/lib/hr;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/SineLocationProvider;
invoke-direct {v1, v0}, Lcom/glympse/android/lib/hr;-><init>(Lcom/glympse/android/lib/SineLocationProvider;)V
iput-object v1, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
:cond_61
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
const-wide/16 v2, 0x3e8
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
goto :goto_f
.end method
.method public setLocationListener(Lcom/glympse/android/core/GLocationListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/SineLocationProvider;->bZ:Lcom/glympse/android/core/GLocationListener;
return-void
.end method
.method public start()V
.registers 5
iget-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
new-instance v1, Lcom/glympse/android/lib/hr;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/SineLocationProvider;
invoke-direct {v1, v0}, Lcom/glympse/android/lib/hr;-><init>(Lcom/glympse/android/lib/SineLocationProvider;)V
iput-object v1, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
const-wide/16 v2, 0x3e8
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
goto :goto_4
.end method
.method public stop()V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->F:Z
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/SineLocationProvider;->km:Ljava/lang/Runnable;
goto :goto_4
.end method