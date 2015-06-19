.class public final Lcom/google/a/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/a/d;

.field public static final b:Lcom/google/a/d;

.field public static final c:Lcom/google/a/d;

.field public static final d:Lcom/google/a/d;

.field public static final e:Lcom/google/a/d;

.field public static final f:Lcom/google/a/d;


# instance fields
.field private final g:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/a/d;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d;-><init>(II)V

    sput-object v0, Lcom/google/a/d;->a:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/google/a/d;-><init>(II)V

    sput-object v0, Lcom/google/a/d;->b:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/google/a/d;-><init>(II)V

    sput-object v0, Lcom/google/a/d;->c:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/google/a/d;-><init>(II)V

    sput-object v0, Lcom/google/a/d;->d:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/google/a/d;-><init>(II)V

    sput-object v0, Lcom/google/a/d;->e:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lcom/google/a/d;-><init>(II)V

    sput-object v0, Lcom/google/a/d;->f:Lcom/google/a/d;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/a/d;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/d;->g:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/a/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/a/d;

    iget-object v0, p0, Lcom/google/a/d;->g:Lcom/google/android/gms/ads/AdSize;

    iget-object v1, p1, Lcom/google/a/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
