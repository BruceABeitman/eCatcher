.class public abstract Lcom/spotify/mobile/android/service/flow/login/o;
.super Lcom/spotify/mobile/android/service/flow/a;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/a;-><init>()V
return-void
.end method
.method public a(Lcom/spotify/mobile/android/service/flow/login/p;)V
.registers 2
return-void
.end method
.method protected a(Lcom/spotify/mobile/android/util/SpotifyError;)V
.registers 2
return-void
.end method
.method public a(ZLjava/lang/String;)V
.registers 3
return-void
.end method
.method public final c(I)V
.registers 4
invoke-static {p1}, Lcom/spotify/mobile/android/util/SpotifyError;->a(I)Lcom/spotify/mobile/android/util/SpotifyError;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyError;->X:Lcom/spotify/mobile/android/util/SpotifyError;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/util/SpotifyError;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/util/SpotifyError;)V
:cond_f
return-void
.end method
.method public e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method