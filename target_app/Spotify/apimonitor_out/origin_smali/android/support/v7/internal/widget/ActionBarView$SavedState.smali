.class Landroid/support/v7/internal/widget/ActionBarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/internal/widget/ActionBarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/ActionBarView$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method
