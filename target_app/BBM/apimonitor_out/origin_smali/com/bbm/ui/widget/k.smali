.class public final Lcom/bbm/ui/widget/k;
.super Ljava/lang/Object;
.source "WidgetMonitor.java"


# instance fields
.field final a:Landroid/os/Handler;

.field public b:Lcom/bbm/j/k;

.field public final c:Landroid/content/BroadcastReceiver;

.field public final d:Landroid/content/Context;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/widget/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bbm/ui/widget/k;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/widget/l;

    invoke-direct {v0, p0}, Lcom/bbm/ui/widget/l;-><init>(Lcom/bbm/ui/widget/k;)V

    iput-object v0, p0, Lcom/bbm/ui/widget/k;->c:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/bbm/ui/widget/k;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    return-void
.end method
