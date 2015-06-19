.class final Lcom/instagram/cliffjumper/util/b;
.super Ljava/lang/Object;
.source "Matrix3.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/util/Matrix3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/util/Matrix3;
    .registers 2

    new-instance v0, Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/util/Matrix3;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/util/Matrix3;
    .registers 2

    new-array v0, p0, [Lcom/instagram/cliffjumper/util/Matrix3;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/util/b;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/util/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/util/b;->a(I)[Lcom/instagram/cliffjumper/util/Matrix3;

    move-result-object v0

    return-object v0
.end method
