.class final Lcom/bbm/h/j;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/b/a;

.field final synthetic b:Lcom/bbm/h/a;


# direct methods
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/j;->b:Lcom/bbm/h/a;

    iput-object p2, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/h/j;->b:Lcom/bbm/h/a;

    invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sponsored_ad_id"

    iget-object v2, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    iget-object v2, v2, Lcom/bbm/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sponsored_ad_subtype"

    iget-object v2, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    iget-object v2, v2, Lcom/bbm/b/a;->r:Lcom/bbm/b/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sponsored_ad_type"

    iget-object v2, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    iget-object v2, v2, Lcom/bbm/b/a;->s:Lcom/bbm/b/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sponsored_ad_has_interstitial"

    iget-object v2, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    invoke-static {v2}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/bbm/ui/activities/ahw;->b:Lcom/bbm/ui/activities/ahw;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ahw;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/bbm/h/j;->b:Lcom/bbm/h/a;

    invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/h/j;->b:Lcom/bbm/h/a;

    invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040001

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object v0, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    iget-object v1, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    iget-object v1, v1, Lcom/bbm/b/a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/h/j;->a:Lcom/bbm/b/a;

    iget-boolean v2, v2, Lcom/bbm/b/a;->n:Z

    invoke-static {v0, v1, v2}, Lcom/bbm/b/e;->a(Lcom/bbm/b/aj;Ljava/lang/String;Z)V

    return-void
.end method
