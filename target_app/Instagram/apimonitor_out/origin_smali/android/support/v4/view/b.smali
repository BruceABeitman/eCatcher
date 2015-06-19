.class Landroid/support/v4/view/b;
.super Landroid/support/v4/view/g;
.source "AccessibilityDelegateCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroid/support/v4/view/h;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/view/a;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/c;-><init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V

    invoke-static {v0}, Landroid/support/v4/view/h;->a(Landroid/support/v4/view/j;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .registers 5

    invoke-virtual {p3}, Landroid/support/v4/view/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/h;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/h;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
