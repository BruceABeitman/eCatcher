.class final Lcom/spotify/music/MainActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/music/MainActivity$1;
.method constructor <init>(Lcom/spotify/music/MainActivity$1;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/MainActivity$1$1;->a:Lcom/spotify/music/MainActivity$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/music/MainActivity$1$1;->a:Lcom/spotify/music/MainActivity$1;
iget-object v0, v0, Lcom/spotify/music/MainActivity$1;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->g(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/f;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/MainActivity$1$1;->a:Lcom/spotify/music/MainActivity$1;
iget-object v1, v1, Lcom/spotify/music/MainActivity$1;->a:Lcom/spotify/music/MainActivity;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/az;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
return-void
.end method