.class final Landroid/support/v4/app/ae;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v4/app/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentTabHost$SavedState;
    .registers 3

    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Landroid/support/v4/app/FragmentTabHost$SavedState;
    .registers 2

    new-array v0, p0, [Landroid/support/v4/app/FragmentTabHost$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/app/ae;->a(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/app/ae;->a(I)[Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method
