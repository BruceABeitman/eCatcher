.class final Lcom/bbm/ui/activities/acg;
.super Ljava/lang/Object;
.source "ProfileDefaultIconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileDefaultIconActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/acg;->a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

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

    iget-object v0, p0, Lcom/bbm/ui/activities/acg;->a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileDefaultIconActivity;->a(Lcom/bbm/ui/activities/ProfileDefaultIconActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "file"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/acg;->a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/ProfileDefaultIconActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acg;->a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileDefaultIconActivity;->finish()V

    return-void
.end method
