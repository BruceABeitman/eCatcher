.class final Lcom/bbm/ui/activities/rd;
.super Ljava/lang/Object;
.source "GroupPictureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/rd;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/rg;

    iget-object v0, v0, Lcom/bbm/ui/activities/rg;->a:Lcom/bbm/g/af;

    iget-object v2, v0, Lcom/bbm/g/af;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/rd;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    sget-object v1, Lcom/bbm/ui/activities/rf;->b:Lcom/bbm/ui/activities/rf;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->a(Lcom/bbm/ui/activities/rf;)Lcom/bbm/ui/gp;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v1, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/rg;

    iget-object v0, v0, Lcom/bbm/ui/activities/rg;->a:Lcom/bbm/g/af;

    iget-object v0, v0, Lcom/bbm/g/af;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    :goto_30
    iget-object v0, p0, Lcom/bbm/ui/activities/rd;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    sget-object v3, Lcom/bbm/ui/activities/rf;->b:Lcom/bbm/ui/activities/rf;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/GroupPictureActivity;->a(Lcom/bbm/ui/activities/rf;)Lcom/bbm/ui/gp;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/bbm/ui/activities/rd;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    const-class v5, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "groupUri"

    iget-object v5, p0, Lcom/bbm/ui/activities/rd;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "pictureUri"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pictureIndex"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "pictureGroupSize"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/rd;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/GroupPictureActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_69
    const/4 v1, -0x1

    goto :goto_30
.end method
