.class public abstract Lcom/google/zxing/client/a/q;
.super Ljava/lang/Object;
.source "ParsedResult.java"


# instance fields
.field public final o:Lcom/google/zxing/client/a/r;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/client/a/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/a/q;->o:Lcom/google/zxing/client/a/r;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 3

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6

    if-eqz p0, :cond_21

    array-length v1, p0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_21

    aget-object v2, p0, v0

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1b

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_21
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/zxing/client/a/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
