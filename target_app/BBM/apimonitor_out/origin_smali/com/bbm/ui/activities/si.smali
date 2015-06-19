.class final Lcom/bbm/ui/activities/si;
.super Ljava/lang/Object;
.source "GroupPictureShareActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureShareActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureShareActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/si;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/si;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;

    const-class v2, Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/si;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->a(Lcom/bbm/ui/activities/GroupPictureShareActivity;)Lcom/bbm/ui/activities/sk;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/bbm/ui/activities/sk;->a(I)Lcom/bbm/g/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "picturePath"

    iget-object v2, p0, Lcom/bbm/ui/activities/si;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->b(Lcom/bbm/ui/activities/GroupPictureShareActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/si;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/si;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->finish()V

    return-void
.end method
