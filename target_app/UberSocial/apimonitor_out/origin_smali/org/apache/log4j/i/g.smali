.class public final Lorg/apache/log4j/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/ac;
    .registers 4

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_12

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/log4j/i/e;->a([Ljava/lang/String;)Lorg/apache/log4j/i/e;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, Lorg/apache/log4j/i/e;->a([Ljava/lang/String;)Lorg/apache/log4j/i/e;

    move-result-object v0

    goto :goto_11
.end method
