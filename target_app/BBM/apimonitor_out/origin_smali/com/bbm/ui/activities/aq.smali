.class final Lcom/bbm/ui/activities/aq;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aq;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "mListOnItemClickListener onItemClick"

    const-class v1, Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aq;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->d(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/activities/aw;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/aw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/er;

    iget-object v0, v0, Lcom/bbm/d/er;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/aq;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aq;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->e(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aq;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aq;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->f(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    return-void
.end method
