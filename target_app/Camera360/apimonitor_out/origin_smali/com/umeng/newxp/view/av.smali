.class Lcom/umeng/newxp/view/aV;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/newxp/view/aU;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/umeng/newxp/view/aU;
    .registers 3

    new-instance v0, Lcom/umeng/newxp/view/aU;

    invoke-direct {v0, p1}, Lcom/umeng/newxp/view/aU;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/umeng/newxp/view/aU;
    .registers 3

    new-array v0, p1, [Lcom/umeng/newxp/view/aU;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/aV;->a(Landroid/os/Parcel;)Lcom/umeng/newxp/view/aU;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/aV;->a(I)[Lcom/umeng/newxp/view/aU;

    move-result-object v0

    return-object v0
.end method
