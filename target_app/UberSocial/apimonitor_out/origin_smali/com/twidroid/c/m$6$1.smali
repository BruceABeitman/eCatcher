.class Lcom/twidroid/c/m$6$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/m$6;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/m$6;


# direct methods
.method constructor <init>(Lcom/twidroid/c/m$6;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/model/twitter/DirectMessage;)Ljava/lang/Exception;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->b(Lcom/twidroid/c/m;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/c/c;->c(J)Z

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->b(Lcom/twidroid/c/m;)Lcom/twidroid/b/a/b;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/lang/Long;)Z

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/ui/a/w;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/w;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/w;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v1, v1, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v1}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/w;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/w;->b()V

    :cond_68
    :goto_68
    const/4 v0, 0x0

    :goto_69
    return-object v0

    :cond_6a
    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/ui/a/v;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->e(Lcom/twidroid/c/m;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/v;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/model/twitter/DirectMessage;

    iget-wide v3, v1, Lcom/twidroid/model/twitter/DirectMessage;->x:J

    iget-object v5, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v5, v5, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v5}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v5

    iget-wide v5, v5, Lcom/twidroid/model/twitter/DirectMessage;->x:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_88

    invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->a()V

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->p()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b9} :catch_ba

    goto :goto_68

    :catch_ba
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {p0, p1}, Lcom/twidroid/c/m$6$1;->a([Lcom/twidroid/model/twitter/DirectMessage;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    const v1, 0x7f0c0154

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->b(ILjava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-virtual {v0}, Lcom/twidroid/c/m;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V

    if-nez p1, :cond_44

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    const v1, 0x7f0c0161

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->c(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->q()V

    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/twidroid/fragments/e/a;->G:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/twidroid/c/m$6$1;->a:Lcom/twidroid/c/m$6;

    iget-object v0, v0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Network error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_43
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/twidroid/c/m$6$1;->a(Ljava/lang/Exception;)V

    return-void
.end method
