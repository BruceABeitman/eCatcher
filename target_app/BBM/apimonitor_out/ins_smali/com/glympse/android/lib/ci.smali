.class  Lcom/glympse/android/lib/ci;
.super Ljava/lang/Object;
.source "GogoLocationProvider.java"
.implements Lcom/glympse/android/core/GLocationProvider;
.field private F:Z
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.field private bZ:Lcom/glympse/android/core/GLocationListener;
.field private cb:I
.field private hL:Lcom/glympse/android/core/GLocation;
.field private km:Ljava/lang/Runnable;
.field private lT:Ljava/lang/String;
.method public constructor <init>(Lcom/glympse/android/core/GHandler;Lcom/glympse/android/lib/GJobQueue;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ci;->_handler:Lcom/glympse/android/core/GHandler;
iput-object p2, p0, Lcom/glympse/android/lib/ci;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iput-object p3, p0, Lcom/glympse/android/lib/ci;->lT:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
const/4 v0, 0x1
iput v0, p0, Lcom/glympse/android/lib/ci;->cb:I
return-void
.end method
.method private c(I)V
.registers 4
iget v0, p0, Lcom/glympse/android/lib/ci;->cb:I
if-eq p1, v0, :cond_11
iput p1, p0, Lcom/glympse/android/lib/ci;->cb:I
iget-object v0, p0, Lcom/glympse/android/lib/ci;->bZ:Lcom/glympse/android/core/GLocationListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/lib/ci;->bZ:Lcom/glympse/android/core/GLocationListener;
iget v1, p0, Lcom/glympse/android/lib/ci;->cb:I
invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationListener;->stateChanged(I)V
:cond_11
return-void
.end method
.method public applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
.registers 2
return-void
.end method
.method protected bu()V
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
if-nez v0, :cond_8
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
:goto_7
return-void
:cond_8
const/4 v0, 0x4
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ci;->c(I)V
invoke-virtual {p0}, Lcom/glympse/android/lib/ci;->bw()V
goto :goto_7
.end method
.method protected bv()V
.registers 5
iget-object v1, p0, Lcom/glympse/android/lib/ci;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
new-instance v2, Lcom/glympse/android/lib/cf;
new-instance v3, Lcom/glympse/android/lib/ck;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ci;
invoke-direct {v3, v0}, Lcom/glympse/android/lib/ck;-><init>(Lcom/glympse/android/lib/ci;)V
iget-object v0, p0, Lcom/glympse/android/lib/ci;->lT:Ljava/lang/String;
invoke-direct {v2, v3, v0}, Lcom/glympse/android/lib/cf;-><init>(Lcom/glympse/android/lib/cg;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
return-void
.end method
.method protected bw()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/ci;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
const-wide/16 v2, 0x2710
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
return-void
.end method
.method public getLastKnownLocation()Lcom/glympse/android/core/GLocation;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ci;->hL:Lcom/glympse/android/core/GLocation;
return-object v0
.end method
.method public isStarted()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
return v0
.end method
.method protected locationChanged(Lcom/glympse/android/core/GLocation;)V
.registers 10
iget-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
if-nez v0, :cond_8
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/glympse/android/lib/ci;->bZ:Lcom/glympse/android/core/GLocationListener;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/glympse/android/lib/ci;->hL:Lcom/glympse/android/core/GLocation;
if-eqz v0, :cond_33
const/4 v0, 0x3
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ci;->c(I)V
iget-object v0, p0, Lcom/glympse/android/lib/ci;->hL:Lcom/glympse/android/core/GLocation;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v0
iget-object v2, p0, Lcom/glympse/android/lib/ci;->hL:Lcom/glympse/android/core/GLocation;
invoke-interface {v2}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v2
invoke-interface {p1}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v4
invoke-interface {p1}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v6
invoke-static/range {v0 .. v7}, Lcom/glympse/android/lib/Location;->bearing(DDDD)D
move-result-wide v0
double-to-float v1, v0
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GLocationPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLocationPrivate;->setBearing(F)V
:cond_33
iput-object p1, p0, Lcom/glympse/android/lib/ci;->hL:Lcom/glympse/android/core/GLocation;
iget-object v0, p0, Lcom/glympse/android/lib/ci;->bZ:Lcom/glympse/android/core/GLocationListener;
iget-object v1, p0, Lcom/glympse/android/lib/ci;->hL:Lcom/glympse/android/core/GLocation;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationListener;->locationChanged(Lcom/glympse/android/core/GLocation;)V
:cond_3c
invoke-virtual {p0}, Lcom/glympse/android/lib/ci;->bw()V
goto :goto_7
.end method
.method public setLocationListener(Lcom/glympse/android/core/GLocationListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/ci;->bZ:Lcom/glympse/android/core/GLocationListener;
return-void
.end method
.method public start()V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
new-instance v1, Lcom/glympse/android/lib/cj;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ci;
invoke-direct {v1, v0}, Lcom/glympse/android/lib/cj;-><init>(Lcom/glympse/android/lib/ci;)V
iput-object v1, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
invoke-virtual {p0}, Lcom/glympse/android/lib/ci;->bv()V
goto :goto_4
.end method
.method public stop()V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/ci;->F:Z
iget-object v0, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/ci;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ci;->km:Ljava/lang/Runnable;
goto :goto_4
.end method