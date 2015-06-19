.class public final Lcom/spotify/mobile/android/e/b;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"
.method public constructor <init>(Lcom/spotify/mobile/android/e/m;)V
.registers 4
const-string v0, "AudioFocus"
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/e/b$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/b$1;-><init>(Lcom/spotify/mobile/android/e/b;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/e/m;->b()Lcom/spotify/mobile/android/service/w;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/x;)V
return-void
.end method