.class public Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/model/n;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Landroid/net/Uri;

.field private final r:Landroid/net/Uri;

.field private final s:Landroid/net/Uri;

.field private final t:Z

.field private final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZLandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    iput-object p2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    iput-boolean p9, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    iput-boolean p10, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    iput-boolean p11, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    iput-boolean p12, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    iput-boolean p13, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->n:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b9

    move v0, v1

    :goto_36
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_bc

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_be

    move v0, v1

    :goto_48
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c0

    move v0, v1

    :goto_51
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c2

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v1

    :goto_63
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c6

    move v0, v1

    :goto_6c
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c8

    move v0, v1

    :goto_75
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ca

    move v0, v1

    :goto_7e
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_cc

    :goto_b0
    iput-boolean v1, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    return-void

    :cond_b9
    move v0, v2

    goto/16 :goto_36

    :cond_bc
    move v0, v2

    goto :goto_3f

    :cond_be
    move v0, v2

    goto :goto_48

    :cond_c0
    move v0, v2

    goto :goto_51

    :cond_c2
    move v0, v2

    goto :goto_5a

    :cond_c4
    move v0, v2

    goto :goto_63

    :cond_c6
    move v0, v2

    goto :goto_6c

    :cond_c8
    move v0, v2

    goto :goto_75

    :cond_ca
    move v0, v2

    goto :goto_7e

    :cond_cc
    move v1, v2

    goto :goto_b0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    return v0
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    iget-object v1, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    const/4 v0, 0x1

    :goto_111
    return v0

    :cond_112
    const/4 v0, 0x0

    goto :goto_111
.end method

.method public final b()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    return-object v0
.end method

.method public canAddToCollection()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
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
    check-cast p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    iget v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2d
    move v0, v1

    goto :goto_4
.end method

.method public getAlbumCollectionUri()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getAlbumImageUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineState()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTrackId()J
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAlbumBrowsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    return v0
.end method

.method public isArtistBrowsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    return v0
.end method

.method public isInCollection()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isQueueable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    return v0
.end method

.method public isQueued()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->n:Z

    return v0
.end method

.method public isRadioAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    return v0
.end method

.method public isSuggested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/e;->a(Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mPosition"

    iget v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mTrackName"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mTrackUri"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mAlbumUri"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mAlbumName"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mArtistName"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mArtistUri"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsStarred"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsAvailable"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsAlbumBrowsable"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsArtistBrowsable"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsRadioAvailable"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsQueueable"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsQueued"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsHidden"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsInCollection"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mAlbumCoverArtUri"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mAlbumCoverArtLargeUri"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mAlbumCoverArtUri"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mIsAd"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "mAdUrl"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->h:Z

    if-eqz v0, :cond_89

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->i:Z

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->j:Z

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->k:Z

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->l:Z

    if-eqz v0, :cond_91

    move v0, v1

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->m:Z

    if-eqz v0, :cond_93

    move v0, v1

    :goto_52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->n:Z

    if-eqz v0, :cond_95

    move v0, v1

    :goto_5a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->o:Z

    if-eqz v0, :cond_97

    move v0, v1

    :goto_62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->p:Z

    if-eqz v0, :cond_99

    move v0, v1

    :goto_6a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->q:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->r:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->s:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->t:Z

    if-eqz v0, :cond_9b

    :goto_80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_89
    move v0, v2

    goto :goto_2a

    :cond_8b
    move v0, v2

    goto :goto_32

    :cond_8d
    move v0, v2

    goto :goto_3a

    :cond_8f
    move v0, v2

    goto :goto_42

    :cond_91
    move v0, v2

    goto :goto_4a

    :cond_93
    move v0, v2

    goto :goto_52

    :cond_95
    move v0, v2

    goto :goto_5a

    :cond_97
    move v0, v2

    goto :goto_62

    :cond_99
    move v0, v2

    goto :goto_6a

    :cond_9b
    move v1, v2

    goto :goto_80
.end method
