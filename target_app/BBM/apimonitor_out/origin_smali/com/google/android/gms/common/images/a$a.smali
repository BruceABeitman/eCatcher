.class public final Lcom/google/android/gms/common/images/a$a;
.super Ljava/lang/Object;


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/google/android/gms/common/images/a$a;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p0, p1, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/images/a$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/a$a;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/a$a;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
