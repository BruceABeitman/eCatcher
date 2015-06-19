.class final Lcom/instagram/cliffjumper/edit/common/effectfilter/b;
.super Ljava/lang/Object;
.source "CjFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .registers 3

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .registers 2

    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/b;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/b;->a(I)[Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    return-object v0
.end method
