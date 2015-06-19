.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(Landroid/view/View;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .registers 3

    const/high16 v0, 0x3f80

    return v0
.end method

.method getFrameTime()J
    .registers 3

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x2

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 13

    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v1

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resolveSizeAndState(III)I
    .registers 5

    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
