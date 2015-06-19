.class final Lcom/a/a/h;
.super Lcom/a/a/a/bb;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/a/a/bf;Ljava/io/File;)V
    .registers 3

    iput-object p2, p0, Lcom/a/a/h;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/a/a/a/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->w()Lcom/a/a/aa;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Lcom/a/a/ag;

    invoke-direct {v1, v0}, Lcom/a/a/ag;-><init>(Lcom/a/a/aa;)V

    new-instance v0, Lcom/a/a/ae;

    iget-object v2, p0, Lcom/a/a/h;->a:Ljava/io/File;

    invoke-static {}, Lcom/a/a/bf;->j()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/a/a/ae;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/a/a/ag;->a(Lcom/a/a/ae;)Z

    :cond_1d
    return-void
.end method
