.class final Lcom/spotify/mobile/android/e/n$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/p;
.field final synthetic b:Lcom/spotify/mobile/android/e/n;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;Lcom/spotify/mobile/android/e/p;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$10;->b:Lcom/spotify/mobile/android/e/n;
iput-object p2, p0, Lcom/spotify/mobile/android/e/n$10;->a:Lcom/spotify/mobile/android/e/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$10;->a:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$10;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->g(Lcom/spotify/mobile/android/e/n;)V
:cond_11
return-void
.end method
.method public final b()V
.registers 1
return-void
.end method