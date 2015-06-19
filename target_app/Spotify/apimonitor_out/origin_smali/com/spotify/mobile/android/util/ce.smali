.class public final Lcom/spotify/mobile/android/util/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/bh;

.field private b:Lcom/spotify/mobile/android/util/be;

.field private c:Lcom/spotify/mobile/android/util/cl;

.field private d:Lcom/spotify/mobile/android/util/cf;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/util/cf;Lcom/spotify/mobile/android/service/flow/logic/l;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/spotify/mobile/android/service/flow/logic/l;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ce;->e:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/service/flow/logic/l;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ce;->f:Ljava/lang/String;

    :goto_18
    return-void

    :cond_19
    iput-object p1, p0, Lcom/spotify/mobile/android/util/ce;->d:Lcom/spotify/mobile/android/util/cf;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://market.spotify.com/status"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ce;->b:Lcom/spotify/mobile/android/util/be;

    new-instance v0, Lcom/spotify/mobile/android/util/ce$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/ce$1;-><init>(Lcom/spotify/mobile/android/util/ce;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ce;->a:Lcom/spotify/mobile/android/util/bh;

    new-instance v0, Lcom/spotify/mobile/android/util/ce$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/ce$2;-><init>(Lcom/spotify/mobile/android/util/ce;)V

    new-instance v1, Lcom/spotify/mobile/android/util/cm;

    const-string v2, "pli-checker"

    invoke-direct {v1, v2, v0}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/spotify/mobile/android/util/cq;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v2, v3, v4}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/util/cr;

    const-wide/16 v1, 0x5

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ce;->c:Lcom/spotify/mobile/android/util/cl;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->c:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    goto :goto_18
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/cf;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->d:Lcom/spotify/mobile/android/util/cf;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/ce;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ce;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/ce;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ce;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/util/ce;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/util/ce;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/cl;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->c:Lcom/spotify/mobile/android/util/cl;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->a:Lcom/spotify/mobile/android/util/bh;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/be;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->b:Lcom/spotify/mobile/android/util/be;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ce;->d:Lcom/spotify/mobile/android/util/cf;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->c:Lcom/spotify/mobile/android/util/cl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->c:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    :cond_c
    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce;->f:Ljava/lang/String;

    return-object v0
.end method
