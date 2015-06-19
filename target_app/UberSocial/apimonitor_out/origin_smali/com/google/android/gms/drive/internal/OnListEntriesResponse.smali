.class public Lcom/google/android/gms/drive/internal/OnListEntriesResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->b:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->b:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/e;->a(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;Landroid/os/Parcel;I)V

    return-void
.end method
