.class final Landroid/support/v4/app/j;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v4/app/Fragment$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;
    .registers 2

    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v0, p0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Landroid/support/v4/app/Fragment$SavedState;
    .registers 2

    new-array v0, p0, [Landroid/support/v4/app/Fragment$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/app/j;->a(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/app/j;->a(I)[Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
