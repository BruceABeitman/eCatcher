.class public final Lcom/instagram/feed/f/c;
.super Ljava/lang/Object;
.source "FeedMessage.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/e;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/instagram/feed/f/d;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;
    .registers 2

    invoke-static {p0}, Lcom/instagram/feed/f/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/f/c;->f:Landroid/view/View;

    return-object p1
.end method

.method public final a()Lcom/instagram/feed/f/d;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/f/c;->e:Lcom/instagram/feed/f/d;

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/instagram/feed/f/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_17

    iget-object v0, p0, Lcom/instagram/feed/f/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/d/a;

    iget-object v1, p0, Lcom/instagram/feed/f/c;->d:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/instagram/feed/f/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16
.end method

.method public final a(Lcom/instagram/feed/f/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/f/c;->e:Lcom/instagram/feed/f/d;

    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/f/c;->f:Landroid/view/View;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/f/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/f/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/feed/f/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/f/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/feed/f/c;->d:Ljava/util/List;

    return-object v0
.end method
