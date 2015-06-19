.class final Lcom/facebook/ah$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ah;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/p;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ah$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ah$2;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ah$2;->c:Lcom/facebook/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ah$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ah$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/ah;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ah$2;->c:Lcom/facebook/p;

    if-eqz v1, :cond_1d

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ah$2$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ah$2$1;-><init>(Lcom/facebook/ah$2;Lcom/facebook/aa;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void
.end method
