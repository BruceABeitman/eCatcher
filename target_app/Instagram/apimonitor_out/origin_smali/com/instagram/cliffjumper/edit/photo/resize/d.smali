.class final Lcom/instagram/cliffjumper/edit/photo/resize/d;
.super Ljava/lang/Object;
.source "ResizeFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_e

    :goto_a
    invoke-direct {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;-><init>(ZB)V

    return-object v2

    :cond_e
    move v0, v1

    goto :goto_a
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
    .registers 2

    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/d;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/d;->a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    move-result-object v0

    return-object v0
.end method
