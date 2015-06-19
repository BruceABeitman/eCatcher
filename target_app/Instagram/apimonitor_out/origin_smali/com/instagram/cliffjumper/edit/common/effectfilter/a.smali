.class final Lcom/instagram/cliffjumper/edit/common/effectfilter/a;
.super Ljava/lang/Object;
.source "BorderFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
    .registers 3

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
    .registers 2

    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/a;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/a;->a(I)[Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    move-result-object v0

    return-object v0
.end method
