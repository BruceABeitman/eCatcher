.class final Lcom/spotify/mobile/android/spotlets/a/b$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/b$7;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v5, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$7;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->j(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/b;->d(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$7;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/model/d;->a:[Ljava/lang/String;
const-string v4, "LIMIT=3"
move-object v6, v5
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$7;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->h(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$7;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->h(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$7;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->i(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/o;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
return-void
.end method