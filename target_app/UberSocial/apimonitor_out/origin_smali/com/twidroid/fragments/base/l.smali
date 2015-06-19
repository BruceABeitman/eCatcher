.class Lcom/twidroid/fragments/base/l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method private constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/l;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/l;-><init>(Lcom/twidroid/fragments/base/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "twidroid.broadcast"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/l;->a:Lcom/twidroid/fragments/base/e;

    invoke-virtual {v1}, Lcom/twidroid/fragments/base/e;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/fragments/base/l;->a:Lcom/twidroid/fragments/base/e;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->b()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/l;->a:Lcom/twidroid/fragments/base/e;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->k()V

    :cond_26
    return-void
.end method
