.class public Lcom/google/android/gms/drive/internal/OpenContentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OpenContentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Hv:I

.field final Ir:Lcom/google/android/gms/drive/DriveId;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ar;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ar;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->Ir:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->Hv:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(ILcom/google/android/gms/drive/DriveId;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ar;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method