.class public Lcom/google/android/gms/internal/iu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ir$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ir$b;Landroid/os/Parcel;I)V
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$b;->hB()Ljava/util/Set;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$b;->getVersionCode()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$b;->if()Lcom/google/android/gms/internal/ir$b$a;

    move-result-object v2

    invoke-static {p1, v4, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$b;->ig()Lcom/google/android/gms/internal/ir$b$b;

    move-result-object v2

    invoke-static {p1, v5, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$b;->getLayout()I

    move-result v1

    invoke-static {p1, v6, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aK(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$b;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    move v2, v5

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_60

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I

    move-result v7

    packed-switch v7, :pswitch_data_82

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :pswitch_2f
    sget-object v3, Lcom/google/android/gms/internal/ir$b$a;->CREATOR:Lcom/google/android/gms/internal/iv;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ir$b$a;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_d

    :pswitch_41
    sget-object v4, Lcom/google/android/gms/internal/ir$b$b;->CREATOR:Lcom/google/android/gms/internal/iw;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ir$b$b;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_d

    :pswitch_53
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v6, :cond_7b

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_7b
    new-instance v0, Lcom/google/android/gms/internal/ir$b;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ir$b;-><init>(Ljava/util/Set;ILcom/google/android/gms/internal/ir$b$a;Lcom/google/android/gms/internal/ir$b$b;I)V

    return-object v0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2f
        :pswitch_41
        :pswitch_53
    .end packed-switch
.end method

.method public bH(I)[Lcom/google/android/gms/internal/ir$b;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/ir$b;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iu;->aK(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iu;->bH(I)[Lcom/google/android/gms/internal/ir$b;

    move-result-object v0

    return-object v0
.end method
