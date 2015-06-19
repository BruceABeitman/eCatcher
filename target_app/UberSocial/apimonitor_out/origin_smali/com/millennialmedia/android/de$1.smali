.class Lcom/millennialmedia/android/de$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/de;->b(Lcom/millennialmedia/android/ao;Lorg/apache/http/HttpEntity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/ao;

.field final synthetic b:Lcom/millennialmedia/android/de;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/de;Lcom/millennialmedia/android/ao;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/de$1;->b:Lcom/millennialmedia/android/de;

    iput-object p2, p0, Lcom/millennialmedia/android/de$1;->a:Lcom/millennialmedia/android/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/android/ai;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/de$1;->a:Lcom/millennialmedia/android/ao;

    iget-object v0, v0, Lcom/millennialmedia/android/ao;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/millennialmedia/android/ai;Z)V
    .registers 5

    monitor-enter p0

    if-eqz p2, :cond_1e

    :try_start_3
    iget-object v0, p0, Lcom/millennialmedia/android/de$1;->b:Lcom/millennialmedia/android/de;

    invoke-static {v0}, Lcom/millennialmedia/android/de;->a(Lcom/millennialmedia/android/de;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Lcom/millennialmedia/android/ai;)Z

    iget-object v0, p0, Lcom/millennialmedia/android/de$1;->b:Lcom/millennialmedia/android/de;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/de;->a(Lcom/millennialmedia/android/de;Z)Z

    iget-object v0, p0, Lcom/millennialmedia/android/de$1;->a:Lcom/millennialmedia/android/ao;

    iget-object v0, v0, Lcom/millennialmedia/android/ao;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    :goto_19
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/millennialmedia/android/de$1;->a:Lcom/millennialmedia/android/ao;

    iget-object v0, v0, Lcom/millennialmedia/android/ao;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_19

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
