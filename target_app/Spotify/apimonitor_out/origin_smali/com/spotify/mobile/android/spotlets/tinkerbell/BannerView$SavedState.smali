.class Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Parcelable;

.field public final b:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->a:Landroid/os/Parcelable;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
