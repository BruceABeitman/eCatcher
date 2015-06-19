.class final Lokio/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokio/h;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(I)I
    .registers 3

    const/high16 v0, -0x100

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(J)J
    .registers 10

    const/16 v7, 0x38

    const/16 v6, 0x28

    const/16 v5, 0x18

    const/16 v4, 0x8

    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    ushr-long/2addr v0, v7

    const-wide/high16 v2, 0xff

    and-long/2addr v2, p0

    ushr-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(JJJ)V
    .registers 11

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_36

    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size=%s offset=%s byteCount=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    return-void
.end method
