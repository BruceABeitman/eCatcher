.class Lcom/twidroid/ui/a/ai$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ai$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/themes/b/c;

.field final synthetic b:Lcom/twidroid/ui/a/ai$3;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ai$3;Lcom/twidroid/ui/themes/b/c;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/a/ai$3$2;->b:Lcom/twidroid/ui/a/ai$3;

    iput-object p2, p0, Lcom/twidroid/ui/a/ai$3$2;->a:Lcom/twidroid/ui/themes/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$3$2;->b:Lcom/twidroid/ui/a/ai$3;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai;->h:Lcom/twidroid/UberSocialApplication;

    invoke-static {v0}, Lcom/twidroid/d/t;->b(Lcom/twidroid/UberSocialApplication;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "theme/changed"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "old_theme"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_73

    :goto_17
    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "new_theme"

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$3$2;->a:Lcom/twidroid/ui/themes/b/c;

    check-cast v0, Lcom/twidroid/ui/themes/b/b;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/b/b;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$3$2;->b:Lcom/twidroid/ui/a/ai$3;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$3$2;->a:Lcom/twidroid/ui/themes/b/c;

    check-cast v0, Lcom/twidroid/ui/themes/b/b;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/twidroid/TwidroidClient;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3$2;->b:Lcom/twidroid/ui/a/ai$3;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Twidroyd.Tabswitch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "EXTRA_ACTION_RESTART"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3$2;->b:Lcom/twidroid/ui/a/ai$3;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_73
    const-string v0, "unknown"

    goto :goto_17
.end method
