.class public final Lcom/google/android/gms/analytics/o;
.super Ljava/lang/Object;


# direct methods
.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index out of range for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    const-string v0, ""

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method static s(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static t(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&pr"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&promo"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w(I)Ljava/lang/String;
    .registers 2

    const-string v0, "pi"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&il"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static y(I)Ljava/lang/String;
    .registers 2

    const-string v0, "cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z(I)Ljava/lang/String;
    .registers 2

    const-string v0, "cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
