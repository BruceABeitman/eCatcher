.class final Lcom/bbm/ui/activities/zb;
.super Ljava/lang/Object;
.source "NewListActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewListActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/zb;->a:Lcom/bbm/ui/activities/NewListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x6

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/bbm/ui/activities/zb;->a:Lcom/bbm/ui/activities/NewListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewListActivity;->c(Lcom/bbm/ui/activities/NewListActivity;)V

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
