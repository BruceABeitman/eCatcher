.class final Lcom/bbm/ui/a/b;
.super Ljava/lang/Object;
.source "ChannelPostAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const-string v0, "long click on channel post"

    const-class v1, Lcom/bbm/ui/a/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->b(Lcom/bbm/ui/a/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v1}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2d
    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->b(Lcom/bbm/ui/a/a;)Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/bbm/ui/LinkifyTextView;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->b(Lcom/bbm/ui/a/a;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->b(Lcom/bbm/ui/a/a;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V

    :cond_4e
    iget-object v1, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-virtual {v0, p3}, Lcom/bbm/ui/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ek;

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;Lcom/bbm/d/ek;)Lcom/bbm/d/ek;

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    iget-object v1, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;Lcom/bbm/ui/c/fm;)V

    iget-object v0, p0, Lcom/bbm/ui/a/b;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/cn;->o()V

    return v3
.end method
