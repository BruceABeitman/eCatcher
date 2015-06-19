.class public final Lcom/spotify/mobile/android/service/player/model/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x1a
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "paused"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "position"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "length"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "shuffle"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "repeat_state"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "is_prev_enabled"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_next_enabled"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_seek_enabled"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_radio"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "is_mock_radio"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_radio_loading"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_radio_improving"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "radio_thumb_state"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "context_type"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "context_title"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "context_owner"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "context_uri"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "is_ad_playing"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "ad_url"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "skips_remaining"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "is_queue_available"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "is_suggested_track"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string v2, "state_cached_on"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string v2, "is_shuffle_restricted"
aput-object v2, v0, v1
const/16 v1, 0x18
const-string v2, "row"
aput-object v2, v0, v1
const/16 v1, 0x19
const-string v2, "is_preview_track"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/player/model/a/a;->a:[Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/service/player/model/d;
.registers 30
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-eqz v4, :cond_103
const/4 v5, 0x1
:goto_e
const/4 v4, 0x1
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v6
const/4 v4, 0x2
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v7
const/4 v4, 0x3
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v8
const/4 v4, 0x4
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v9
const/4 v4, 0x5
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v10
const/4 v4, 0x6
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v11
const/4 v4, 0x7
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v12
const/16 v4, 0xb
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v13
const/16 v4, 0x9
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v14
const/16 v4, 0xa
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v15
const/16 v4, 0xc
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v16
const/16 v4, 0xd
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
const/16 v17, 0xe
const-string v18, ""
move-object/from16 v0, p0
move/from16 v1, v17
move-object/from16 v2, v18
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v19
const/16 v17, 0xf
const-string v18, ""
move-object/from16 v0, p0
move/from16 v1, v17
move-object/from16 v2, v18
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v20
const/16 v17, 0x10
const-string v18, ""
move-object/from16 v0, p0
move/from16 v1, v17
move-object/from16 v2, v18
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v21
const/16 v17, 0x8
move-object/from16 v0, p0
move/from16 v1, v17
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v17
new-instance v18, Lcom/spotify/mobile/android/model/c;
invoke-static {v4}, Lcom/spotify/mobile/android/model/ContextType;->a(I)Lcom/spotify/mobile/android/model/ContextType;
move-result-object v4
new-instance v22, Lcom/spotify/mobile/android/util/SpotifyLink;
move-object/from16 v0, v22
move-object/from16 v1, v21
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
move-object/from16 v1, v19
move-object/from16 v2, v20
move-object/from16 v3, v22
invoke-direct {v0, v4, v1, v2, v3}, Lcom/spotify/mobile/android/model/c;-><init>(Lcom/spotify/mobile/android/model/ContextType;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/SpotifyLink;)V
const/16 v4, 0x11
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v19
const/16 v4, 0x12
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v20
const/16 v4, 0x13
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v21
const/16 v4, 0x14
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v22
const/16 v4, 0x15
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v23
const/16 v4, 0x17
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v24
const/16 v4, 0x19
move-object/from16 v0, p0
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v28
const/16 v4, 0x18
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v25
const/16 v4, 0x16
move-object/from16 v0, p0
invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v26
new-instance v4, Lcom/spotify/mobile/android/service/player/model/d;
invoke-direct/range {v4 .. v28}, Lcom/spotify/mobile/android/service/player/model/d;-><init>(ZIIZIZZZZZZLjava/lang/String;ZLcom/spotify/mobile/android/model/c;ZLjava/lang/String;IZZZIJZ)V
return-object v4
:cond_103
const/4 v5, 0x0
goto/16 :goto_e
.end method