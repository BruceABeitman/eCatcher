.class final Lcom/bbm/setup/n;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/LoadingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/n;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/setup/n;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->g(Lcom/bbm/setup/LoadingActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/setup/n;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->q(Lcom/bbm/setup/LoadingActivity;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bbm/setup/n;->a:Lcom/bbm/setup/LoadingActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/LoadingActivity;->finish()V

    return-void
.end method
