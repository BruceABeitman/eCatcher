.class final Lcom/spotify/mobile/android/util/PlaybackListener$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Lcom/spotify/mobile/android/util/PlaybackListener;
.method constructor <init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/PlaybackListener$2;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener$2;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->c()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 14
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener$2;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->c()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener$2;->a:Lcom/spotify/mobile/android/util/PlaybackListener;
const/4 v1, 0x0
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
const/4 v2, 0x1
invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v2
const/4 v3, 0x2
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
const/4 v4, 0x3
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->values()[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
move-result-object v5
const/4 v6, 0x4
invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I
move-result v6
aget-object v5, v5, v6
const/4 v6, 0x5
invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I
move-result v6
const/4 v7, 0x6
invoke-static {p2, v7}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v7
const/4 v8, 0x7
invoke-static {p2, v8}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v8
const/16 v9, 0x8
const/4 v10, 0x0
invoke-static {p2, v9, v10}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual/range {v0 .. v9}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(ZZZZLcom/spotify/mobile/android/provider/Metadata$Track$AdType;IZZLjava/lang/String;)V
goto :goto_b
.end method