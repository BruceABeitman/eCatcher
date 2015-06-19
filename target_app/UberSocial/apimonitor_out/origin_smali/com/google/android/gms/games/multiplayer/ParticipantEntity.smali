.class public final Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
.super Lcom/google/android/gms/internal/fy;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Landroid/net/Uri;

.field private final l:Landroid/net/Uri;

.field private final m:I

.field private final n:Ljava/lang/String;

.field private final o:Z

.field private final p:Lcom/google/android/gms/games/PlayerEntity;

.field private final q:I

.field private final r:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/j;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Lcom/google/android/gms/internal/fy;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:I

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Landroid/net/Uri;

    iput p6, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:I

    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->n:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->o:Z

    iput-object p9, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    iput p10, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->q:I

    iput-object p11, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->r:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    iput-object p12, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->s:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/Participant;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/fy;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->n:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->o:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/Player;

    move-result-object v1

    if-nez v1, :cond_52

    const/4 v0, 0x0

    :goto_37
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->q:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->r:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->s:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->t:Ljava/lang/String;

    return-void

    :cond_52
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    goto :goto_37
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Participant;)I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/Player;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/Participant;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_a2
    move v0, v1

    goto/16 :goto_7
.end method

.method static synthetic a(Ljava/lang/Integer;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Player"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Status"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "ClientAddress"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "ConnectedToRoom"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "IconImage"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "HiResImage"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Capabilities"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Result"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q()Ljava/lang/Integer;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->B()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:I

    return v0
.end method

.method public a(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Landroid/database/CharArrayBuffer;)V

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->q:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->o:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Landroid/net/Uri;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_6
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->s:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Landroid/net/Uri;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->g()Landroid/net/Uri;

    move-result-object v0

    goto :goto_6
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->t:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/games/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->r:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    return-object v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:I

    return v0
.end method

.method public p()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->C()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/o;->a(Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Landroid/os/Parcel;I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Landroid/net/Uri;

    if-nez v0, :cond_49

    move-object v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Landroid/net/Uri;

    if-nez v0, :cond_50

    :goto_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->o:Z

    if-eqz v0, :cond_57

    move v0, v2

    :goto_35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_59

    :goto_3c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->p:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_57
    move v0, v3

    goto :goto_35

    :cond_59
    move v3, v2

    goto :goto_3c
.end method
