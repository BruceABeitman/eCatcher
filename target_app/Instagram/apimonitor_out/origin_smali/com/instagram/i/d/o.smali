.class public final Lcom/instagram/i/d/o;
.super Lcom/instagram/api/k/a/e;
.source "NewsfeedYouResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/e",
        "<",
        "Lcom/instagram/i/d/o;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/instagram/i/d/p;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V

    invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/i/d/o;->n:Lcom/instagram/feed/f/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/i/d/p;
    .registers 2

    iget-object v0, p0, Lcom/instagram/i/d/o;->b:Lcom/instagram/i/d/p;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/i/d/p;

    invoke-direct {v0}, Lcom/instagram/i/d/p;-><init>()V

    iput-object v0, p0, Lcom/instagram/i/d/o;->b:Lcom/instagram/i/d/p;

    :cond_b
    iget-object v0, p0, Lcom/instagram/i/d/o;->b:Lcom/instagram/i/d/p;

    return-object v0
.end method

.method public final b()I
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/i/d/o;->a()Lcom/instagram/i/d/p;

    move-result-object v0

    iget v0, v0, Lcom/instagram/i/d/p;->e:I

    return v0
.end method

.method public final c()Lcom/instagram/feed/f/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/i/d/o;->n:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method final d()Lcom/instagram/i/d/o;
    .registers 4

    iget-object v0, p0, Lcom/instagram/i/d/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/i/d/o;->n:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    iget-object v2, p0, Lcom/instagram/i/d/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    :cond_d
    return-object p0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/d/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/d/o;->d:Ljava/util/List;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/d/o;->e:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/d/o;->m:Ljava/util/List;

    return-object v0
.end method
