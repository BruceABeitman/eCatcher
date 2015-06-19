.class final Lcom/bbm/ui/activities/lx;
.super Ljava/lang/Object;
.source "GroupChatListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatListActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/ef;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/q;

    iget-boolean v0, v0, Lcom/bbm/g/q;->a:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-static {v0, p3}, Lcom/bbm/ui/activities/GroupChatListActivity;->a(Lcom/bbm/ui/activities/GroupChatListActivity;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/lx;->a:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->o()V

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
