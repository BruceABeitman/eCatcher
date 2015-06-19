.class final Lcom/spotify/music/spotlets/radio/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/music/spotlets/radio/a/b;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/music/spotlets/radio/a/b;)V
.registers 5
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "paused"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "context_uri"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "is_radio"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-virtual {v1}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 7
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/a/b;->a(Lcom/spotify/music/spotlets/radio/a/b;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
const-string v2, ""
invoke-static {v1, v2}, Lcom/spotify/music/spotlets/radio/a/b;->a(Lcom/spotify/music/spotlets/radio/a/b;Ljava/lang/String;)Ljava/lang/String;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_33
const/4 v1, 0x0
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
const/4 v2, 0x2
invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v2
const/4 v3, 0x1
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/spotify/music/spotlets/radio/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v1, :cond_33
if-eqz v2, :cond_33
if-eqz v3, :cond_33
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-static {v1, v3}, Lcom/spotify/music/spotlets/radio/a/b;->a(Lcom/spotify/music/spotlets/radio/a/b;Ljava/lang/String;)Ljava/lang/String;
:cond_33
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-static {v1}, Lcom/spotify/music/spotlets/radio/a/b;->a(Lcom/spotify/music/spotlets/radio/a/b;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b$1;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/a/b;->notifyDataSetChanged()V
:cond_44
return-void
.end method