.class public final Lcom/google/android/gms/internal/c$j;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/c$j;",
        ">;"
    }
.end annotation


# instance fields
.field public fJ:[Lcom/google/android/gms/internal/c$i;

.field public fK:Lcom/google/android/gms/internal/c$f;

.field public fL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$j;->q()Lcom/google/android/gms/internal/c$j;

    return-void
.end method

.method public static b([B)Lcom/google/android/gms/internal/c$j;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/me;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/mf;[B)Lcom/google/android/gms/internal/mf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c$j;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    array-length v0, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_36
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$j;->k(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$j;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    array-length v0, v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_2e

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_40
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/c$j;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/c$j;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v2, :cond_40

    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v2, :cond_5

    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    if-nez v2, :cond_4b

    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_26
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_32
    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    if-eqz v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3e
    move v0, v1

    goto :goto_5

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_5

    :cond_4b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_5

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    invoke-static {v0}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_29

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    if-nez v0, :cond_30

    move v0, v1

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_27
    :goto_27
    add-int/2addr v0, v1

    return v0

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v0

    goto :goto_10

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_18

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_27
.end method

.method public k(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$j;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$j;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3f

    new-instance v3, Lcom/google/android/gms/internal/c$i;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    array-length v0, v0

    goto :goto_1a

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/c$i;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    goto :goto_1

    :sswitch_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_59

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    goto :goto_1

    :sswitch_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    goto :goto_1

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_4e
        0x1a -> :sswitch_5f
    .end sparse-switch
.end method

.method public q()Lcom/google/android/gms/internal/c$j;
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/c$i;->o()[Lcom/google/android/gms/internal/c$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$j;->amY:I

    return-object p0
.end method
