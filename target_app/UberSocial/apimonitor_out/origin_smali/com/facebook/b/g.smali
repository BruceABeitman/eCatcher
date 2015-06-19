.class final Lcom/facebook/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/b/g;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/b/g;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/b/g;)I
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/b/g;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/b/g;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/facebook/b/g;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/b/g;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/b/g;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/b/g;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_d
.end method

.method a()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/facebook/b/g;->a:Ljava/io/File;

    return-object v0
.end method

.method b()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/b/g;->b:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/facebook/b/g;

    invoke-virtual {p0, p1}, Lcom/facebook/b/g;->a(Lcom/facebook/b/g;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/facebook/b/g;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/facebook/b/g;

    invoke-virtual {p0, p1}, Lcom/facebook/b/g;->a(Lcom/facebook/b/g;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
