.class final Landroid/support/v4/widget/ab;
.super Landroid/support/v4/widget/z;
.source "SlidingPaneLayout.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/v;

    iget-object v0, v0, Landroid/support/v4/widget/v;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/as;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method
