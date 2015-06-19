.class public final Lcom/spotify/mobile/android/model/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/n;
.field public static final a:[Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field public i:Ljava/lang/String;
.field public j:Ljava/lang/String;
.field public k:Ljava/lang/String;
.field public l:I
.field public m:I
.field public n:I
.field public o:Z
.field public p:Z
.field public q:Z
.field public r:Z
.field public s:Z
.field public t:Z
.field public u:Z
.field public v:Z
.field public w:Z
.field public x:Z
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
const-string v2, "album_name"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "album_uri"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "album_image_uri"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "artist_name"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "artist_uri"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_playing"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "is_available"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_queued"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "offline_state"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "is_artist_browsable"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "is_album_browsable"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "is_queueable"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "album_collection_uri"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "artist_collection_uri"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "is_in_collection"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "length"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "added_by_name"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "can_add_to_collection"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/database/Cursor;Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1, p2, p2, p2}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/h;->l:I
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_bb
:goto_d
const/4 v0, 0x1
invoke-static {p1, v0, p2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->b:Ljava/lang/String;
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_bf
:goto_1a
const/4 v0, 0x3
invoke-static {p1, v0, p3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->c:Ljava/lang/String;
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_c3
:goto_27
const/4 v0, 0x6
invoke-static {p1, v0, p4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->d:Ljava/lang/String;
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->e:Ljava/lang/String;
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->f:Ljava/lang/String;
const/4 v0, 0x7
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->h:Ljava/lang/String;
const/16 v0, 0x10
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->i:Ljava/lang/String;
const/16 v0, 0x11
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->j:Ljava/lang/String;
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->g:Ljava/lang/String;
const/16 v0, 0x14
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/h;->k:Ljava/lang/String;
const/16 v0, 0x8
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->p:Z
const/16 v0, 0x9
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->q:Z
const/16 v0, 0xc
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->s:Z
const/16 v0, 0xd
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->r:Z
const/16 v0, 0xe
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->t:Z
const/16 v0, 0xa
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->u:Z
const/16 v0, 0xf
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->v:Z
const/16 v0, 0x12
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->o:Z
const/16 v0, 0x15
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->x:Z
const/16 v0, 0xb
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/h;->m:I
const/16 v0, 0x13
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/h;->n:I
return-void
:cond_bb
const-string p2, ""
goto/16 :goto_d
:cond_bf
const-string p3, ""
goto/16 :goto_1a
:cond_c3
const-string p4, ""
goto/16 :goto_27
.end method
.method public final canAddToCollection()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->x:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/model/h;
iget v2, p0, Lcom/spotify/mobile/android/model/h;->l:I
iget v3, p1, Lcom/spotify/mobile/android/model/h;->l:I
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final getAlbumCollectionUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->i:Ljava/lang/String;
return-object v0
.end method
.method public final getAlbumImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->g:Ljava/lang/String;
return-object v0
.end method
.method public final getAlbumName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->c:Ljava/lang/String;
return-object v0
.end method
.method public final getAlbumUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->f:Ljava/lang/String;
return-object v0
.end method
.method public final getArtistName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->d:Ljava/lang/String;
return-object v0
.end method
.method public final getArtistUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->h:Ljava/lang/String;
return-object v0
.end method
.method public final getOfflineState()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/h;->m:I
return v0
.end method
.method public final getTrackId()J
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/model/h;->l:I
int-to-long v0, v0
return-wide v0
.end method
.method public final getTrackName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->b:Ljava/lang/String;
return-object v0
.end method
.method public final getTrackUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->e:Ljava/lang/String;
return-object v0
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/h;->l:I
return v0
.end method
.method public final isAlbumBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->r:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->f:Ljava/lang/String;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final isArtistBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->s:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->h:Ljava/lang/String;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/model/h;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final isAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->q:Z
return v0
.end method
.method public final isInCollection()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->o:Z
return v0
.end method
.method public final isPlaying()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->p:Z
return v0
.end method
.method public final isQueueable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->v:Z
return v0
.end method
.method public final isQueued()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->u:Z
return v0
.end method
.method public final isRadioAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->t:Z
return v0
.end method
.method public final isSuggested()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/h;->w:Z
return v0
.end method