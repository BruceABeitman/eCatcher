.class abstract Lcom/google/zxing/client/a/a;
.super Lcom/google/zxing/client/a/u;
.source "AbstractDoCoMoResultParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/a/a;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3b

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/a/a;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
