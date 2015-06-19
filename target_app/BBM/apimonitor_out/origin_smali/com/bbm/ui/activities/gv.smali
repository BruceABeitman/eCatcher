.class final Lcom/bbm/ui/activities/gv;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/16 v3, 0x42

    const/4 v0, 0x1

    const-string v1, "mOnKeyListener onKey"

    const-class v2, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_27

    if-ne p2, v3, :cond_27

    iget-object v1, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/gv;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->b()V

    :cond_26
    :goto_26
    return v0

    :cond_27
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2f

    if-eq p2, v3, :cond_26

    :cond_2f
    const/4 v0, 0x0

    goto :goto_26
.end method
