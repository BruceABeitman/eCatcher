.class final Lcom/viewpagerindicator/TitlePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .registers 4

    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/TitlePageIndicator$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .registers 3

    new-array v0, p1, [Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState$1;->a(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState$1;->a(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
