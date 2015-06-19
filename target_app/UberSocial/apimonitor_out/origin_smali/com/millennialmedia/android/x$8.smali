.class Lcom/millennialmedia/android/x$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/x;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/millennialmedia/android/x;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/x;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/x$8;->b:Lcom/millennialmedia/android/x;

    iput-object p2, p0, Lcom/millennialmedia/android/x$8;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/android/cg;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/x$8;->b:Lcom/millennialmedia/android/x;

    iget-object v0, v0, Lcom/millennialmedia/android/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->i()Lcom/millennialmedia/android/ch;

    move-result-object v1

    iget-object v0, p0, Lcom/millennialmedia/android/x$8;->a:Ljava/util/Map;

    const-string v2, "streamVideoURI"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/ch;->setVideoSource(Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    invoke-static {}, Lcom/millennialmedia/android/cg;->b()Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_25
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/x$8;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    return-object v0
.end method
