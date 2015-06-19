.class final Lcom/bbm/ui/y;
.super Ljava/lang/Object;
.source "ChannelActionBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/bbm/ui/w;


# direct methods
.method constructor <init>(Lcom/bbm/ui/w;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    const/16 v5, 0x15

    const/16 v6, 0x13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v0, v0, Lcom/bbm/ui/w;->i:Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_94

    const/4 v0, 0x1

    move v1, v0

    :goto_11
    if-eqz p1, :cond_97

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_97

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    :goto_22
    if-eq v3, v1, :cond_93

    iget-object v0, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v0, v0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0363

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v1, v1, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v1, v1, Lcom/bbm/ui/w;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v1, v1, Lcom/bbm/ui/w;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v2, v2, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_9d

    iget-object v3, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v3, v3, Lcom/bbm/ui/w;->i:Landroid/widget/Space;

    invoke-virtual {v3, v4}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v3, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v3, v3, Lcom/bbm/ui/w;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v3, v3, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v1, v1, Lcom/bbm/ui/w;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v2, v2, Lcom/bbm/ui/w;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v2, v2, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_90
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_93
    return-void

    :cond_94
    move v1, v4

    goto/16 :goto_11

    :cond_97
    invoke-static {}, Lcom/bbm/util/fb;->h()Z

    move-result v0

    move v3, v0

    goto :goto_22

    :cond_9d
    iget-object v3, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v3, v3, Lcom/bbm/ui/w;->i:Landroid/widget/Space;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v3, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v3, v3, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v3, v3, Lcom/bbm/ui/w;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v1, v1, Lcom/bbm/ui/w;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/bbm/ui/y;->a:Lcom/bbm/ui/w;

    iget-object v1, v1, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_90
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
