.class public final Lcom/google/android/gms/internal/c$c;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eL:[Lcom/google/android/gms/internal/c$c;


# instance fields
.field public eM:Ljava/lang/String;

.field public eN:J

.field public eO:J

.field public eP:Z

.field public eQ:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$c;->g()Lcom/google/android/gms/internal/c$c;

    return-void
.end method

.method public static f()[Lcom/google/android/gms/internal/c$c;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$c;

    sput-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ma;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->b(IJ)V

    :cond_1e
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->b(IJ)V

    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(IZ)V

    :cond_37
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_43

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->b(IJ)V

    :cond_43
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$c;->d(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 8

    const-wide/16 v5, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-eqz v1, :cond_37

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_37
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v1, :cond_43

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_51

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    return v0
.end method

.method public d(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$c;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    goto :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    goto :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    goto :goto_0

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_15
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_23
        0x28 -> :sswitch_2a
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/c$c;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/c$c;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-nez v2, :cond_4c

    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eO:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eQ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_3e
    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    if-eqz v2, :cond_4a

    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4a
    move v0, v1

    goto :goto_5

    :cond_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public g()Lcom/google/android/gms/internal/c$c;
    .registers 5

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$c;->amY:I

    return-object p0
.end method

.method public hashCode()I
    .registers 8

    const/4 v1, 0x0

    const/16 v6, 0x20

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-nez v0, :cond_41

    move v0, v1

    :goto_8
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v0, :cond_48

    const/16 v0, 0x4cf

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_3f
    :goto_3f
    add-int/2addr v0, v1

    return v0

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_48
    const/16 v0, 0x4d5

    goto :goto_26

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3f
.end method
