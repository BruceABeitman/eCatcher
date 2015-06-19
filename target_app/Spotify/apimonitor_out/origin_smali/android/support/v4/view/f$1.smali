.class final Landroid/support/v4/view/f$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/f;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/g;


# direct methods
.method constructor <init>(Landroid/support/v4/view/g;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/g;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/g;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/g;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/g;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/g;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/g;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/f$1;->a:Landroid/support/v4/view/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/g;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
