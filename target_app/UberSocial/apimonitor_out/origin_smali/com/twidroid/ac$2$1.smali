.class Lcom/twidroid/ac$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ac$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ac$2;


# direct methods
.method constructor <init>(Lcom/twidroid/ac$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_c
    if-ge v1, v3, :cond_14a

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    iget-object v4, v0, Lcom/twidroid/UberSocialProfile;->t:Lcom/twidroid/model/twitter/e;

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/twidroid/model/twitter/e;->a(Ljava/lang/String;)Lcom/twidroid/model/twitter/d;

    move-result-object v4

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->az(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/twidroid/b/a/b;->c(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->u:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v5, v0, :cond_b0

    if-eqz v5, :cond_b5

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->aA(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v5, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v5, v5, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v5, v5, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    iget-object v5, v5, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    iget-wide v5, v5, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/d;J)Z

    const-string v0, "list"

    const-string v5, "addmember"

    invoke-static {v0, v5}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8f
    new-instance v0, Landroid/content/Intent;

    const-string v5, "BROADCAST_LIST_USERS_MODIFIED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "EXTRA_LIST_URI"

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v4, v4, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v4, v4, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_b0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c

    :cond_b5
    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->aB(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v5, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v5, v5, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v5, v5, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    iget-object v5, v5, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    iget-wide v5, v5, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/d;J)V

    const-string v0, "list"

    const-string v5, "removemember"

    invoke-static {v0, v5}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_db} :catch_dc

    goto :goto_8f

    :catch_dc
    move-exception v0

    const-string v1, "SaveSubscription EXEPTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v1, v1, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v1, v1, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v4, v4, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v4, v4, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v4}, Lcom/twidroid/UberSocialProfile;->aE(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/twidroid/UberSocialProfile;->j(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v1, v1, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v1, v1, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->aF(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/twidroid/ac$2$1$2;

    invoke-direct {v3, p0}, Lcom/twidroid/ac$2$1$2;-><init>(Lcom/twidroid/ac$2$1;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v1, v1, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v1, v1, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v1, v2}, Lcom/twidroid/UberSocialProfile;->i(Lcom/twidroid/UberSocialProfile;Z)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_149
    return-void

    :cond_14a
    :try_start_14a
    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->aC(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/twidroid/ac$2$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/ac$2$1$1;-><init>(Lcom/twidroid/ac$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->aD(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->w()V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_16d} :catch_dc

    goto :goto_149
.end method
