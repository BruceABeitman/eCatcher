.class Lcom/millennialmedia/android/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/x;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/millennialmedia/android/x;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/x;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/x$1;->b:Lcom/millennialmedia/android/x;

    iput-object p2, p0, Lcom/millennialmedia/android/x$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/android/cg;
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/x$1;->b:Lcom/millennialmedia/android/x;

    iget-object v0, v0, Lcom/millennialmedia/android/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->i()Lcom/millennialmedia/android/ch;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/bc;

    iget-object v3, p0, Lcom/millennialmedia/android/x$1;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/millennialmedia/android/bc;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/ch;->b(Lcom/millennialmedia/android/bc;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usingStreaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/millennialmedia/android/ch;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    invoke-static {}, Lcom/millennialmedia/android/cg;->b()Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_39
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/x$1;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    return-object v0
.end method
