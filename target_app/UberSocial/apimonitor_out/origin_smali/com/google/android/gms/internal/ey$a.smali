.class public final Lcom/google/android/gms/internal/ey$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/iv;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/iv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ey$a;->CREATOR:Lcom/google/android/gms/internal/iv;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ey$a;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ey$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ey$a;->c:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ey$a;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ey$a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ey$a;->c:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ey$a;->CREATOR:Lcom/google/android/gms/internal/iv;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ey$a;->CREATOR:Lcom/google/android/gms/internal/iv;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/iv;->a(Lcom/google/android/gms/internal/ey$a;Landroid/os/Parcel;I)V

    return-void
.end method
