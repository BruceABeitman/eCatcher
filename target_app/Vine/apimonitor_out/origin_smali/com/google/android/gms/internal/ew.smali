.class public final Lcom/google/android/gms/internal/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ex;


# instance fields
.field public st:Ljava/lang/String;

.field public su:I

.field public sv:I

.field public sw:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 10

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afma-sdk-a-v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_34

    const-string v0, "0"

    :goto_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ew;-><init>(ILjava/lang/String;IIZ)V

    return-void

    :cond_34
    const-string v0, "1"

    goto :goto_24
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ew;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ew;->su:I

    iput p4, p0, Lcom/google/android/gms/internal/ew;->sv:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ew;->sw:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/ew;Landroid/os/Parcel;I)V

    return-void
.end method
