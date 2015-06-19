.class final Lcom/bbm/ui/a/p;
.super Ljava/lang/Object;
.source "ChannelPostCommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/q;

.field final synthetic b:Lcom/bbm/ui/a/k;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/k;Lcom/bbm/ui/a/q;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    iput-object p2, p0, Lcom/bbm/ui/a/p;->a:Lcom/bbm/ui/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "showHideReplyButtonListener Clicked"

    const-class v1, Lcom/bbm/ui/a/k;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    invoke-static {v0}, Lcom/bbm/ui/a/k;->c(Lcom/bbm/ui/a/k;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    invoke-static {v0}, Lcom/bbm/ui/a/k;->d(Lcom/bbm/ui/a/k;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0, v2}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/bbm/ui/a/p;->a:Lcom/bbm/ui/a/q;

    iget-object v0, v0, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/a/p;->a:Lcom/bbm/ui/a/q;

    iget-object v0, v0, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    invoke-virtual {v0}, Lcom/bbm/ui/a/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    invoke-virtual {v0}, Lcom/bbm/ui/a/k;->d()V

    iget-object v0, p0, Lcom/bbm/ui/a/p;->a:Lcom/bbm/ui/a/q;

    iget-object v0, v0, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    iget-object v1, p0, Lcom/bbm/ui/a/p;->a:Lcom/bbm/ui/a/q;

    iget-object v1, v1, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/a/p;->b:Lcom/bbm/ui/a/k;

    invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Z)V

    goto :goto_36
.end method
