.class public Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-static {}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->values()[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->b:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;J)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    iput-wide p3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->b:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
