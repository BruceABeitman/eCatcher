.class public final Lcom/spotify/mobile/android/model/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/model/n;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/model/n;
    .registers 15

    new-instance v0, Lcom/spotify/mobile/android/model/m;

    invoke-direct {v0}, Lcom/spotify/mobile/android/model/m;-><init>()V

    iput p0, v0, Lcom/spotify/mobile/android/model/m;->i:I

    iput-object p1, v0, Lcom/spotify/mobile/android/model/m;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/spotify/mobile/android/model/m;->d:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/spotify/mobile/android/model/m;->k:Z

    iput-boolean p4, v0, Lcom/spotify/mobile/android/model/m;->p:Z

    iput-boolean p5, v0, Lcom/spotify/mobile/android/model/m;->q:Z

    iput-boolean p6, v0, Lcom/spotify/mobile/android/model/m;->r:Z

    iput-boolean p7, v0, Lcom/spotify/mobile/android/model/m;->n:Z

    iput-boolean p8, v0, Lcom/spotify/mobile/android/model/m;->o:Z

    iput-object p9, v0, Lcom/spotify/mobile/android/model/m;->e:Ljava/lang/String;

    iput-object p10, v0, Lcom/spotify/mobile/android/model/m;->c:Ljava/lang/String;

    iput-object p11, v0, Lcom/spotify/mobile/android/model/m;->g:Ljava/lang/String;

    iput-object p12, v0, Lcom/spotify/mobile/android/model/m;->f:Ljava/lang/String;

    iput-boolean p13, v0, Lcom/spotify/mobile/android/model/m;->t:Z

    return-object v0
.end method


# virtual methods
.method public final canAddToCollection()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->t:Z

    return v0
.end method

.method public final getAlbumCollectionUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumImageUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfflineState()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/model/m;->j:I

    return v0
.end method

.method public final getTrackId()J
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/model/m;->i:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getTrackName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/model/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isAlbumBrowsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->n:Z

    return v0
.end method

.method public final isArtistBrowsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->o:Z

    return v0
.end method

.method public final isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->m:Z

    return v0
.end method

.method public final isInCollection()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->k:Z

    return v0
.end method

.method public final isPlaying()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->l:Z

    return v0
.end method

.method public final isQueueable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->r:Z

    return v0
.end method

.method public final isQueued()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->q:Z

    return v0
.end method

.method public final isRadioAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->p:Z

    return v0
.end method

.method public final isSuggested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/m;->s:Z

    return v0
.end method
