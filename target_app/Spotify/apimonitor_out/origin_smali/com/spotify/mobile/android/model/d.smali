.class public final Lcom/spotify/mobile/android/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/model/a;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Lcom/spotify/mobile/android/util/Collection$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x18

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

    const-string v2, "tracks_count"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tracks_in_collection_count"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_playing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_paused"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "offline_state"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sync_progress"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "can_undownload"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sort_name"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_in_collection"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is_complete_in_collection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/model/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/model/d;->b:I

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->c:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->d:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->e:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->h:Z

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->i:Z

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->j:Z

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->k:Z

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->o:Z

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->p:Z

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->l:Z

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/model/d;->m:I

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/model/d;->n:I

    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->f:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->g:Ljava/lang/String;

    const/4 v0, 0x7

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->u:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/model/d;->q:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/model/d;->r:I

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    const/16 v1, 0x17

    invoke-static {p1, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Collection;->a(ZZ)Lcom/spotify/mobile/android/util/Collection$State;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->v:Lcom/spotify/mobile/android/util/Collection$State;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->s:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/d;->t:Ljava/lang/String;

    return-void
.end method

.method public final getAlbumImageUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanUndownload()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->l:Z

    return v0
.end method

.method public final getCollectionState()Lcom/spotify/mobile/android/util/Collection$State;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->v:Lcom/spotify/mobile/android/util/Collection$State;

    return-object v0
.end method

.method public final getCollectionUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfflineState()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/model/d;->m:I

    return v0
.end method

.method public final getSyncProgress()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/model/d;->n:I

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isArtistBrowsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->i:Z

    return v0
.end method

.method public final isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->h:Z

    return v0
.end method

.method public final isQueueable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->k:Z

    return v0
.end method

.method public final isRadioAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/d;->j:Z

    return v0
.end method
