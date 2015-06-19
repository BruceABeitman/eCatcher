.class public final Lcom/d/a/a/a/a/b;
.super Lcom/d/a/a/a/c;
.source "TotalSizeLimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    new-instance v0, Lcom/d/a/a/a/b/b;

    invoke-direct {v0}, Lcom/d/a/a/a/b/b;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/d/a/a/a/a/b;-><init>(Ljava/io/File;Lcom/d/a/a/a/b/a;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/d/a/a/a/b/a;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/d/a/a/a/c;-><init>(Ljava/io/File;Lcom/d/a/a/a/b/a;I)V

    const/high16 v0, 0x20

    if-ge p3, v0, :cond_17

    const-string v0, "You set too small disc cache size (less than %1$d Mb)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    return-void
.end method


# virtual methods
.method protected final b(Ljava/io/File;)I
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
