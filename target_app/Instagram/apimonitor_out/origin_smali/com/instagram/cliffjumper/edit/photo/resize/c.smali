.class final Lcom/instagram/cliffjumper/edit/photo/resize/c;
.super Ljava/lang/Object;
.source "LanczosFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;
    .registers 1

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;-><init>()V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;
    .registers 2

    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/resize/c;->a()Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/c;->a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/LanczosFilter;

    move-result-object v0

    return-object v0
.end method
