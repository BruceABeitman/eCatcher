.class Landroid/support/v4/view/a/e;
.super Landroid/support/v4/view/a/d;
.source "AccessibilityNodeInfoCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
