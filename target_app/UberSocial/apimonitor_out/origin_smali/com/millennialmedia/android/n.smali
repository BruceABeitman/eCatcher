.class Lcom/millennialmedia/android/n;
.super Lcom/millennialmedia/android/br;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/bp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/br;-><init>(Lcom/millennialmedia/android/bp;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/n;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/millennialmedia/android/h;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->b()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
