.class final Lcom/spotify/mobile/android/service/player/a/i;
.super Lcom/spotify/mobile/android/service/b/a;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/b/a;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
.registers 9
const/4 v3, 0x0
sget-object v2, Lcom/spotify/mobile/android/service/player/model/a/a;->a:[Ljava/lang/String;
move-object v0, p1
move-object v1, p2
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
.registers 3
invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-static {p1}, Lcom/spotify/mobile/android/service/player/model/a/a;->a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/service/player/model/d;
move-result-object v0
goto :goto_7
.end method
.method protected final s()Landroid/net/Uri;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
return-object v0
.end method