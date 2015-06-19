.class public abstract Lcom/bbm/d/b/r;
.super Lcom/bbm/d/a/a/a;
.source "TransformingList.java"

# interfaces
.implements Lcom/bbm/j/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bbm/d/a/a/a;",
        "Lcom/bbm/j/r",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bbm/j/h;

.field private final b:Ljava/lang/Runnable;

.field final d:Lcom/bbm/j/h;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/bbm/j/r",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final f:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bbm/j/r;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<TK;>;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V

    new-instance v0, Lcom/bbm/d/b/s;

    invoke-direct {v0, p0}, Lcom/bbm/d/b/s;-><init>(Lcom/bbm/d/b/r;)V

    iput-object v0, p0, Lcom/bbm/d/b/r;->d:Lcom/bbm/j/h;

    new-instance v0, Lcom/bbm/d/b/t;

    invoke-direct {v0, p0}, Lcom/bbm/d/b/t;-><init>(Lcom/bbm/d/b/r;)V

    iput-object v0, p0, Lcom/bbm/d/b/r;->a:Lcom/bbm/j/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/b/r;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/b/r;->g:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/bbm/d/b/r;->h:Z

    iput-boolean v1, p0, Lcom/bbm/d/b/r;->i:Z

    new-instance v0, Lcom/bbm/d/b/u;

    invoke-direct {v0, p0}, Lcom/bbm/d/b/u;-><init>(Lcom/bbm/d/b/r;)V

    iput-object v0, p0, Lcom/bbm/d/b/r;->b:Ljava/lang/Runnable;

    new-instance v0, Lcom/bbm/d/b/v;

    invoke-direct {v0, p0}, Lcom/bbm/d/b/v;-><init>(Lcom/bbm/d/b/r;)V

    iput-object v0, p0, Lcom/bbm/d/b/r;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/bbm/d/b/r;->f:Lcom/bbm/j/r;

    iget-object v0, p0, Lcom/bbm/d/b/r;->f:Lcom/bbm/j/r;

    iget-object v1, p0, Lcom/bbm/d/b/r;->a:Lcom/bbm/j/h;

    invoke-interface {v0, v1}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/bbm/j/r",
            "<TV;>;"
        }
    .end annotation
.end method

.method final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/d/b/r;->i:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/d/b/r;->i:Z

    invoke-virtual {p0}, Lcom/bbm/d/b/r;->c()V

    goto :goto_4
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-boolean v0, p0, Lcom/bbm/d/b/r;->i:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/d/b/r;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/bbm/j/p;->a(Ljava/lang/Runnable;)V

    :cond_c
    iget-object v0, p0, Lcom/bbm/d/b/r;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final synthetic e()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/d/b/r;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
