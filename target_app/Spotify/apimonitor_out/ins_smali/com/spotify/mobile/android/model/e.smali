.class public final Lcom/spotify/mobile/android/model/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/b;
.field public static final a:[Ljava/lang/String;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Z
.field private p:Z
.field private q:Z
.field private r:Z
.field private s:Z
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x12
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
const-string v2, "collection_all_tracks_uri"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "image_small_uri"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_available"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "albums_in_collection_count"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "tracks_in_collection_count"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_playing"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_paused"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "offline_state"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "sync_progress"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "sort_name"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "is_followed"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "image_uri"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "tracks_offlined_count"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/model/e;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/e;->f:I
return v0
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 4
const/4 v0, 0x0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/e;->b:I
const/16 v0, 0xc
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/e;->c:I
const/16 v0, 0xd
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/e;->d:I
const/16 v0, 0x8
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/e;->e:I
const/16 v0, 0x9
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/e;->f:I
const/16 v0, 0x11
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/model/e;->g:I
const/4 v0, 0x1
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->h:Ljava/lang/String;
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->i:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->j:Ljava/lang/String;
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->k:Ljava/lang/String;
const/16 v0, 0x10
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->l:Ljava/lang/String;
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->m:Ljava/lang/String;
const/16 v0, 0xe
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/e;->n:Ljava/lang/String;
const/4 v0, 0x6
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->o:Z
const/4 v0, 0x7
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->p:Z
const/16 v0, 0xa
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->q:Z
const/16 v0, 0xb
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->r:Z
const/16 v0, 0xf
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->s:Z
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/e;->g:I
return v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->q:Z
return v0
.end method
.method public final getCollectionUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/e;->j:Ljava/lang/String;
return-object v0
.end method
.method public final getImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/e;->l:Ljava/lang/String;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/e;->h:Ljava/lang/String;
return-object v0
.end method
.method public final getOfflineState()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/e;->c:I
return v0
.end method
.method public final getSyncProgress()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/model/e;->d:I
return v0
.end method
.method public final getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/e;->i:Ljava/lang/String;
return-object v0
.end method
.method public final isFollowed()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->s:Z
return v0
.end method
.method public final isRadioAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/e;->p:Z
return v0
.end method