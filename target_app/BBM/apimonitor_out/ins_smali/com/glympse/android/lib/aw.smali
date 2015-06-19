.class  Lcom/glympse/android/lib/aw;
.super Ljava/lang/Object;
.source "DemoMode.java"
.implements Lcom/glympse/android/core/GLocationProvider;
.field private bZ:Lcom/glympse/android/core/GLocationListener;
.field private hL:Lcom/glympse/android/core/GLocation;
.method public constructor <init>(Lcom/glympse/android/core/GLocation;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/aw;->hL:Lcom/glympse/android/core/GLocation;
return-void
.end method
.method public applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
.registers 2
return-void
.end method
.method public getLastKnownLocation()Lcom/glympse/android/core/GLocation;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public isStarted()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public setLocationListener(Lcom/glympse/android/core/GLocationListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/aw;->bZ:Lcom/glympse/android/core/GLocationListener;
return-void
.end method
.method public start()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/aw;->bZ:Lcom/glympse/android/core/GLocationListener;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/aw;->bZ:Lcom/glympse/android/core/GLocationListener;
iget-object v1, p0, Lcom/glympse/android/lib/aw;->hL:Lcom/glympse/android/core/GLocation;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationListener;->locationChanged(Lcom/glympse/android/core/GLocation;)V
:cond_b
return-void
.end method
.method public stop()V
.registers 1
return-void
.end method