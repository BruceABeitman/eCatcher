.class Lcom/millennialmedia/android/cq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/bp;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/bp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/millennialmedia/android/cq;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/bp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    iput-object p2, p0, Lcom/millennialmedia/android/cq$1;->a:Lcom/millennialmedia/android/bp;

    iput-object p3, p0, Lcom/millennialmedia/android/cq$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/android/cq$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/as;->e:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->c()V

    :goto_13
    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->d()Lcom/millennialmedia/android/bo;

    move-result-object v0

    if-eqz v0, :cond_24

    instance-of v1, v0, Lcom/millennialmedia/android/ch;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/millennialmedia/android/ch;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ch;->n()V

    :cond_24
    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/cq;->h:Z

    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    iget-object v1, p0, Lcom/millennialmedia/android/cq$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/cq$1;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/cq;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    iget v0, v0, Lcom/millennialmedia/android/cq;->m:I

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->b()V

    goto :goto_13

    :cond_44
    iget-object v0, p0, Lcom/millennialmedia/android/cq$1;->d:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->a()V

    goto :goto_13
.end method
