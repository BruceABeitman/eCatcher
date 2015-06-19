.class final Lcom/spotify/mobile/android/util/PlaybackListener$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Lcom/spotify/mobile/android/util/PlaybackListener;
.method constructor <init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/PlaybackListener$1;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener$1;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->c()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 12
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener$1;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->c()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener$1;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
const/4 v1, 0x0
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x2
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x3
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x4
invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
const/4 v6, 0x5
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
const/4 v7, 0x6
invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I
move-result v7
const/4 v8, 0x7
invoke-static {p2, v8}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v8
invoke-virtual/range {v0 .. v8}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;IZ)V
goto :goto_b
.end method