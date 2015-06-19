.class final Lcom/bbm/ui/activities/aem;
.super Ljava/lang/Object;
.source "SelectContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const-string v0, "mHeaderActionBar PositiveButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->f(Lcom/bbm/ui/activities/SelectContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "group_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "group_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->p(Lcom/bbm/ui/activities/SelectContactActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->finish()V

    :goto_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->q(Lcom/bbm/ui/activities/SelectContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "channel_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    const v2, 0x7f0a019d

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bbm/h/aq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->p(Lcom/bbm/ui/activities/SelectContactActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->finish()V

    goto :goto_44

    :cond_89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.bbm.selectedcontacts"

    iget-object v2, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->r(Lcom/bbm/ui/activities/SelectContactActivity;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b0

    const-string v1, "com.bbm.selectedcategoryid"

    iget-object v2, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->r(Lcom/bbm/ui/activities/SelectContactActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_b0
    iget-object v1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->e(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    const-string v1, "com.bbm.resultadid"

    iget-object v2, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->e(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c7
    iget-object v1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->d(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_da

    const-string v1, "com.bbm.selectcontact.bundle.passthrough"

    iget-object v2, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->d(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_da
    iget-object v1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_e9
    iget-object v1, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aem;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->finish()V

    goto/16 :goto_44
.end method
