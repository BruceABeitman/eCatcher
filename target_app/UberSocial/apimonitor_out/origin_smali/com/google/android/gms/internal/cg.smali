.class public final Lcom/google/android/gms/internal/cg;
.super Lcom/google/android/gms/internal/so;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/so;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->c()Lcom/google/android/gms/internal/cg;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/cg;
    .registers 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cg;->a(Lcom/google/android/gms/internal/sj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/cg;->a:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cg;->b:I

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cg;->c:I

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

.method public a(Lcom/google/android/gms/internal/sk;)V
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/cg;->a:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/cg;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/sk;->a(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/cg;->b:I

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/cg;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(II)V

    :cond_14
    iget v0, p0, Lcom/google/android/gms/internal/cg;->c:I

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/cg;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(II)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/so;->a(Lcom/google/android/gms/internal/sk;)V

    return-void
.end method

.method public b()I
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/so;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/cg;->a:I

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/cg;->a:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/sk;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/google/android/gms/internal/cg;->b:I

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/cg;->b:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/cg;->c:I

    if-eqz v1, :cond_28

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/cg;->c:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iput v0, p0, Lcom/google/android/gms/internal/cg;->s:I

    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cg;->a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/cg;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/cg;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cg;->a:I

    iput v1, p0, Lcom/google/android/gms/internal/cg;->b:I

    iput v1, p0, Lcom/google/android/gms/internal/cg;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/cg;->s:I

    return-object p0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/cg;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/cg;

    iget v2, p0, Lcom/google/android/gms/internal/cg;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/cg;->a:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/cg;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/cg;->b:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/cg;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/cg;->c:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_2a
    iget-object v2, p1, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    if-eqz v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_36
    move v0, v1

    goto :goto_5

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/cg;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/cg;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/cg;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    add-int/2addr v0, v1

    return v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->r:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1d
.end method
