.class final Lcom/bbm/ui/activities/um;
.super Ljava/lang/Object;
.source "InviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/vb;

.field final synthetic b:Lcom/bbm/ui/activities/fg;

.field final synthetic c:Lcom/bbm/ui/activities/InviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;Lcom/bbm/ui/activities/vb;Lcom/bbm/ui/activities/fg;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/um;->c:Lcom/bbm/ui/activities/InviteActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/um;->a:Lcom/bbm/ui/activities/vb;

    iput-object p3, p0, Lcom/bbm/ui/activities/um;->b:Lcom/bbm/ui/activities/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, -0x1

    const-string v0, "deleteButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/um;->a:Lcom/bbm/ui/activities/vb;

    iget-object v0, v0, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/activities/um;->c:Lcom/bbm/ui/activities/InviteActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/um;->b:Lcom/bbm/ui/activities/fg;

    iget v0, v0, Lcom/bbm/ui/activities/fg;->c:I

    if-ne v0, v3, :cond_31

    iget-object v0, p0, Lcom/bbm/ui/activities/um;->c:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->t(Lcom/bbm/ui/activities/InviteActivity;)I

    :cond_31
    iget-object v0, p0, Lcom/bbm/ui/activities/um;->c:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0, v3}, Lcom/bbm/ui/activities/InviteActivity;->b(Lcom/bbm/ui/activities/InviteActivity;I)I

    invoke-static {}, Lcom/bbm/ui/activities/InviteActivity;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/um;->b:Lcom/bbm/ui/activities/fg;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/um;->c:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->s(Lcom/bbm/ui/activities/InviteActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/um;->c:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->e(Lcom/bbm/ui/activities/InviteActivity;)V

    return-void
.end method
