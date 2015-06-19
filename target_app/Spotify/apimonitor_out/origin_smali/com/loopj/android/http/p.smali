.class public final Lcom/loopj/android/http/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loopj/android/http/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/p;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/loopj/android/http/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/d;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/loopj/android/http/d;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final b()Z
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loopj/android/http/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/d;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/loopj/android/http/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/d;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/loopj/android/http/d;->b()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_25
    move v0, v2

    :goto_26
    if-eqz v0, :cond_35

    :cond_28
    move v0, v2

    :goto_29
    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/loopj/android/http/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_30
    return v0

    :cond_31
    move v0, v1

    goto :goto_13

    :cond_33
    move v0, v1

    goto :goto_26

    :cond_35
    move v0, v1

    goto :goto_29
.end method
