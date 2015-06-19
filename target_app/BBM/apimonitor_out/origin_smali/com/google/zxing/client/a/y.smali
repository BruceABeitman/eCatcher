.class public final Lcom/google/zxing/client/a/y;
.super Lcom/google/zxing/client/a/u;
.source "SMTPResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
    .registers 8

    const/16 v5, 0x3a

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/a/y;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smtp:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "SMTP:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    :goto_18
    return-object v0

    :cond_19
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_54

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3e

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3e
    :goto_3e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mailto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/google/zxing/client/a/h;

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/google/zxing/client/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_18

    :cond_54
    move-object v1, v0

    goto :goto_3e
.end method
