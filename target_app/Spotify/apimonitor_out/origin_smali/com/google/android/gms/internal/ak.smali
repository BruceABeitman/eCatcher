.class public final Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/n;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:[Lcom/google/android/gms/internal/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ak;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ak;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ak;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ak;->d:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ak;->e:Z

    iput p6, p0, Lcom/google/android/gms/internal/ak;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/ak;->g:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget-object v6, p2, v2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ak;->a:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ak;->e:Z

    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ak;->f:I

    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ak;->c:I

    iget v0, p0, Lcom/google/android/gms/internal/ak;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_82

    move v0, v1

    :goto_1e
    iget v3, p0, Lcom/google/android/gms/internal/ak;->c:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_84

    move v3, v1

    :goto_24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v0, :cond_86

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/google/android/gms/internal/ak;->g:I

    iget v4, p0, Lcom/google/android/gms/internal/ak;->g:I

    int-to-float v4, v4

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    move v5, v4

    :goto_3a
    if-eqz v3, :cond_92

    invoke-static {v7}, Lcom/google/android/gms/internal/ak;->c(Landroid/util/DisplayMetrics;)I

    move-result v4

    :goto_40
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/eo;->a(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ak;->d:I

    if-nez v0, :cond_4a

    if-eqz v3, :cond_95

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_as"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;

    :goto_69
    array-length v0, p2

    if-le v0, v1, :cond_9c

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/gms/internal/ak;

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    :goto_71
    array-length v0, p2

    if-ge v2, v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    new-instance v1, Lcom/google/android/gms/internal/ak;

    aget-object v3, p2, v2

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_82
    move v0, v2

    goto :goto_1e

    :cond_84
    move v3, v2

    goto :goto_24

    :cond_86
    iget v4, p0, Lcom/google/android/gms/internal/ak;->f:I

    iget v5, p0, Lcom/google/android/gms/internal/ak;->f:I

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/eo;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ak;->g:I

    move v5, v4

    goto :goto_3a

    :cond_92
    iget v4, p0, Lcom/google/android/gms/internal/ak;->c:I

    goto :goto_40

    :cond_95
    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;

    goto :goto_69

    :cond_9c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    :cond_9f
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ak;[Lcom/google/android/gms/internal/ak;)V
    .registers 12

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/internal/ak;->c:I

    iget v4, p1, Lcom/google/android/gms/internal/ak;->d:I

    iget-boolean v5, p1, Lcom/google/android/gms/internal/ak;->e:Z

    iget v6, p1, Lcom/google/android/gms/internal/ak;->f:I

    iget v7, p1, Lcom/google/android/gms/internal/ak;->g:I

    move-object v0, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ak;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .registers 2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ak;->c(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .registers 3

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_e

    const/16 v0, 0x20

    :goto_d
    return v0

    :cond_e
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_15

    const/16 v0, 0x32

    goto :goto_d

    :cond_15
    const/16 v0, 0x5a

    goto :goto_d
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/n;->a(Lcom/google/android/gms/internal/ak;Landroid/os/Parcel;I)V

    return-void
.end method
