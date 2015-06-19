.class Landroid/support/v4/view/y;
.super Landroid/support/v4/view/x;
.source "KeyEventCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return-void
.end method
