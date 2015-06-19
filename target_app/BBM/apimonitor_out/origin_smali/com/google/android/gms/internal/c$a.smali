.class public final Lcom/google/android/gms/internal/c$a;
.super Lcom/google/android/gms/internal/ka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ka",
        "<",
        "Lcom/google/android/gms/internal/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public eP:I

.field public eQ:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->b()Lcom/google/android/gms/internal/c$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$a;
    .registers 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    goto :goto_0

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
        0x18 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/jz;)V
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jz;->f(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V

    :cond_14
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/c$a;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->DY:I

    return-object p0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    if-eqz v1, :cond_28

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->DY:I

    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$a;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/c$a;

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->level:I

    iget v3, p1, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    iget v3, p1, Lcom/google/android/gms/internal/c$a;->eP:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    iget v3, p1, Lcom/google/android/gms/internal/c$a;->eQ:I

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_31
    iget-object v2, p1, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eP:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eQ:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    add-int/2addr v0, v1

    return v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->aae:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1d
.end method
