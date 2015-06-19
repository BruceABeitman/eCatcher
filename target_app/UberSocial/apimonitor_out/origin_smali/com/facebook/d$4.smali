.class Lcom/facebook/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/d;->d(Lcom/facebook/n;)Lcom/facebook/aq;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/d$4;->b:Lcom/facebook/d;

    iput-object p2, p0, Lcom/facebook/d$4;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .registers 5

    :try_start_0
    const-class v0, Lcom/facebook/c/b;

    invoke-virtual {p1, v0}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/facebook/c/b;->a()Lcom/facebook/c/h;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/facebook/c/h;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/c/h;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    iget-object v1, p0, Lcom/facebook/d$4;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/c/c;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    goto :goto_2b
.end method
