.class public final Lcom/bbm/util/a/f;
.super Ljava/lang/Object;
.source "GlympseTicketFetcher.java"


# instance fields
.field public a:Lcom/bbm/util/bh;

.field public b:Z

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/a/f;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/util/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/glympse/android/api/GTicket;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->isActive()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/bbm/util/a/f;->b:Z

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbm/util/a/f;->c:J

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/bbm/util/a/f;->d:I

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbm/util/a/f;->f:Ljava/lang/String;

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_e
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
    check-cast p1, Lcom/bbm/util/a/f;

    iget v2, p0, Lcom/bbm/util/a/f;->d:I

    iget v3, p1, Lcom/bbm/util/a/f;->d:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget-wide v2, p0, Lcom/bbm/util/a/f;->c:J

    iget-wide v4, p1, Lcom/bbm/util/a/f;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    if-nez v2, :cond_3b

    iget-object v2, p1, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    if-eqz v2, :cond_47

    move v0, v1

    goto :goto_4

    :cond_3b
    iget-object v2, p0, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    move v0, v1

    goto :goto_4

    :cond_47
    iget-boolean v2, p0, Lcom/bbm/util/a/f;->b:Z

    iget-boolean v3, p1, Lcom/bbm/util/a/f;->b:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/bbm/util/a/f;->d:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    if-nez v0, :cond_2a

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bbm/util/a/f;->c:J

    iget-wide v4, p0, Lcom/bbm/util/a/f;->c:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    if-nez v2, :cond_31

    :goto_1f
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/util/a/f;->b:Z

    if-eqz v0, :cond_38

    const/16 v0, 0x4cf

    :goto_28
    add-int/2addr v0, v1

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;

    invoke-virtual {v0}, Lcom/bbm/util/bh;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_31
    iget-object v1, p0, Lcom/bbm/util/a/f;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1f

    :cond_38
    const/16 v0, 0x4d5

    goto :goto_28
.end method
