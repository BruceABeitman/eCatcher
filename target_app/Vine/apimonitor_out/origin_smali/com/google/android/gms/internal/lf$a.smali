.class public final Lcom/google/android/gms/internal/lf$a;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/lf$a;",
        ">;"
    }
.end annotation


# instance fields
.field public aiD:J

.field public aiE:Lcom/google/android/gms/internal/c$j;

.field public fK:Lcom/google/android/gms/internal/c$f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lf$a;->na()Lcom/google/android/gms/internal/lf$a;

    return-void
.end method

.method public static l([B)Lcom/google/android/gms/internal/lf$a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/me;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lf$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lf$a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/mf;[B)Lcom/google/android/gms/internal/mf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ma;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->b(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_1a
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lf$a;->p(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lf$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    if-eqz v1, :cond_24

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/lf$a;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/lf$a;

    iget-wide v2, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/lf$a;->aiD:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    if-nez v2, :cond_49

    iget-object v2, p1, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_30
    iget-object v2, p1, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3c
    move v0, v1

    goto :goto_5

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    iget-object v3, p1, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    iget-object v3, p1, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_33

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_2a
    :goto_2a
    add-int/2addr v0, v1

    return v0

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v0

    goto :goto_13

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$j;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2a
.end method

.method public na()Lcom/google/android/gms/internal/lf$a;
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    iput-object v2, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    iput-object v2, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    iput-object v2, p0, Lcom/google/android/gms/internal/lf$a;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lf$a;->amY:I

    return-object p0
.end method

.method public p(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lf$a;
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

    sparse-switch v0, :sswitch_data_38

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lf$a;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->ny()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/lf$a;->aiD:J

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    goto :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    goto :goto_0

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_26
    .end sparse-switch
.end method
