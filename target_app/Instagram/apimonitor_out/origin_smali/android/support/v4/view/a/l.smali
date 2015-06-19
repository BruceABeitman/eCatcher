.class final Landroid/support/v4/view/a/l;
.super Landroid/support/v4/view/a/p;
.source "AccessibilityNodeProviderCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/a/j;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/support/v4/view/a/m;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/a/m;-><init>(Landroid/support/v4/view/a/l;Landroid/support/v4/view/a/j;)V

    invoke-static {v0}, Landroid/support/v4/view/a/q;->a(Landroid/support/v4/view/a/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
