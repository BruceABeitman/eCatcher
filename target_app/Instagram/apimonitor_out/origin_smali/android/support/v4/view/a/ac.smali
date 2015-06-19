.class final Landroid/support/v4/view/a/ac;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method public static a()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)V
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Z)V
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    return-void
.end method

.method public static b(Ljava/lang/Object;I)V
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    return-void
.end method

.method public static c(Ljava/lang/Object;I)V
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void
.end method
