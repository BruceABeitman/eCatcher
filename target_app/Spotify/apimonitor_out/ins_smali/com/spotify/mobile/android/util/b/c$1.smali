.class final Lcom/spotify/mobile/android/util/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/SpotifyLink;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/util/b/c$1;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/util/b/c$1;->b:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 7
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
const/4 v0, 0x0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/util/b/c$1;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/spotify/mobile/android/util/b/c$1;->b:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v2, v3, v0, v1}, Lcom/spotify/mobile/android/util/b/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cs;->b()V
goto :goto_6
.end method