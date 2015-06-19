.class public Lcom/googlecode/mp4parser/a/c/b;
.super Lcom/googlecode/mp4parser/a/a;
.source "CroppedTrack.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Lcom/googlecode/mp4parser/a/e;

.field private c:I

.field private d:I

.field private e:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/googlecode/mp4parser/a/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/a/c/b;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/a/e;J)V
    .registers 8

    const-wide/32 v2, 0x7fffffff

    invoke-direct {p0}, Lcom/googlecode/mp4parser/a/a;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    sget-boolean v0, Lcom/googlecode/mp4parser/a/c/b;->b:Z

    if-nez v0, :cond_18

    const-wide/16 v0, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    sget-boolean v0, Lcom/googlecode/mp4parser/a/c/b;->b:Z

    if-nez v0, :cond_26

    cmp-long v0, p2, v2

    if-lez v0, :cond_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_26
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    long-to-int v0, p2

    iput v0, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    iget v2, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/k;",
            ">;"
        }
    .end annotation

    const-wide/16 v9, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    iget v3, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    sub-int/2addr v2, v3

    new-array v3, v2, [J

    iget v2, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    iget v4, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    iget v5, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v4, v3

    move v2, v0

    :goto_39
    if-ge v2, v4, :cond_6c

    aget-wide v5, v3, v2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/k;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_5d

    :cond_51
    new-instance v0, Lcom/coremedia/iso/boxes/k;

    invoke-direct {v0, v9, v10, v5, v6}, Lcom/coremedia/iso/boxes/k;-><init>(JJ)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    :cond_5d
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/k;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lcom/coremedia/iso/boxes/k;->a(J)V

    goto :goto_59

    :cond_6c
    move-object v0, v1

    :goto_6d
    return-object v0

    :cond_6e
    const/4 v0, 0x0

    goto :goto_6d
.end method

.method public final h()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    iget v3, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    sub-int/2addr v2, v3

    new-array v3, v2, [I

    iget v2, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    iget v4, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    iget v5, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v4, v3

    move v2, v0

    :goto_37
    if-ge v2, v4, :cond_6a

    aget v5, v3, v2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/b;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/b;->b()I

    move-result v0

    if-eq v0, v5, :cond_5a

    :cond_4d
    new-instance v0, Lcom/coremedia/iso/boxes/b;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v5}, Lcom/coremedia/iso/boxes/b;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    :cond_5a
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/b;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/b;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/coremedia/iso/boxes/b;->a(I)V

    goto :goto_56

    :cond_6a
    move-object v0, v1

    :goto_6b
    return-object v0

    :cond_6c
    const/4 v0, 0x0

    goto :goto_6b
.end method

.method public final declared-synchronized i()[J
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->e:[J

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->i()[J

    move-result-object v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->i()[J

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_68

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/e;->i()[J

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_24
    if-ge v1, v4, :cond_44

    aget-wide v5, v3, v1

    iget v7, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-ltz v7, :cond_41

    iget v7, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_41

    iget v7, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/googlecode/mp4parser/a/c/b;->e:[J

    move v1, v0

    :goto_4d
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->e:[J

    array-length v0, v0

    if-ge v1, v0, :cond_64

    iget-object v3, p0, Lcom/googlecode/mp4parser/a/c/b;->e:[J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    :cond_64
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->e:[J
    :try_end_66
    .catchall {:try_start_2 .. :try_end_66} :catchall_6d

    :goto_66
    monitor-exit p0

    return-object v0

    :cond_68
    const/4 v0, 0x0

    goto :goto_66

    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->e:[J
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_6d

    goto :goto_66

    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/a/c/b;->c:I

    iget v2, p0, Lcom/googlecode/mp4parser/a/c/b;->d:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final k()Lcom/googlecode/mp4parser/a/f;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/coremedia/iso/boxes/a;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/b;->a:Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->m()Lcom/coremedia/iso/boxes/a;

    move-result-object v0

    return-object v0
.end method
