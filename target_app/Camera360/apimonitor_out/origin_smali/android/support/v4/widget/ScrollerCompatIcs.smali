.class Landroid/support/v4/widget/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/Scroller;)F
    .registers 2

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
