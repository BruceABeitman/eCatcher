.class Lcom/millennialmedia/android/ak;
.super Lcom/millennialmedia/android/cv;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/aj;)V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cv;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ak;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "CachedVideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ ON PAGE FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ak;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/aj;

    if-eqz v0, :cond_25

    invoke-static {v0, p1}, Lcom/millennialmedia/android/aj;->a(Lcom/millennialmedia/android/aj;Ljava/lang/String;)V

    :cond_25
    return-void
.end method
