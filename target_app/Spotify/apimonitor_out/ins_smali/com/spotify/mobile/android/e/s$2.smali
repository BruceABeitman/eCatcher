.class final Lcom/spotify/mobile/android/e/s$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/s;
.method constructor <init>(Lcom/spotify/mobile/android/e/s;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/s$2;->a:Lcom/spotify/mobile/android/e/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/s$2;->a:Lcom/spotify/mobile/android/e/s;
invoke-static {v0}, Lcom/spotify/mobile/android/e/s;->a(Lcom/spotify/mobile/android/e/s;)V
iget-object v0, p0, Lcom/spotify/mobile/android/e/s$2;->a:Lcom/spotify/mobile/android/e/s;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/s;->b()V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/s$2;->a:Lcom/spotify/mobile/android/e/s;
invoke-static {v0}, Lcom/spotify/mobile/android/e/s;->b(Lcom/spotify/mobile/android/e/s;)Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/e/s$2;->a:Lcom/spotify/mobile/android/e/s;
invoke-static {v0}, Lcom/spotify/mobile/android/e/s;->c(Lcom/spotify/mobile/android/e/s;)Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/e/s$2;->a:Lcom/spotify/mobile/android/e/s;
invoke-static {v0}, Lcom/spotify/mobile/android/e/s;->d(Lcom/spotify/mobile/android/e/s;)V
:cond_1d
return-void
.end method