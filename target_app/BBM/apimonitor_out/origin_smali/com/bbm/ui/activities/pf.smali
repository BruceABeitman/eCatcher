.class final Lcom/bbm/ui/activities/pf;
.super Ljava/lang/Object;
.source "GroupListsCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/pf;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bbm/ui/activities/pf;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/SendEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/SendEditText;->length()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1d

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1d

    iget-object v1, p0, Lcom/bbm/ui/activities/pf;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->d(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
