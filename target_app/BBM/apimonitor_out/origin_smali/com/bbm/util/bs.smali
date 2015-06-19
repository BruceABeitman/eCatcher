.class final Lcom/bbm/util/bs;
.super Ljava/lang/Object;
.source "HttpLoader.java"


# static fields
.field static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/bbm/util/bs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:J

.field public final c:Lcom/bbm/ui/activities/ajy;

.field public final d:Lcom/bbm/util/br;

.field public e:Z

.field public final f:Lcom/bbm/util/bo;

.field public final g:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bbm/util/bs;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/bbm/util/bt;

    invoke-direct {v0}, Lcom/bbm/util/bt;-><init>()V

    sput-object v0, Lcom/bbm/util/bs;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/ui/activities/ajy;Lcom/bbm/util/br;Lcom/bbm/util/bo;Ljava/net/URL;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/bs;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbm/util/bs;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/bs;->e:Z

    iput-object p1, p0, Lcom/bbm/util/bs;->c:Lcom/bbm/ui/activities/ajy;

    iput-object p2, p0, Lcom/bbm/util/bs;->d:Lcom/bbm/util/br;

    iput-object p3, p0, Lcom/bbm/util/bs;->f:Lcom/bbm/util/bo;

    iput-object p4, p0, Lcom/bbm/util/bs;->g:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/util/bs;

    iget-wide v2, p0, Lcom/bbm/util/bs;->b:J

    iget-wide v4, p1, Lcom/bbm/util/bs;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/bbm/util/bs;->b:J

    iget-wide v2, p0, Lcom/bbm/util/bs;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
