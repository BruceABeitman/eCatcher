.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
.super Landroid/support/v4/widget/ScrollerCompat;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplIcs"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCurrVelocity()F
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompatIcs;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    return v0
.end method
