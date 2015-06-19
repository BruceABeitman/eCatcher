.class final Lcom/spotify/mobile/android/e/q$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/q;
.method constructor <init>(Lcom/spotify/mobile/android/e/q;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/q$1;->a:Lcom/spotify/mobile/android/e/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/q$1;->a:Lcom/spotify/mobile/android/e/q;
invoke-static {v0}, Lcom/spotify/mobile/android/e/q;->a(Lcom/spotify/mobile/android/e/q;)Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/e/q$1;->a:Lcom/spotify/mobile/android/e/q;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/q;->b()V
:cond_11
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/q$1;->a:Lcom/spotify/mobile/android/e/q;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/q;->c()V
return-void
.end method