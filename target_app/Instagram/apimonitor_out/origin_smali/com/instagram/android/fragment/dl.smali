.class public final Lcom/instagram/android/fragment/dl;
.super Lcom/instagram/base/a/b;
.source "PreloadOptionsFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->fragment_preload_options:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    sget v0, Lcom/facebook/av;->preload_options_radiogroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    sget v1, Lcom/facebook/av;->preload_options_always:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    sget v2, Lcom/facebook/av;->preload_options_wifi:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v4

    invoke-static {}, Lcom/instagram/creation/c/a;->c()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-nez v3, :cond_7c

    const/4 v3, 0x1

    :goto_26
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v2, Lcom/instagram/android/fragment/dm;

    invoke-direct {v2, p0, v4, v1}, Lcom/instagram/android/fragment/dm;-><init>(Lcom/instagram/android/fragment/dl;Lcom/instagram/k/b/a;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget v0, Lcom/facebook/av;->sound_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Lcom/instagram/k/b/a;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, Lcom/instagram/android/fragment/dn;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/fragment/dn;-><init>(Lcom/instagram/android/fragment/dl;Lcom/instagram/k/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v1, Lcom/facebook/av;->sound_row:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/do;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/fragment/do;-><init>(Lcom/instagram/android/fragment/dl;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->video_save_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Lcom/instagram/k/b/a;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, Lcom/instagram/android/fragment/dp;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/fragment/dp;-><init>(Lcom/instagram/android/fragment/dl;Lcom/instagram/k/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v1, Lcom/facebook/av;->video_storage_row:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/dq;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/fragment/dq;-><init>(Lcom/instagram/android/fragment/dl;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7c
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 3

    sget v0, Lcom/facebook/az;->videos:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "preload_options"

    return-object v0
.end method
