.class public Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/internal/widget/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setActionModeForChildListener(Landroid/support/v7/internal/widget/ac;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a:Landroid/support/v7/internal/widget/ac;

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a:Landroid/support/v7/internal/widget/ac;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a:Landroid/support/v7/internal/widget/ac;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/ac;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p2

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
