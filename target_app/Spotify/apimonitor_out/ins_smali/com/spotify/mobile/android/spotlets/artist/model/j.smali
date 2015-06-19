.class public final Lcom/spotify/mobile/android/spotlets/artist/model/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/a;
.field public static final a:[Ljava/lang/String;
.field private final b:I
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Z
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.field private final i:I
.field private final j:Z
.field private final k:Z
.field private final l:I
.field private final m:I
.field private final n:Z
.field private final o:Z
.field private final p:Z
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x16
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "uri"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "collection_uri"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "artist_name"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "artist_uri"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "image_small_uri"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "year"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "type"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "is_available"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_artist_browsable"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "is_queueable"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "is_in_collection"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "tracks_count"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "tracks_in_collection_count"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "is_playing"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "is_paused"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "offline_state"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "sync_progress"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "can_undownload"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "is_complete_in_collection"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->a:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIIZZZ)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->b:I
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->d:Ljava/lang/String;
iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->e:Z
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->f:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->g:Ljava/lang/String;
iput-object p7, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->h:Ljava/lang/String;
iput p8, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->i:I
iput-boolean p9, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->j:Z
iput-boolean p10, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->k:Z
iput p11, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->l:I
iput p12, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->m:I
iput-boolean p13, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->n:Z
iput-boolean p14, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->o:Z
iput-boolean p15, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->p:Z
return-void
.end method
.method public static a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/artist/model/j;
.registers 18
invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-nez v1, :cond_e
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Some cursor problems over here!"
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
const/4 v1, 0x0
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v9
const/4 v1, 0x1
const-string v2, ""
move-object/from16 v0, p0
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v7
const/4 v1, 0x2
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
const/4 v1, 0x3
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/16 v1, 0x9
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v11
const/16 v1, 0xa
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v5
const/16 v1, 0xc
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v10
const/16 v1, 0xe
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v12
const/16 v1, 0xf
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v13
const/16 v1, 0xb
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v14
const/16 v1, 0xd
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v15
const/16 v1, 0x15
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v16
const/16 v1, 0x12
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v2
const/4 v1, 0x4
const-string v4, ""
move-object/from16 v0, p0
invoke-static {v0, v1, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v4
const/4 v1, 0x5
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/model/j;
invoke-direct/range {v1 .. v16}, Lcom/spotify/mobile/android/spotlets/artist/model/j;-><init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIIZZZ)V
return-object v1
.end method
.method public final getAlbumImageUri()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public final getArtistName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->d:Ljava/lang/String;
return-object v0
.end method
.method public final getArtistUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->f:Ljava/lang/String;
return-object v0
.end method
.method public final getCanUndownload()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getCollectionState()Lcom/spotify/mobile/android/util/Collection$State;
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->o:Z
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->p:Z
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Collection;->a(ZZ)Lcom/spotify/mobile/android/util/Collection$State;
move-result-object v0
return-object v0
.end method
.method public final getCollectionUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->c:Ljava/lang/String;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->g:Ljava/lang/String;
return-object v0
.end method
.method public final getOfflineState()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->b:I
return v0
.end method
.method public final getSyncProgress()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->h:Ljava/lang/String;
return-object v0
.end method
.method public final isArtistBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->e:Z
return v0
.end method
.method public final isAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->k:Z
return v0
.end method
.method public final isQueueable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->j:Z
return v0
.end method
.method public final isRadioAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/j;->n:Z
return v0
.end method