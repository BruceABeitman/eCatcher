.class Lcom/tencent/a/a/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/a/a/h;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/a/a/j;->a:Lcom/tencent/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/a/a/j;->a:Lcom/tencent/a/a/h;

    invoke-virtual {v2}, Lcom/tencent/a/a/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-static {p1}, Lcom/tencent/a/a/h;->d(Ljava/io/File;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method
