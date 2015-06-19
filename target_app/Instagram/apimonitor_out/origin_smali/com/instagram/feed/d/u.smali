.class final Lcom/instagram/feed/d/u;
.super Ljava/lang/Object;
.source "MediaRenderCache.java"

# interfaces
.implements Lcom/instagram/common/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/h/e",
        "<",
        "Lcom/instagram/feed/d/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/t;


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/d/u;->a:Lcom/instagram/feed/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/q;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/d/u;->a:Lcom/instagram/feed/d/t;

    invoke-static {v0}, Lcom/instagram/feed/d/t;->a(Lcom/instagram/feed/d/t;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/feed/d/u;->a:Lcom/instagram/feed/d/t;

    invoke-static {v0}, Lcom/instagram/feed/d/t;->b(Lcom/instagram/feed/d/t;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/feed/d/u;->a:Lcom/instagram/feed/d/t;

    invoke-static {v0}, Lcom/instagram/feed/d/t;->c(Lcom/instagram/feed/d/t;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/instagram/common/h/a;)V
    .registers 2

    check-cast p1, Lcom/instagram/feed/d/q;

    invoke-direct {p0, p1}, Lcom/instagram/feed/d/u;->a(Lcom/instagram/feed/d/q;)V

    return-void
.end method
