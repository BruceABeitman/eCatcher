.class final Lcom/spotify/music/internal/a/b$1;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/internal/a/b;
.method constructor <init>(Lcom/spotify/music/internal/a/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/internal/a/b$1;->a:Lcom/spotify/music/internal/a/b;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/music/internal/a/b$1;->a:Lcom/spotify/music/internal/a/b;
invoke-static {v0}, Lcom/spotify/music/internal/a/b;->b(Lcom/spotify/music/internal/a/b;)Lcom/spotify/music/internal/a/a;
iget-object v0, p0, Lcom/spotify/music/internal/a/b$1;->a:Lcom/spotify/music/internal/a/b;
invoke-static {v0}, Lcom/spotify/music/internal/a/b;->a(Lcom/spotify/music/internal/a/b;)Landroid/content/Context;
move-result-object v1
const-class v0, Lcom/spotify/mobile/android/util/dc;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lnet/hockeyapp/android/c;
invoke-static {v1, v0}, Lnet/hockeyapp/android/b;->a(Landroid/content/Context;Lnet/hockeyapp/android/c;)V
return-void
.end method