.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/multiplayer/turnbased/g;


# instance fields
.field private final A:I

.field private final B:Landroid/os/Bundle;

.field private final C:I

.field private final D:Z

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final l:I

.field private final m:Lcom/google/android/gms/games/GameEntity;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:J

.field private final q:Ljava/lang/String;

.field private final r:J

.field private final s:Ljava/lang/String;

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:[B

.field private final x:Ljava/util/ArrayList;

.field private final y:Ljava/lang/String;

.field private final z:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/g;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->CREATOR:Lcom/google/android/gms/games/multiplayer/turnbased/g;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;III[BLjava/util/ArrayList;Ljava/lang/String;[BILandroid/os/Bundle;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 25

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->l:I

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->m:Lcom/google/android/gms/games/GameEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->o:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->p:J

    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->q:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->r:J

    iput-object p10, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->s:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->t:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->C:I

    iput p12, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->u:I

    iput p13, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->v:I

    iput-object p14, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->w:[B

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->x:Ljava/util/ArrayList;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->y:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->z:[B

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->A:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->B:Landroid/os/Bundle;

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->D:Z

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->E:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->l:I

    new-instance v1, Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->a()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->m:Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->n:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->o:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->d()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->p:J

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->q:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->m()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->r:J

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->s:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->e()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->t:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->f()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->C:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->j()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->u:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->p()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->v:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->y:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->t()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->A:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->u()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->B:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->w()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->D:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->E:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->F:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->o()[B

    move-result-object v1

    if-nez v1, :cond_ac

    iput-object v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->w:[B

    :goto_7b
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->s()[B

    move-result-object v1

    if-nez v1, :cond_b8

    iput-object v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->z:[B

    :goto_83
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->x:Ljava/util/ArrayList;

    move v1, v0

    :goto_93
    if-ge v1, v3, :cond_c4

    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_93

    :cond_ac
    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->w:[B

    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->w:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7b

    :cond_b8
    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->z:[B

    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->z:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_83

    :cond_c4
    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I
    .registers 5

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->a()Lcom/google/android/gms/games/Game;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->r()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->u()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->w()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I
    .registers 7

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_25

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->a()I

    move-result v0

    return v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->a()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->a()Lcom/google/android/gms/games/Game;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->u()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->v()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->w()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->w()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_150
    move v0, v1

    goto/16 :goto_7
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Game"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->a()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "MatchId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "CreatorId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "CreationTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "LastUpdaterId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "LastUpdatedTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "PendingParticipantId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "MatchStatus"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "TurnStatus"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Variant"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Data"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->o()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Version"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "Participants"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "RematchId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "PreviousData"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->s()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "MatchNumber"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "AutoMatchCriteria"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "AvailableAutoMatchSlots"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "LocallyModified"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->w()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    const-string v1, "DescriptionParticipantId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_2c

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/Player;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-interface {v5}, Lcom/google/android/gms/games/Player;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_2c
    move-object v0, v1

    goto :goto_27
.end method

.method static c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 7

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_21

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;
    .registers 6

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_22

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_22
    return-object v4
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->l:I

    return v0
.end method

.method public B()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 1

    return-object p0
.end method

.method public a(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->m:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public a(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->E:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->p:J

    return-wide v0
.end method

.method public d_(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->t:I

    return v0
.end method

.method public e_(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->C:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->E:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->B()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->u:I

    return v0
.end method

.method public k()Ljava/util/ArrayList;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->x:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->r:J

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->s:Ljava/lang/String;

    return-object v0
.end method

.method public o()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->w:[B

    return-object v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->v:I

    return v0
.end method

.method public q()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->y:Ljava/lang/String;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public s()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->z:[B

    return-object v0
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->A:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->B:Landroid/os/Bundle;

    return-object v0
.end method

.method public v()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->B:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->B:Landroid/os/Bundle;

    const-string v1, "max_automatch_players"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public w()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->D:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/g;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public x()Ljava/util/ArrayList;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->F:Ljava/lang/String;

    return-object v0
.end method

.method public z()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->e_(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method
