.class public final Lcom/google/android/gms/internal/c$d;
.super Lcom/google/android/gms/internal/ka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ka",
        "<",
        "Lcom/google/android/gms/internal/c$d;",
        ">;"
    }
.end annotation


# instance fields
.field public fc:[Lcom/google/android/gms/internal/d$a;

.field public fd:[Lcom/google/android/gms/internal/d$a;

.field public fe:[Lcom/google/android/gms/internal/c$c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$d;->h()Lcom/google/android/gms/internal/c$d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/jz;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_1d

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_39

    move v0, v1

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    if-lez v0, :cond_54

    :goto_42
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    if-ge v1, v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    aget-object v0, v0, v1

    if-eqz v0, :cond_51

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$d;->e(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$d;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_25

    move v2, v0

    move v0, v1

    :goto_10
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    move v0, v2

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_45

    move v2, v0

    move v0, v1

    :goto_30
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_41

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_44
    move v0, v2

    :cond_45
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    array-length v2, v2

    if-lez v2, :cond_62

    :goto_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    array-length v2, v2

    if-ge v1, v2, :cond_62

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5f

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_62
    iput v0, p0, Lcom/google/android/gms/internal/c$d;->DY:I

    return v0
.end method

.method public final e(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$d;
    .registers 6

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$d;->a(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3f

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_1a

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    goto :goto_1

    :sswitch_4e
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_7a

    move v0, v1

    :goto_59
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_63

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_63
    :goto_63
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7e

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_59

    :cond_7e
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_1

    :sswitch_8e
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_ba

    move v0, v1

    :goto_99
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$c;

    if-eqz v0, :cond_a3

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a3
    :goto_a3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_be

    new-instance v3, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$c;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_ba
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    goto :goto_99

    :cond_be
    new-instance v3, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    goto/16 :goto_1

    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_4e
        0x1a -> :sswitch_8e
    .end sparse-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/c$d;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/c$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_3d
    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final h()Lcom/google/android/gms/internal/c$d;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/c$c;->f()[Lcom/google/android/gms/internal/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$d;->DY:I

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fc:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fd:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fe:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v1}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_28
    const/4 v0, 0x0

    :goto_29
    add-int/2addr v0, v1

    return v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->aae:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_29
.end method