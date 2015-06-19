.class Lcom/google/android/gms/tagmanager/o;
.super Lcom/google/android/gms/tagmanager/ca;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/tagmanager/ca",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TM:Ljava/lang/String;

.field private TR:J

.field private final TY:Lcom/google/android/gms/tagmanager/TagManager;

.field private final Ty:Lcom/google/android/gms/internal/fl;

.field private final Ub:Lcom/google/android/gms/tagmanager/o$d;

.field private final Uc:Lcom/google/android/gms/tagmanager/cg;

.field private final Ud:I

.field private Ue:Lcom/google/android/gms/tagmanager/o$f;

.field private volatile Uf:Lcom/google/android/gms/tagmanager/n;

.field private volatile Ug:Z

.field private Uh:Lcom/google/android/gms/internal/c$j;

.field private Ui:Ljava/lang/String;

.field private Uj:Lcom/google/android/gms/tagmanager/o$e;

.field private Uk:Lcom/google/android/gms/tagmanager/o$a;

.field private final mContext:Landroid/content/Context;

.field private final zs:Landroid/os/Looper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/o$f;Lcom/google/android/gms/tagmanager/o$e;Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/tagmanager/cg;)V
    .registers 12

    if-nez p3, :cond_42

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/o;->zs:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/o;->TM:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/o;->Ud:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    new-instance v0, Lcom/google/android/gms/tagmanager/o$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/o$d;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ub:Lcom/google/android/gms/tagmanager/o$d;

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uh:Lcom/google/android/gms/internal/c$j;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/o;->Ty:Lcom/google/android/gms/internal/fl;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/o;->Uc:Lcom/google/android/gms/tagmanager/cg;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->iL()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/google/android/gms/tagmanager/ce;->ju()Lcom/google/android/gms/tagmanager/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->jw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->bc(Ljava/lang/String;)V

    :cond_41
    return-void

    :cond_42
    move-object v0, p3

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)V
    .registers 20

    new-instance v12, Lcom/google/android/gms/tagmanager/cq;

    move-object/from16 v0, p4

    invoke-direct {v12, p1, v0}, Lcom/google/android/gms/tagmanager/cq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tagmanager/cp;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V

    invoke-static {}, Lcom/google/android/gms/internal/fn;->eI()Lcom/google/android/gms/internal/fl;

    move-result-object v11

    new-instance v2, Lcom/google/android/gms/tagmanager/bf;

    const/16 v3, 0x1e

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x1388

    const-string v8, "refreshing"

    invoke-static {}, Lcom/google/android/gms/internal/fn;->eI()Lcom/google/android/gms/internal/fl;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/bf;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/fl;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v12

    move-object v12, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/tagmanager/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/o$f;Lcom/google/android/gms/tagmanager/o$e;Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/tagmanager/cg;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/fl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ty:Lcom/google/android/gms/internal/fl;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/internal/c$j;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/google/android/gms/internal/jd$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jd$a;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/o;->TR:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    new-instance v1, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v1}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/o$f;->b(Lcom/google/android/gms/internal/jd$a;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/internal/c$j;JZ)V
    .registers 13

    const-wide/32 v6, 0x2932e00

    monitor-enter p0

    if-eqz p4, :cond_c

    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->Ug:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_68

    if-eqz v0, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->isReady()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    :cond_14
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->Uh:Lcom/google/android/gms/internal/c$j;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/o;->TR:J

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x2932e00

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/o;->TR:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/o;->Ty:Lcom/google/android/gms/internal/fl;

    invoke-interface {v6}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/o;->s(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->TM:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    if-nez v1, :cond_6b

    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->zs:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/o;->Ub:Lcom/google/android/gms/tagmanager/o$d;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    :goto_54
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->isReady()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Uk:Lcom/google/android/gms/tagmanager/o$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/o$a;->b(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/common/api/Result;)V
    :try_end_67
    .catchall {:try_start_c .. :try_end_67} :catchall_68

    goto :goto_a

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/n;->a(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_68

    goto :goto_54
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/o;->s(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/internal/c$j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/internal/c$j;JZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/o;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->Ug:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uh:Lcom/google/android/gms/internal/c$j;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/o;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->TR:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/o;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->iL()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/cg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uc:Lcom/google/android/gms/tagmanager/cg;

    return-object v0
.end method

.method private iL()Z
    .registers 4

    invoke-static {}, Lcom/google/android/gms/tagmanager/ce;->ju()Lcom/google/android/gms/tagmanager/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->jv()Lcom/google/android/gms/tagmanager/ce$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/ce$a;->VX:Lcom/google/android/gms/tagmanager/ce$a;

    if-eq v1, v2, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->jv()Lcom/google/android/gms/tagmanager/ce$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/ce$a;->VY:Lcom/google/android/gms/tagmanager/ce$a;

    if-ne v1, v2, :cond_22

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->TM:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private declared-synchronized s(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    if-nez v0, :cond_c

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Uh:Lcom/google/android/gms/internal/c$j;

    iget-object v1, v1, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/o$e;->d(JLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_a

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private z(Z)V
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    new-instance v1, Lcom/google/android/gms/tagmanager/o$b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/o$b;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    new-instance v1, Lcom/google/android/gms/tagmanager/o$c;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/o$c;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$e;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    iget v1, p0, Lcom/google/android/gms/tagmanager/o;->Ud:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->bP(I)Lcom/google/android/gms/tagmanager/cr$c;

    move-result-object v6

    if-eqz v6, :cond_3d

    new-instance v7, Lcom/google/android/gms/tagmanager/n;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/o;->zs:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->TM:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cr$c;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Ub:Lcom/google/android/gms/tagmanager/o$d;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    :cond_3d
    new-instance v0, Lcom/google/android/gms/tagmanager/o$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/o$2;-><init>(Lcom/google/android/gms/tagmanager/o;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uk:Lcom/google/android/gms/tagmanager/o$a;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->iL()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/o$e;->d(JLjava/lang/String;)V

    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/o$f;->iN()V

    goto :goto_51
.end method


# virtual methods
.method protected O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uf:Lcom/google/android/gms/tagmanager/n;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zS:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_10

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    :cond_10
    new-instance v0, Lcom/google/android/gms/tagmanager/n;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6
.end method

.method declared-synchronized bc(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->Ui:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/o$e;->bf(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o;->O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized iF()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ui:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iI()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    iget v1, p0, Lcom/google/android/gms/tagmanager/o;->Ud:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->bP(I)Lcom/google/android/gms/tagmanager/cr$c;

    move-result-object v6

    if-eqz v6, :cond_32

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->TM:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cr$c;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->zs:Landroid/os/Looper;

    new-instance v4, Lcom/google/android/gms/tagmanager/o$1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/o$1;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/common/api/Result;)V

    :goto_2d
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->Uj:Lcom/google/android/gms/tagmanager/o$e;

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->Ue:Lcom/google/android/gms/tagmanager/o$f;

    return-void

    :cond_32
    const-string v0, "Default was requested, but no default container was found"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/o;->O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2d
.end method

.method public iJ()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/o;->z(Z)V

    return-void
.end method

.method public iK()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/o;->z(Z)V

    return-void
.end method
