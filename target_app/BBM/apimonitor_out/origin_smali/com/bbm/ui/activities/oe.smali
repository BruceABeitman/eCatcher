.class final Lcom/bbm/ui/activities/oe;
.super Lcom/bbm/j/k;
.source "GroupListItemsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/g/am;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_26

    :goto_25
    return-void

    :cond_26
    iget-object v1, v0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_31

    iget-object v1, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->finish()V

    :cond_31
    iget-object v1, p0, Lcom/bbm/ui/activities/oe;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->g(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method
