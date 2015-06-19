.class Lcom/millennialmedia/a/a/b/n$1;
.super Lcom/millennialmedia/a/a/b/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/n;->iterator()Ljava/util/Iterator;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/b/n;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/n;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/n$1;->a:Lcom/millennialmedia/a/a/b/n;

    iget-object v0, p1, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/o;-><init>(Lcom/millennialmedia/a/a/b/j;Lcom/millennialmedia/a/a/b/j$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/n$1;->b()Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    return-object v0
.end method
