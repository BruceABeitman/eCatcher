.class Lcom/millennialmedia/android/x$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/x;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/x;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/x;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/x$5;->a:Lcom/millennialmedia/android/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/android/cg;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/x$5;->a:Lcom/millennialmedia/android/x;

    iget-object v0, v0, Lcom/millennialmedia/android/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->i()Lcom/millennialmedia/android/ch;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/millennialmedia/android/ch;->p()V

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    invoke-static {}, Lcom/millennialmedia/android/cg;->b()Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_19
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/x$5;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    return-object v0
.end method