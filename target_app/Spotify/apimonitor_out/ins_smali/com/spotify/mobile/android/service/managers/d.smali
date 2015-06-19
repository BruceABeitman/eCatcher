.class public final Lcom/spotify/mobile/android/service/managers/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
.method public constructor <init>(Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->clearQueue()V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->seekToPosition(I)V
return-void
.end method
.method public final a(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 16
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
move-object v1, p1
move v2, p2
move v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
move-object v7, p7
invoke-interface/range {v0 .. v7}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->playPath(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->setPaused(Z)V
return-void
.end method
.method public final a([Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->playPreview([Ljava/lang/String;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->togglePaused()V
return-void
.end method
.method public final b(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->skipNTracksBackwards(I)V
return-void
.end method
.method public final b(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->playPrevious(Z)V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->playNext()V
return-void
.end method
.method public final c(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->skipNTracksForwards(I)V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/d;->a:Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;->stopPreview()V
return-void
.end method