.class final Lcom/google/android/gms/common/images/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/common/images/f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/f;

    iget-object v0, p1, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
