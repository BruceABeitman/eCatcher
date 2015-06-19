.class final Lcom/instagram/a/g;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/a/g;->a:Lcom/instagram/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ActionBarService.action_bar_back_click"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    return-void
.end method
