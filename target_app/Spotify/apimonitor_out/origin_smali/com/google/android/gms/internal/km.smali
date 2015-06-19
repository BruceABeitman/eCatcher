.class public final Lcom/google/android/gms/internal/km;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ix;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ix;Landroid/os/Parcel;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ix;->a:[Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->b:[[B

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;[[B)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 13

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v6

    move-object v0, v1

    move-object v2, v1

    move v3, v4

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v6, :cond_4c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v7, 0xffff

    and-int/2addr v7, v5

    packed-switch v7, :pswitch_data_6e

    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_1e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_9

    :pswitch_23
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :pswitch_28
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v7, :cond_34

    move-object v0, v1

    goto :goto_9

    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-array v0, v9, [[B

    move v5, v4

    :goto_3b
    if-ge v5, v9, :cond_46

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_46
    add-int v5, v8, v7

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_9

    :cond_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v6, :cond_67

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

    :cond_67
    new-instance v1, Lcom/google/android/gms/internal/ix;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/ix;-><init>(I[Ljava/lang/String;[[B)V

    return-object v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/ix;

    return-object v0
.end method
