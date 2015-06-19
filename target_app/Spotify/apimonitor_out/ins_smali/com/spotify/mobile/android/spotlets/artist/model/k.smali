.class public final Lcom/spotify/mobile/android/spotlets/artist/model/k;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/n;
.field public static final a:[Ljava/lang/String;
.field private final b:Z
.field private final c:I
.field private final d:Ljava/lang/String;
.field private final e:Z
.field private final f:I
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.field private final i:Ljava/lang/String;
.field private final j:Ljava/lang/String;
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.field private final m:Ljava/lang/String;
.field private final n:Z
.field private final o:Z
.field private final p:Z
.field private final q:Z
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x10
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "uri"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "album_name"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "album_uri"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "artist_name"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "artist_uri"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_queued"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "offline_state"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "is_artist_browsable"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_album_browsable"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_in_collection"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "is_available"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "album_collection_uri"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "artist_collection_uri"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "can_add_to_collection"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->a:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>(ZILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V
.registers 18
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->b:Z
iput p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->c:I
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->d:Ljava/lang/String;
iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->e:Z
iput p5, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->f:I
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->g:Ljava/lang/String;
iput-object p7, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->h:Ljava/lang/String;
iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->i:Ljava/lang/String;
iput-object p9, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->j:Ljava/lang/String;
iput-object p10, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->k:Ljava/lang/String;
iput-boolean p11, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->n:Z
iput-boolean p12, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->o:Z
iput-object p13, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->l:Ljava/lang/String;
iput-object p14, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->m:Ljava/lang/String;
move/from16 v0, p15
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->p:Z
move/from16 v0, p16
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->q:Z
return-void
.end method
.method public static a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/artist/model/k;
.registers 19
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
move-result v3
const/4 v1, 0x1
const-string v2, ""
move-object/from16 v0, p0
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v4
const/4 v1, 0x2
const-string v2, ""
move-object/from16 v0, p0
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v11
const/4 v1, 0x3
const-string v2, ""
move-object/from16 v0, p0
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v10
const/4 v1, 0x5
const-string v2, ""
move-object/from16 v0, p0
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v8
const/4 v1, 0x4
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
const/4 v1, 0x6
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const/16 v1, 0xd
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v14
const/16 v1, 0xe
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v15
const/16 v1, 0x9
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v12
const/16 v1, 0xa
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v13
const/4 v1, 0x7
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v2
const/16 v1, 0xb
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v5
const/16 v1, 0xc
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v16
const/16 v1, 0xf
move-object/from16 v0, p0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v17
const/16 v1, 0x8
move-object/from16 v0, p0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v6
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/model/k;
invoke-direct/range {v1 .. v17}, Lcom/spotify/mobile/android/spotlets/artist/model/k;-><init>(ZILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V
return-object v1
.end method
.method public final canAddToCollection()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->q:Z
return v0
.end method
.method public final getAlbumCollectionUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->l:Ljava/lang/String;
return-object v0
.end method
.method public final getAlbumImageUri()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getAlbumName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->j:Ljava/lang/String;
return-object v0
.end method
.method public final getAlbumUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->i:Ljava/lang/String;
return-object v0
.end method
.method public final getArtistName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->h:Ljava/lang/String;
return-object v0
.end method
.method public final getArtistUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->g:Ljava/lang/String;
return-object v0
.end method
.method public final getOfflineState()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->f:I
return v0
.end method
.method public final getTrackId()J
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->c:I
int-to-long v0, v0
return-wide v0
.end method
.method public final getTrackName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->k:Ljava/lang/String;
return-object v0
.end method
.method public final getTrackUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->d:Ljava/lang/String;
return-object v0
.end method
.method public final isAlbumBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->o:Z
return v0
.end method
.method public final isArtistBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->n:Z
return v0
.end method
.method public final isAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->p:Z
return v0
.end method
.method public final isInCollection()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->e:Z
return v0
.end method
.method public final isPlaying()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isQueueable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isQueued()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/k;->b:Z
return v0
.end method
.method public final isRadioAvailable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isSuggested()Z
.registers 2
const/4 v0, 0x0
return v0
.end method