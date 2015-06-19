.class final Lcom/bbm/ui/activities/pg;
.super Ljava/lang/Object;
.source "GroupListsCommentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/pg;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/pg;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/EmoticonInputPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/pg;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/SendEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->setVisibility(I)V

    return-void
.end method
