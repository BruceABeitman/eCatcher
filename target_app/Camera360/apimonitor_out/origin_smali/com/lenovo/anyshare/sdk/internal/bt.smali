.class public Lcom/lenovo/anyshare/sdk/internal/bt;
.super Ljava/lang/Object;
.source "LocalMediaLoaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/bt$b;,
        Lcom/lenovo/anyshare/sdk/internal/bt$c;,
        Lcom/lenovo/anyshare/sdk/internal/bt$a;
    }
.end annotation


# direct methods
.method static synthetic a(JLjava/lang/String;)J
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bt;->b(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(JLjava/lang/String;)J
    .registers 6

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_7

    :goto_6
    return-wide p0

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    goto :goto_6
.end method
