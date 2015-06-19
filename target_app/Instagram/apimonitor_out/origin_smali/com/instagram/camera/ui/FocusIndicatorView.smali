.class public Lcom/instagram/camera/ui/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/instagram/camera/ui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/camera/ui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    sget v0, Lcom/facebook/au;->ic_focus_focusing:I

    invoke-direct {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setDrawable(I)V

    return-void
.end method

.method public final b()V
    .registers 2

    sget v0, Lcom/facebook/au;->ic_focus_focused:I

    invoke-direct {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setDrawable(I)V

    return-void
.end method

.method public final c()V
    .registers 2

    sget v0, Lcom/facebook/au;->ic_focus_failed:I

    invoke-direct {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setDrawable(I)V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
