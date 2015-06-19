.class final Lcom/bbm/ui/e/bv;
.super Ljava/lang/Object;
.source "SharedAdHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bt;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bt;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/bv;->a:Lcom/bbm/ui/e/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/bbm/ui/LinkifyTextView;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    if-nez v0, :cond_11

    check-cast p1, Lcom/bbm/ui/LinkifyTextView;

    invoke-virtual {p1, v1}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V

    :cond_11
    return v1
.end method
