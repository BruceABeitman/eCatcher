.class Lcom/twidroid/fragments/base/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method private constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/f;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/f;-><init>(Lcom/twidroid/fragments/base/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "ubersocial.broadcast.account.changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "account"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/f;->a:Lcom/twidroid/fragments/base/e;

    iget-object v1, v1, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/fragments/base/f;->a:Lcom/twidroid/fragments/base/e;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V

    :cond_2a
    return-void
.end method
