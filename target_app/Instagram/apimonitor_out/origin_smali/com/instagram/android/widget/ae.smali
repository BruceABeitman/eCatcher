.class public final Lcom/instagram/android/widget/ae;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"


# direct methods
.method static synthetic a(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/instagram/android/widget/ae;->b(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .registers 4

    invoke-virtual {p2}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Lcom/instagram/android/widget/ae;->b(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    new-instance v0, Lcom/instagram/android/widget/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/widget/af;-><init>(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    invoke-virtual {p2, v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/i;)V

    return-void
.end method

.method private static b(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    if-ne p0, v0, :cond_30

    new-instance v0, Lcom/instagram/android/widget/ag;

    invoke-direct {v0, p3, p1, p2}, Lcom/instagram/android/widget/ag;-><init>(Lcom/instagram/android/feed/a/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_12
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    if-ne p0, v0, :cond_3c

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    if-ne p0, v0, :cond_3e

    :goto_1e
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_30
    new-instance v0, Lcom/instagram/android/widget/ag;

    invoke-direct {v0, p3, p1, p2}, Lcom/instagram/android/widget/ag;-><init>(Lcom/instagram/android/feed/a/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    :cond_3c
    move v0, v2

    goto :goto_17

    :cond_3e
    move v1, v2

    goto :goto_1e
.end method
