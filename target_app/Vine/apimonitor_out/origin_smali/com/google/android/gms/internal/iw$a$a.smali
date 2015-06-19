.class public final Lcom/google/android/gms/internal/iw$a$a;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/iw$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile Uw:[Lcom/google/android/gms/internal/iw$a$a;


# instance fields
.field public Ux:Ljava/lang/String;

.field public Uy:Ljava/lang/String;

.field public viewId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iw$a$a;->iN()Lcom/google/android/gms/internal/iw$a$a;

    return-void
.end method

.method public static iM()[Lcom/google/android/gms/internal/iw$a$a;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/iw$a$a;->Uw:[Lcom/google/android/gms/internal/iw$a$a;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/iw$a$a;->Uw:[Lcom/google/android/gms/internal/iw$a$a;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/iw$a$a;

    sput-object v0, Lcom/google/android/gms/internal/iw$a$a;->Uw:[Lcom/google/android/gms/internal/iw$a$a;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/iw$a$a;->Uw:[Lcom/google/android/gms/internal/iw$a$a;

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V

    :cond_2a
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw$a$a;->o(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/iw$a$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget v1, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/iw$a$a;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/iw$a$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    if-nez v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    if-nez v2, :cond_47

    iget-object v2, p1, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget v2, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    iget v3, p1, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_2e
    iget-object v2, p1, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_3a

    iget-object v2, p1, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3a
    move v0, v1

    goto :goto_5

    :cond_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    if-nez v0, :cond_25

    move v0, v1

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_23
    :goto_23
    add-int/2addr v0, v1

    return v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_23
.end method

.method public iN()Lcom/google/android/gms/internal/iw$a$a;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/iw$a$a;->amY:I

    return-object p0
.end method

.method public o(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/iw$a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/iw$a$a;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Ux:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw$a$a;->Uy:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/iw$a$a;->viewId:I

    goto :goto_0

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
    .end sparse-switch
.end method
