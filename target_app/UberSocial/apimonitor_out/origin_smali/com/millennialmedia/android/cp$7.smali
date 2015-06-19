.class final Lcom/millennialmedia/android/cp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/bp;

.field final synthetic b:Lcom/millennialmedia/android/cc;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/cp$7;->a:Lcom/millennialmedia/android/bp;

    iput-object p2, p0, Lcom/millennialmedia/android/cp$7;->b:Lcom/millennialmedia/android/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cp$7;->a:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/millennialmedia/android/cp$7;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    if-eqz v0, :cond_19

    :try_start_a
    iget-object v0, p0, Lcom/millennialmedia/android/cp$7;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    iget-object v1, p0, Lcom/millennialmedia/android/cp$7;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->d()Lcom/millennialmedia/android/bo;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/cp$7;->b:Lcom/millennialmedia/android/cc;

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/android/df;->requestFailed(Lcom/millennialmedia/android/bo;Lcom/millennialmedia/android/cc;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const-string v1, "MMSDK"

    const-string v2, "Exception raised in your RequestListener: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
