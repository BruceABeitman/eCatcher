.class  Landroid/support/v4/view/accessibility/AccessibilityEventCompatIcs;
.super Ljava/lang/Object;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/view/accessibility/AccessibilityRecord;
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
return-void
.end method
.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
move-result-object v0
return-object v0
.end method
.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
.registers 2
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I
move-result v0
return v0
.end method