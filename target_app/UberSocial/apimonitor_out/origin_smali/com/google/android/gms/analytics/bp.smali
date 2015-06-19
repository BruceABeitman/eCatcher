.class Lcom/google/android/gms/analytics/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/au;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/bp;->d:I

    iput v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/bp;->d:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/bp;->d:I

    return v0
.end method

.method public i()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public j()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/bp;->e:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
