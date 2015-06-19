.class final Lcom/bbm/ui/activities/ajk;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ajk;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const-string v0, "mOnKeyListener onKey"

    const-class v1, Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2f

    iget-object v0, p0, Lcom/bbm/ui/activities/ajk;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/bbm/ui/activities/ajk;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/lang/String;)V

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method
