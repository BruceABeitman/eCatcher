.class final Lcom/millennialmedia/android/cb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/cn;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    .registers 6

    iput-object p1, p0, Lcom/millennialmedia/android/cb$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/millennialmedia/android/cb$1;->b:Z

    iput-wide p3, p0, Lcom/millennialmedia/android/cb$1;->c:J

    iput-object p5, p0, Lcom/millennialmedia/android/cb$1;->d:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Lcom/millennialmedia/android/aw;

    invoke-direct {v0}, Lcom/millennialmedia/android/aw;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/millennialmedia/android/cb$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/millennialmedia/android/cb$1;->b:Z

    iget-wide v3, p0, Lcom/millennialmedia/android/cb$1;->c:J

    iget-object v5, p0, Lcom/millennialmedia/android/cb$1;->d:Ljava/util/TreeMap;

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "MMConversionTracker"

    const-string v2, "Problem doing conversion tracking."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method
