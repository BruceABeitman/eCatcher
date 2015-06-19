.class final Lcom/bbm/setup/t;
.super Lcom/bbm/j/k;
.source "SetupActivityLifeCycleListener.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/s;


# direct methods
.method constructor <init>(Lcom/bbm/setup/s;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/t;->a:Lcom/bbm/setup/s;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/setup/t;->a:Lcom/bbm/setup/s;

    invoke-static {v0}, Lcom/bbm/setup/s;->a(Lcom/bbm/setup/s;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bbm/s;

    const-string v1, "SALCL monitor running"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/bbm/s;->t()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/bbm/setup/t;->a:Lcom/bbm/setup/s;

    invoke-static {v0}, Lcom/bbm/setup/s;->a(Lcom/bbm/setup/s;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    sget-object v1, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    invoke-virtual {v1}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;

    invoke-static {v0, v1}, Lcom/bbm/setup/r;->a(Landroid/content/Context;Lcom/bbm/setup/ah;)Lcom/google/b/a/l;

    move-result-object v0

    const-string v1, "SALCL shouldOpenSetupActivity"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "SALCL Triggering setup from SetupActivityLifeCycleListener"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/setup/t;->a:Lcom/bbm/setup/s;

    invoke-static {v1}, Lcom/bbm/setup/s;->b(Lcom/bbm/setup/s;)Z

    iget-object v1, p0, Lcom/bbm/setup/t;->a:Lcom/bbm/setup/s;

    invoke-static {v1}, Lcom/bbm/setup/s;->a(Lcom/bbm/setup/s;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xffd

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/bbm/setup/t;->a:Lcom/bbm/setup/s;

    invoke-static {v0}, Lcom/bbm/setup/s;->a(Lcom/bbm/setup/s;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040003

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_6a
    return-void
.end method
