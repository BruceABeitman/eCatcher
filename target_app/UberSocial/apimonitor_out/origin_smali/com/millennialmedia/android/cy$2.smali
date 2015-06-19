.class Lcom/millennialmedia/android/cy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/cy;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/cy;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/cz;->b(D)D

    move-result-wide v0

    const-string v2, "NVASpeechKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audiolevel changed: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v2}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/millennialmedia/android/cz;->a(D)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v2}, Lcom/millennialmedia/android/cy;->c(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/db;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v2}, Lcom/millennialmedia/android/cy;->c(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/db;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/millennialmedia/android/db;->b(D)V

    :cond_4c
    iget-object v0, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v0}, Lcom/millennialmedia/android/cy;->d(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/dd;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/android/dd;->c:Lcom/millennialmedia/android/dd;

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v0}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/cz;->d:Z

    if-eqz v0, :cond_71

    :cond_60
    iget-object v0, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v0}, Lcom/millennialmedia/android/cy;->f(Lcom/millennialmedia/android/cy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/cy$2;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v1}, Lcom/millennialmedia/android/cy;->e(Lcom/millennialmedia/android/cy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_71
    return-void
.end method
