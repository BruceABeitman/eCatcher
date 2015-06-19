.class final Lcom/bbm/ui/activities/ox;
.super Ljava/lang/Object;
.source "GroupListsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ox;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const-string v0, "listgridview onItemLongClick"

    const-class v1, Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ox;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsActivity;->g(Lcom/bbm/ui/activities/GroupListsActivity;)Lcom/bbm/ui/activities/pa;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/pa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/w;

    if-eqz v0, :cond_4c

    iget-object v1, v0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v1, v2, :cond_4c

    iget-object v1, p0, Lcom/bbm/ui/activities/ox;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/ox;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    iget-object v4, v0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-direct {v3, v7, v4, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/bbm/ui/slidingmenu/a;

    const v5, 0x7f020268

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e02ea

    invoke-virtual {v1, v6}, Lcom/bbm/ui/activities/GroupListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v3, v4}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v3, Lcom/bbm/ui/activities/oz;

    invoke-direct {v3, v1, v0}, Lcom/bbm/ui/activities/oz;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;Lcom/bbm/g/w;)V

    invoke-virtual {v2, v3}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ox;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListsActivity;->o()V

    :cond_4c
    const/4 v0, 0x1

    return v0
.end method
