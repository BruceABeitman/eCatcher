.class Lcom/millennialmedia/android/aa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/aa;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/aa;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/aa$1;->a:Lcom/millennialmedia/android/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/aa$1;->a:Lcom/millennialmedia/android/aa;

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Lcom/millennialmedia/android/aa;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/millennialmedia/android/aa$1;->a:Lcom/millennialmedia/android/aa;

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Lcom/millennialmedia/android/aa;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/millennialmedia/android/aa$1;->a:Lcom/millennialmedia/android/aa;

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Lcom/millennialmedia/android/aa;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lcom/millennialmedia/android/aa$1;->a:Lcom/millennialmedia/android/aa;

    iget-object v0, v0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/millennialmedia/android/aa$1;->a:Lcom/millennialmedia/android/aa;

    iget-object v0, v0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ac;

    invoke-interface {v0, v1}, Lcom/millennialmedia/android/ac;->a(I)V

    goto :goto_2c

    :cond_3c
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;J)V

    :cond_41
    return-void
.end method
