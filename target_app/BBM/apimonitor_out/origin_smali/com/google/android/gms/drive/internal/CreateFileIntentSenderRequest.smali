.class public Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final CQ:I

.field final CX:Ljava/lang/String;

.field final CY:Lcom/google/android/gms/drive/DriveId;

.field final Ds:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Ds:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput p3, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CQ:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CX:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CY:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
    .registers 11

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/g;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;Landroid/os/Parcel;I)V

    return-void
.end method
