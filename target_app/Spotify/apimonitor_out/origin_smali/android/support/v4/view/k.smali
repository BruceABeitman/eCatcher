.class final Landroid/support/v4/view/k;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ActionBarTabStrip;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ActionBarTabStrip;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/ActionBarTabStrip;

    invoke-virtual {p1}, Landroid/support/v4/view/ActionBarTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Landroid/support/v4/view/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iput p1, p0, Landroid/support/v4/view/k;->b:I

    iget-object v0, p0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/ActionBarTabStrip;

    invoke-static {v0}, Landroid/support/v4/view/ActionBarTabStrip;->a(Landroid/support/v4/view/ActionBarTabStrip;)Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/k;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final isFocused()Z
    .registers 3

    iget v0, p0, Landroid/support/v4/view/k;->b:I

    iget-object v1, p0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/ActionBarTabStrip;

    invoke-static {v1}, Landroid/support/v4/view/ActionBarTabStrip;->c(Landroid/support/v4/view/ActionBarTabStrip;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/ActionBarTabStrip;

    invoke-static {v0}, Landroid/support/v4/view/ActionBarTabStrip;->b(Landroid/support/v4/view/ActionBarTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/view/k;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    return-void
.end method
