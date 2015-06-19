.class final Lcom/spotify/mobile/android/spotlets/artist/g$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/j;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/g;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/g$2;->a:Lcom/spotify/mobile/android/spotlets/artist/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cw;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g$2;->a:Lcom/spotify/mobile/android/spotlets/artist/g;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/g;->a(Lcom/spotify/mobile/android/spotlets/artist/g;)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g$2;->a:Lcom/spotify/mobile/android/spotlets/artist/g;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/g;->a(Lcom/spotify/mobile/android/spotlets/artist/g;)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a(Lcom/spotify/mobile/android/util/cw;)V
:cond_11
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g$2;->a:Lcom/spotify/mobile/android/spotlets/artist/g;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/g;->a(Lcom/spotify/mobile/android/spotlets/artist/g;)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g$2;->a:Lcom/spotify/mobile/android/spotlets/artist/g;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/g;->a(Lcom/spotify/mobile/android/spotlets/artist/g;)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a(Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public final a(Z)V
.registers 2
return-void
.end method