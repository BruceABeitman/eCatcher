.class  Lcom/glympse/android/lib/iw;
.super Ljava/lang/Object;
.source "TrackBuilder.java"
.implements Lcom/glympse/android/api/GTrackBuilder;
.field private oQ:Lcom/glympse/android/lib/GTrackPrivate;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/iv;
invoke-direct {v0}, Lcom/glympse/android/lib/iv;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/iw;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
return-void
.end method
.method public addLocation(Lcom/glympse/android/core/GLocation;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/iw;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTrackPrivate;->addCore(Lcom/glympse/android/core/GLocation;)V
return-void
.end method
.method public calculateDistance()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/iw;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->calculateDistance()V
return-void
.end method
.method public getTrack()Lcom/glympse/android/api/GTrack;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/iw;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
return-object v0
.end method
.method public setDistance(I)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/iw;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTrackPrivate;->setDistance(I)V
return-void
.end method
.method public setSource(I)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/iw;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTrackPrivate;->setSource(I)V
return-void
.end method