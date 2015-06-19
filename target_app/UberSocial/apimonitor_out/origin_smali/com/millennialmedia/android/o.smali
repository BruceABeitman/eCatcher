.class Lcom/millennialmedia/android/o;
.super Lcom/millennialmedia/android/bq;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/bp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/bq;-><init>(Lcom/millennialmedia/android/bp;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/millennialmedia/android/bq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->a()V

    :cond_10
    return-void
.end method
