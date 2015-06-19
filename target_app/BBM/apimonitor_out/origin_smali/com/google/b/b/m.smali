.class public final Lcom/google/b/b/m;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, v3, v3

    if-ltz v0, :cond_43

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/google/b/a/o;->a(Z)V

    cmp-long v0, v3, v3

    if-ltz v0, :cond_45

    move v0, v1

    :goto_14
    invoke-static {v0}, Lcom/google/b/a/o;->a(Z)V

    cmp-long v0, v3, v3

    if-ltz v0, :cond_47

    move v0, v1

    :goto_1c
    invoke-static {v0}, Lcom/google/b/a/o;->a(Z)V

    cmp-long v0, v3, v3

    if-ltz v0, :cond_49

    move v0, v1

    :goto_24
    invoke-static {v0}, Lcom/google/b/a/o;->a(Z)V

    cmp-long v0, v3, v3

    if-ltz v0, :cond_4b

    move v0, v1

    :goto_2c
    invoke-static {v0}, Lcom/google/b/a/o;->a(Z)V

    cmp-long v0, v3, v3

    if-ltz v0, :cond_4d

    :goto_33
    invoke-static {v1}, Lcom/google/b/a/o;->a(Z)V

    iput-wide v3, p0, Lcom/google/b/b/m;->a:J

    iput-wide v3, p0, Lcom/google/b/b/m;->b:J

    iput-wide v3, p0, Lcom/google/b/b/m;->c:J

    iput-wide v3, p0, Lcom/google/b/b/m;->d:J

    iput-wide v3, p0, Lcom/google/b/b/m;->e:J

    iput-wide v3, p0, Lcom/google/b/b/m;->f:J

    return-void

    :cond_43
    move v0, v2

    goto :goto_c

    :cond_45
    move v0, v2

    goto :goto_14

    :cond_47
    move v0, v2

    goto :goto_1c

    :cond_49
    move v0, v2

    goto :goto_24

    :cond_4b
    move v0, v2

    goto :goto_2c

    :cond_4d
    move v1, v2

    goto :goto_33
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/b/b/m;

    if-eqz v1, :cond_38

    check-cast p1, Lcom/google/b/b/m;

    iget-wide v1, p0, Lcom/google/b/b/m;->a:J

    iget-wide v3, p1, Lcom/google/b/b/m;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/b/b/m;->b:J

    iget-wide v3, p1, Lcom/google/b/b/m;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/b/b/m;->c:J

    iget-wide v3, p1, Lcom/google/b/b/m;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/b/b/m;->d:J

    iget-wide v3, p1, Lcom/google/b/b/m;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/b/b/m;->e:J

    iget-wide v3, p1, Lcom/google/b/b/m;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/b/b/m;->f:J

    iget-wide v3, p1, Lcom/google/b/b/m;->f:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    const/4 v0, 0x1

    :cond_38
    return v0
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/b/b/m;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/b/b/m;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/b/b/m;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/b/b/m;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/b/b/m;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/b/b/m;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/b/a/i;->a(Ljava/lang/Object;)Lcom/google/b/a/j;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/b/b/m;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/b/b/m;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/b/b/m;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/b/b/m;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/b/b/m;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/b/b/m;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
