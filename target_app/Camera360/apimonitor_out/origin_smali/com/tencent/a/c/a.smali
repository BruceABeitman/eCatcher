.class public Lcom/tencent/a/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    :cond_12
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12

    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_20
    if-ge v0, v2, :cond_2a

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/tencent/a/c/a;->a(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_12
.end method
