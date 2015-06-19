.class final Lcom/spotify/mobile/android/service/SpotifyService$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/service/SpotifyService;
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$9;->b:Lcom/spotify/mobile/android/service/SpotifyService;
iput-object p2, p0, Lcom/spotify/mobile/android/service/SpotifyService$9;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-nez v2, :cond_9
:goto_8
return-void
:cond_9
invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_3e
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const-string v4, "anonymous"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9
const-string v2, "1"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9
:goto_27
const-class v1, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$9;->b:Lcom/spotify/mobile/android/service/SpotifyService;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aX:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService$9;->a:Ljava/lang/String;
invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$9;->b:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;Z)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cs;->b()V
goto :goto_8
:cond_3e
move v0, v1
goto :goto_27
.end method