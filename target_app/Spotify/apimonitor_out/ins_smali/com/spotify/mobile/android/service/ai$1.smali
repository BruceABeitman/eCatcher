.class final Lcom/spotify/mobile/android/service/ai$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/ai;
.method constructor <init>(Lcom/spotify/mobile/android/service/ai;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/ai$1;->a:Lcom/spotify/mobile/android/service/ai;
invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method public final onChange(Z)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/service/ai$1;->onChange(ZLandroid/net/Uri;)V
return-void
.end method
.method public final onChange(ZLandroid/net/Uri;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai$1;->a:Lcom/spotify/mobile/android/service/ai;
invoke-static {v0}, Lcom/spotify/mobile/android/service/ai;->a(Lcom/spotify/mobile/android/service/ai;)Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai$1;->a:Lcom/spotify/mobile/android/service/ai;
invoke-static {v0}, Lcom/spotify/mobile/android/service/ai;->b(Lcom/spotify/mobile/android/service/ai;)Lcom/spotify/mobile/android/service/c/d;
move-result-object v0
instance-of v0, v0, Lcom/spotify/mobile/android/service/c/a;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai$1;->a:Lcom/spotify/mobile/android/service/ai;
invoke-static {v0}, Lcom/spotify/mobile/android/service/ai;->b(Lcom/spotify/mobile/android/service/ai;)Lcom/spotify/mobile/android/service/c/d;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/d;->a()V
:cond_1b
return-void
.end method