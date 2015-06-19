.class final Lcom/spotify/mobile/android/e/k$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/k;
.method constructor <init>(Lcom/spotify/mobile/android/e/k;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/k$2;->a:Lcom/spotify/mobile/android/e/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$2;->a:Lcom/spotify/mobile/android/e/k;
invoke-static {v0}, Lcom/spotify/mobile/android/e/k;->a(Lcom/spotify/mobile/android/e/k;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$2;->a:Lcom/spotify/mobile/android/e/k;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/k;->b()V
:cond_15
return-void
.end method
.method public final b()V
.registers 1
return-void
.end method