.class public Lcom/google/android/gms/drive/internal/CloseContentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CloseContentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/Contents;

.field final c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/q;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->b:Lcom/google/android/gms/drive/Contents;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->c:Ljava/lang/Boolean;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/q;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
