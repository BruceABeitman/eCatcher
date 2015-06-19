.class public Lco/vine/android/widget/tabs/TabSavedState;
.super Ljava/lang/Object;
.source "TabSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/widget/tabs/TabSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/widget/tabs/TabSavedState$1;

    invoke-direct {v0}, Lco/vine/android/widget/tabs/TabSavedState$1;-><init>()V

    sput-object v0, Lco/vine/android/widget/tabs/TabSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/tabs/TabSavedState;->tags:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/widget/tabs/TabInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_19

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/tabs/TabInfo;

    iget-object v4, v1, Lco/vine/android/widget/tabs/TabInfo;->mTag:Ljava/lang/String;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    iput-object v3, p0, Lco/vine/android/widget/tabs/TabSavedState;->tags:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabSavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
