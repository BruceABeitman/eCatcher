.class Lcom/twidroid/ui/a/ai$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ai;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/ai;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/themes/b/c;

    instance-of v1, v0, Lcom/twidroid/ui/themes/b/b;

    if-eqz v1, :cond_4d

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v2, v2, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0150

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c014f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0151

    new-instance v3, Lcom/twidroid/ui/a/ai$3$2;

    invoke-direct {v3, p0, v0}, Lcom/twidroid/ui/a/ai$3$2;-><init>(Lcom/twidroid/ui/a/ai$3;Lcom/twidroid/ui/themes/b/c;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0029

    new-instance v2, Lcom/twidroid/ui/a/ai$3$1;

    invoke-direct {v2, p0}, Lcom/twidroid/ui/a/ai$3$1;-><init>(Lcom/twidroid/ui/a/ai$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_4c
    return-void

    :cond_4d
    instance-of v1, v0, Lcom/twidroid/ui/themes/b/a;

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->h:Lcom/twidroid/UberSocialApplication;

    invoke-static {v1}, Lcom/twidroid/d/t;->b(Lcom/twidroid/UberSocialApplication;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme/changed"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "old_theme"

    aput-object v4, v3, v5

    if-eqz v1, :cond_a0

    :goto_63
    aput-object v1, v3, v6

    const-string v1, "new_theme"

    aput-object v1, v3, v7

    move-object v1, v0

    check-cast v1, Lcom/twidroid/ui/themes/b/a;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/b/a;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->h:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    check-cast v0, Lcom/twidroid/ui/themes/b/a;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Twidroyd.Tabswitch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "EXTRA_ACTION_RESTART"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4c

    :cond_a0
    const-string v1, "unknown"

    goto :goto_63

    :cond_a3
    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->h:Lcom/twidroid/UberSocialApplication;

    invoke-static {v1}, Lcom/twidroid/d/t;->b(Lcom/twidroid/UberSocialApplication;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme/changed"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "old_theme"

    aput-object v4, v3, v5

    if-eqz v1, :cond_e6

    :goto_b5
    aput-object v1, v3, v6

    const-string v1, "new_theme"

    aput-object v1, v3, v7

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/b/c;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v2, v2, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    const-class v3, Lcom/twidroid/TwidroidClient;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/twidroid/ui/themes/b/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$3;->a:Lcom/twidroid/ui/a/ai;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4c

    :cond_e6
    const-string v1, "unknown"

    goto :goto_b5
.end method
