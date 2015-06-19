.class public Landroid/support/v7/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/r;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Landroid/view/LayoutInflater;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    sget-object v0, Landroid/support/v7/a/k;->l:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->h:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->j:Z

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private d()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->m:Landroid/view/LayoutInflater;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->m:Landroid/view/LayoutInflater;

    :cond_c
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->m:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/support/v7/internal/view/menu/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    return-object v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/r;)V
    .registers 8

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    iput v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->k:I

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_106

    move v0, v1

    :goto_e
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/support/v7/internal/view/menu/ad;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_109

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_29
    :goto_29
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-eqz v0, :cond_7e

    :cond_37
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->f()Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_56

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/a/h;->n:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    :cond_56
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    move-object v4, v3

    move-object v3, v0

    :goto_5c
    if-eqz v5, :cond_13a

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->isChecked()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v5, :cond_137

    move v0, v1

    :goto_6a
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v5

    if-eq v5, v0, :cond_73

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_73
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_7e

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_7e
    :goto_7e
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->e()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->c()C

    if-eqz v0, :cond_14e

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->e()Z

    move-result v0

    if-eqz v0, :cond_14e

    move v0, v1

    :goto_90
    if-nez v0, :cond_9d

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9d
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_aa

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_aa
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->g()Z

    move-result v0

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->n:Z

    if-eqz v0, :cond_151

    :cond_ba
    const/4 v0, 0x1

    move v4, v0

    :goto_bc
    if-nez v4, :cond_c2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->j:Z

    if-eqz v0, :cond_fe

    :cond_c2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_cc

    if-nez v3, :cond_cc

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->j:Z

    if-eqz v0, :cond_fe

    :cond_cc
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_e3

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Landroid/support/v7/a/h;->l:I

    invoke-virtual {v0, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    :cond_e3
    if-nez v3, :cond_e9

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->j:Z

    if-eqz v0, :cond_156

    :cond_e9
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v4, :cond_154

    move-object v0, v3

    :goto_ee
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_fe
    :goto_fe
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    return-void

    :cond_106
    move v0, v2

    goto/16 :goto_e

    :cond_109
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_29

    :cond_118
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_12f

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/a/h;->k:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    :cond_12f
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_5c

    :cond_137
    move v0, v2

    goto/16 :goto_6a

    :cond_13a
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-eqz v0, :cond_143

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_7e

    :cond_14e
    move v0, v2

    goto/16 :goto_90

    :cond_151
    move v4, v1

    goto/16 :goto_bc

    :cond_154
    const/4 v0, 0x0

    goto :goto_ee

    :cond_156
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_fe
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->n:Z

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->j:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/support/v7/a/f;->E:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->i:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_20
    sget v0, Landroid/support/v7/a/f;->B:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->j:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_20

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
