.class final Lcom/bbm/ui/activities/ym;
.super Ljava/lang/Object;
.source "NewChannelCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    const-class v2, Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_9
    const-string v2, "subcategory"

    iget-object v0, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v0

    if-gez v0, :cond_2f

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "category"

    iget-object v2, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    const/16 v2, 0x2bc

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_36

    :goto_29
    iget-object v0, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->finish()V

    return-void

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/bbm/ui/activities/ym;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_36

    move-result v0

    goto :goto_14

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_29
.end method
