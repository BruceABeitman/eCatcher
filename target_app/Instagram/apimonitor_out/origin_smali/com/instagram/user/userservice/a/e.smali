.class public final Lcom/instagram/user/userservice/a/e;
.super Landroid/content/BroadcastReceiver;
.source "AutoCompleteUserServiceHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    if-eq v0, v2, :cond_53

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    if-eq v0, v2, :cond_3c

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-eq v0, v2, :cond_3c

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne v0, v2, :cond_53

    :cond_3c
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-ne v2, v3, :cond_54

    new-instance v0, Lcom/instagram/user/userservice/a/f;

    invoke-direct {v0, p0, v1}, Lcom/instagram/user/userservice/a/f;-><init>(Lcom/instagram/user/userservice/a/e;Lcom/instagram/user/c/a;)V

    :cond_4a
    :goto_4a
    if-eqz v0, :cond_53

    invoke-static {}, Lcom/instagram/user/userservice/a/d;->e()Lcom/instagram/common/u/c/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/u/c/d;->execute(Ljava/lang/Runnable;)V

    :cond_53
    return-void

    :cond_54
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne v2, v3, :cond_4a

    new-instance v0, Lcom/instagram/user/userservice/a/g;

    invoke-direct {v0, p0, v1}, Lcom/instagram/user/userservice/a/g;-><init>(Lcom/instagram/user/userservice/a/e;Lcom/instagram/user/c/a;)V

    goto :goto_4a
.end method
