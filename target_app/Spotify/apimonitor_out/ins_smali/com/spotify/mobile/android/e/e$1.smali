.class final Lcom/spotify/mobile/android/e/e$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/e;
.method constructor <init>(Lcom/spotify/mobile/android/e/e;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/e$1;->a:Lcom/spotify/mobile/android/e/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/e$1;->a:Lcom/spotify/mobile/android/e/e;
invoke-static {v0}, Lcom/spotify/mobile/android/e/e;->a(Lcom/spotify/mobile/android/e/e;)Lcom/spotify/mobile/android/e/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/c;->d()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/e/e$1;->a:Lcom/spotify/mobile/android/e/e;
invoke-static {v0}, Lcom/spotify/mobile/android/e/e;->b(Lcom/spotify/mobile/android/e/e;)Lcom/spotify/mobile/android/e/h;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/h;->d()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/e/e$1;->a:Lcom/spotify/mobile/android/e/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/e;->b()V
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/e/e$1;->a:Lcom/spotify/mobile/android/e/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/e;->c()V
goto :goto_1d
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/e$1;->a:Lcom/spotify/mobile/android/e/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/e;->c()V
return-void
.end method