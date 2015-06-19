.class final Lcom/spotify/music/MainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/logic/g;
.field final synthetic a:Lcom/spotify/music/MainActivity;
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/MainActivity$1;->a:Lcom/spotify/music/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/music/MainActivity$1;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->h(Lcom/spotify/music/MainActivity;)Lcom/spotify/music/a;
move-result-object v0
new-instance v1, Lcom/spotify/music/MainActivity$1$1;
invoke-direct {v1, p0}, Lcom/spotify/music/MainActivity$1$1;-><init>(Lcom/spotify/music/MainActivity$1;)V
invoke-virtual {v0, v1}, Lcom/spotify/music/a;->post(Ljava/lang/Runnable;)Z
return-void
.end method