.class final Lit/sephiroth/android/library/widget/f;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .registers 7

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v2, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->r()I

    move-result v0

    if-ne v1, v0, :cond_57

    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->e(Z)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    :goto_36
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->f(Z)V

    :cond_46
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->g(Z)V

    goto :goto_17

    :cond_57
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    goto :goto_36
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eq v3, v6, :cond_1d

    if-nez v0, :cond_1f

    :cond_1d
    move v0, v2

    goto :goto_a

    :cond_1f
    iget-object v4, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2d
    move v0, v2

    goto :goto_a

    :cond_2f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)J

    move-result-wide v4

    sparse-switch p2, :sswitch_data_7e

    move v0, v2

    goto :goto_a

    :sswitch_3a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->r()I

    move-result v0

    if-ne v0, v3, :cond_49

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->f(I)V

    move v0, v1

    goto :goto_a

    :cond_49
    move v0, v2

    goto :goto_a

    :sswitch_4b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->r()I

    move-result v0

    if-eq v0, v3, :cond_5a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->f(I)V

    move v0, v1

    goto :goto_a

    :cond_5a
    move v0, v2

    goto :goto_a

    :sswitch_5c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_a

    :cond_6b
    move v0, v2

    goto :goto_a

    :sswitch_6d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_a

    :cond_7c
    move v0, v2

    goto :goto_a

    :sswitch_data_7e
    .sparse-switch
        0x4 -> :sswitch_4b
        0x8 -> :sswitch_3a
        0x10 -> :sswitch_5c
        0x20 -> :sswitch_6d
    .end sparse-switch
.end method
