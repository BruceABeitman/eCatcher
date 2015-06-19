.class Landroid/support/v4/view/ap;
.super Landroid/support/v4/view/ao;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 4

    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/View;I)Z
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
