.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
.super Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 3

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatIcs;->getCurrVelocity(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method
