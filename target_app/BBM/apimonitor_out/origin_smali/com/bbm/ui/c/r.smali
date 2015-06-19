.class final Lcom/bbm/ui/c/r;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/r;->a:Lcom/bbm/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/r;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_40

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/bbm/ui/e;

    invoke-direct {v2, v0, v1}, Lcom/bbm/ui/e;-><init>(Landroid/view/View;I)V

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e0183

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_3f
    return-void

    :cond_40
    invoke-static {v0, v3}, Lcom/bbm/ui/d;->a(Landroid/view/View;I)V

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e018b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3f
.end method
