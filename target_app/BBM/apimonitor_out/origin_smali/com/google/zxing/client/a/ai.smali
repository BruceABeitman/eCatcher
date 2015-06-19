.class public final Lcom/google/zxing/client/a/ai;
.super Lcom/google/zxing/client/a/u;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
    .registers 9

    const/4 v0, 0x0

    const/16 v6, 0x3b

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/a/ai;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string v2, "S:"

    invoke-static {v2, v1, v6, v5}, Lcom/google/zxing/client/a/ai;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    const-string v0, "P:"

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/client/a/ai;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    const-string v0, "T:"

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/client/a/ai;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v0, "nopass"

    :cond_2f
    const-string v4, "B:"

    invoke-static {v4, v1, v6, v5}, Lcom/google/zxing/client/a/ai;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    new-instance v1, Lcom/google/zxing/client/a/ah;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/client/a/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_10
.end method
