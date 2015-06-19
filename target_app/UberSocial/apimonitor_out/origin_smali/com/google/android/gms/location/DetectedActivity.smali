.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/d; = null

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5


# instance fields
.field g:I

.field h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/d;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/DetectedActivity;->i:I

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->g:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->h:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->i:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->g:I

    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->h:I

    return-void
.end method

.method private a(I)I
    .registers 3

    const/4 v0, 0x6

    if-le p1, v0, :cond_4

    const/4 p1, 0x4

    :cond_4
    return p1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->a(I)I

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->h:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->i:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectedActivity [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V

    return-void
.end method
