.class final Landroid/support/v4/view/a/m$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/m;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/n;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/n;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/a/m$1;->a:Landroid/support/v4/view/a/n;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/a/m$1;->a:Landroid/support/v4/view/a/n;

    invoke-interface {v0}, Landroid/support/v4/view/a/n;->c()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/view/a/m$1;->a:Landroid/support/v4/view/a/n;

    invoke-interface {v0}, Landroid/support/v4/view/a/n;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/a/m$1;->a:Landroid/support/v4/view/a/n;

    invoke-interface {v0}, Landroid/support/v4/view/a/n;->a()Z

    move-result v0

    return v0
.end method
