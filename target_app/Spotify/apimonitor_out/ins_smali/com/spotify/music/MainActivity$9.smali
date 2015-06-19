.class final Lcom/spotify/music/MainActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/activity/i;
.field final synthetic a:Lcom/spotify/music/MainActivity;
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/MainActivity$9;->a:Lcom/spotify/music/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 3
iget-object v0, p0, Lcom/spotify/music/MainActivity$9;->a:Lcom/spotify/music/MainActivity;
invoke-virtual {v0, p1}, Lcom/spotify/music/MainActivity;->onNewIntent(Landroid/content/Intent;)V
return-void
.end method