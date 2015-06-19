.class final Lcom/spotify/mobile/android/e/k$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/k;
.method constructor <init>(Lcom/spotify/mobile/android/e/k;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/k$1;->a:Lcom/spotify/mobile/android/e/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$1;->a:Lcom/spotify/mobile/android/e/k;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/k;->d()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$1;->a:Lcom/spotify/mobile/android/e/k;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/k;->c()V
:cond_d
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$1;->a:Lcom/spotify/mobile/android/e/k;
invoke-static {v0}, Lcom/spotify/mobile/android/e/k;->a(Lcom/spotify/mobile/android/e/k;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$1;->a:Lcom/spotify/mobile/android/e/k;
invoke-static {v0}, Lcom/spotify/mobile/android/e/k;->a(Lcom/spotify/mobile/android/e/k;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_25
:cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/e/k$1;->a:Lcom/spotify/mobile/android/e/k;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/k;->b()V
:cond_25
return-void
.end method