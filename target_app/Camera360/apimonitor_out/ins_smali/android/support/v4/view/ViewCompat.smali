.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"
.field private static final FAKE_FRAME_TIME:J = 0xaL
.field static final IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl; = null
.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0
.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2
.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1
.field public static final LAYER_TYPE_HARDWARE:I = 0x2
.field public static final LAYER_TYPE_NONE:I = 0x0
.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
.field public static final OVER_SCROLL_ALWAYS:I = 0x0
.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
.field public static final OVER_SCROLL_NEVER:I = 0x2
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0x10
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
goto :goto_d
:cond_1a
const/16 v1, 0xe
if-lt v0, v1, :cond_26
new-instance v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
goto :goto_d
:cond_26
const/16 v1, 0xb
if-lt v0, v1, :cond_32
new-instance v1, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
goto :goto_d
:cond_32
const/16 v1, 0x9
if-lt v0, v1, :cond_3e
new-instance v1, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
goto :goto_d
:cond_3e
new-instance v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
goto :goto_d
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static canScrollHorizontally(Landroid/view/View;I)Z
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollHorizontally(Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public static canScrollVertically(Landroid/view/View;I)Z
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollVertically(Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
move-result-object v0
return-object v0
.end method
.method public static getImportantForAccessibility(Landroid/view/View;)I
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getImportantForAccessibility(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public static getLabelFor(Landroid/view/View;)I
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLabelFor(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public static getLayerType(Landroid/view/View;)I
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLayerType(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public static getOverScrollMode(Landroid/view/View;)I
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getOverScrollMode(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public static hasTransientState(Landroid/view/View;)Z
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasTransientState(Landroid/view/View;)Z
move-result v0
return v0
.end method
.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
return-void
.end method
.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 4
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public static postInvalidateOnAnimation(Landroid/view/View;)V
.registers 2
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;)V
return-void
.end method
.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
.registers 11
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V
return-void
.end method
.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
return-void
.end method
.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
.registers 5
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
return-void
.end method
.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
return-void
.end method
.method public static setHasTransientState(Landroid/view/View;Z)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setHasTransientState(Landroid/view/View;Z)V
return-void
.end method
.method public static setImportantForAccessibility(Landroid/view/View;I)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setImportantForAccessibility(Landroid/view/View;I)V
return-void
.end method
.method public static setLabelFor(Landroid/view/View;I)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLabelFor(Landroid/view/View;I)V
return-void
.end method
.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
.registers 4
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
return-void
.end method
.method public static setOverScrollMode(Landroid/view/View;I)V
.registers 3
sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setOverScrollMode(Landroid/view/View;I)V
return-void
.end method