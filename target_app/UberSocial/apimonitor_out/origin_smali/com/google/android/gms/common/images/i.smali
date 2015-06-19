.class public final Lcom/google/android/gms/common/images/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/common/images/i;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/common/images/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/i;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/i;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
