.class final Landroid/support/v4/view/aw;
.super Ljava/lang/Object;
.source "ViewCompatICS.java"


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method
