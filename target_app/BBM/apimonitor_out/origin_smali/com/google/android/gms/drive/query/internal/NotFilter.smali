.class public Lcom/google/android/gms/drive/query/internal/NotFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/Filter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/NotFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final EZ:Lcom/google/android/gms/drive/query/internal/FilterHolder;

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->EZ:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .registers 4

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/query/internal/NotFilter;-><init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/g;->a(Lcom/google/android/gms/drive/query/internal/NotFilter;Landroid/os/Parcel;I)V

    return-void
.end method