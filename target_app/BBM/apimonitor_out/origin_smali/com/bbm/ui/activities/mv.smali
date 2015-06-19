.class final Lcom/bbm/ui/activities/mv;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/mv;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_11

    const/16 v1, 0x42

    if-ne p2, v1, :cond_11

    iget-object v1, p0, Lcom/bbm/ui/activities/mv;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->b()V

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
