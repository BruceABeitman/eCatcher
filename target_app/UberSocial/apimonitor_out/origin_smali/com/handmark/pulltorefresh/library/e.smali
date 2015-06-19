.class public final Lcom/handmark/pulltorefresh/library/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "OverscrollHelper"

.field static final b:F = 1.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
    .registers 14

    const/4 v4, 0x0

    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_96

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v0

    move p2, p4

    move p1, p3

    :goto_16
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->b()Z

    move-result v2

    if-eqz v2, :cond_84

    if-nez p8, :cond_84

    if-eqz p1, :cond_84

    add-int v2, p1, p2

    rsub-int/lit8 v3, p6, 0x0

    if-ge v2, v3, :cond_52

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-nez v0, :cond_45

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->f:Lcom/handmark/pulltorefresh/library/o;

    new-array v3, v4, [Z

    invoke-virtual {p0, v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    :cond_45
    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p7

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    :cond_4c
    :goto_4c
    return-void

    :pswitch_4d
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v0

    goto :goto_16

    :cond_52
    add-int v3, p5, p6

    if-le v2, v3, :cond_6e

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-nez v0, :cond_65

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->f:Lcom/handmark/pulltorefresh/library/o;

    new-array v3, v4, [Z

    invoke-virtual {p0, v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    :cond_65
    add-int/2addr v0, v2

    sub-int/2addr v0, p5

    int-to-float v0, v0

    mul-float/2addr v0, p7

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_4c

    :cond_6e
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, p6, :cond_7c

    sub-int v0, v2, p5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p6, :cond_4c

    :cond_7c
    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    goto :goto_4c

    :cond_84
    if-eqz p8, :cond_4c

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->f:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getState()Lcom/handmark/pulltorefresh/library/o;

    move-result-object v1

    if-ne v0, v1, :cond_4c

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    goto :goto_4c

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_4d
    .end packed-switch
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
    .registers 16

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V

    return-void
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V

    return-void
.end method

.method static a(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
