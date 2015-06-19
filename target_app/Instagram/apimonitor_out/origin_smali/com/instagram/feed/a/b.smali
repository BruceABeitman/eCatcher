.class public final Lcom/instagram/feed/a/b;
.super Ljava/lang/Object;
.source "MediaFeedResponse.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/feed/f/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Integer;

.field private e:Lcom/instagram/feed/survey/b;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/a/b;->c:Ljava/util/List;

    invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/feed/a/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/instagram/feed/survey/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/a/b;->e:Lcom/instagram/feed/survey/b;

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/a/b;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    invoke-virtual {v0, v1, p1}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/feed/a/b;->a:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->b:Lcom/instagram/feed/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final b()Lcom/instagram/feed/f/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->b:Lcom/instagram/feed/f/b;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    iget-object v1, p0, Lcom/instagram/feed/a/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/a;->a(Ljava/util/List;)V

    :cond_11
    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/feed/a/b;->c:Ljava/util/List;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/feed/a/b;->f:Z

    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/feed/a/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/a/b;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->e()V

    return-void
.end method

.method public final e()Lcom/instagram/feed/survey/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/a/b;->e:Lcom/instagram/feed/survey/b;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/feed/a/b;->f:Z

    return v0
.end method
