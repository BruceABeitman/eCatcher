.class public final Lcom/google/android/gms/internal/dr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    if-nez p0, :cond_4

    if-eqz p1, :cond_e

    :cond_4
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(D)J
    .registers 4

    const-wide v0, 0x408f400000000000L

    mul-double/2addr v0, p0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static l(J)D
    .registers 6

    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method
