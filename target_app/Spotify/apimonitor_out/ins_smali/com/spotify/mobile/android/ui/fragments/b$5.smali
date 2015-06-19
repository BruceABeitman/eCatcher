.class final Lcom/spotify/mobile/android/ui/fragments/b$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/s;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/b$5;->a:Lcom/spotify/mobile/android/ui/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$5;->a:Lcom/spotify/mobile/android/ui/fragments/b;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;Z)Z
return-void
.end method
.method public final a(FZ)V
.registers 4
if-eqz p2, :cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$5;->a:Lcom/spotify/mobile/android/ui/fragments/b;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/b;->c(Lcom/spotify/mobile/android/ui/fragments/b;F)V
:cond_7
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$5;->a:Lcom/spotify/mobile/android/ui/fragments/b;
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c()F
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/b;->c(Lcom/spotify/mobile/android/ui/fragments/b;F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$5;->a:Lcom/spotify/mobile/android/ui/fragments/b;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;Z)Z
return-void
.end method