.class final Lcom/spotify/mobile/android/e/n$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/n;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$8;->a:Lcom/spotify/mobile/android/e/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$8;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$8;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$8;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->c(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f()V
:cond_29
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$8;->a:Lcom/spotify/mobile/android/e/n;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;Z)Z
return-void
.end method