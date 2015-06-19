.class final Lcom/bbm/ui/e/bu;
.super Ljava/lang/Object;
.source "SharedAdHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bt;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bt;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/bu;->a:Lcom/bbm/ui/e/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/e/bu;->a:Lcom/bbm/ui/e/bt;

    invoke-static {v0}, Lcom/bbm/ui/e/bt;->a(Lcom/bbm/ui/e/bt;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/e/bu;->a:Lcom/bbm/ui/e/bt;

    invoke-static {v0}, Lcom/bbm/ui/e/bt;->b(Lcom/bbm/ui/e/bt;)V

    :cond_d
    instance-of v0, p1, Lcom/bbm/ui/LinkifyTextView;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    if-nez v0, :cond_1e

    check-cast p1, Lcom/bbm/ui/LinkifyTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V

    :cond_1e
    return-void
.end method
