.class final Lcom/spotify/music/MainActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/af;
.field final synthetic a:Lcom/spotify/music/MainActivity;
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/MainActivity$11;->a:Lcom/spotify/music/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/music/MainActivity$11;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->o(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/util/ae;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/music/MainActivity$11;->a:Lcom/spotify/music/MainActivity;
iget-object v1, p0, Lcom/spotify/music/MainActivity$11;->a:Lcom/spotify/music/MainActivity;
invoke-static {v1, p1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method