.class final Lcom/handmark/pulltorefresh/library/w;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/w;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/w;->getChildCount()I

    move-result v1

    if-lez v1, :cond_22

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/w;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/w;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/w;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/w;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_22
    return v0
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 18

    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v7

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/w;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/w;->a()I

    move-result v5

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V

    return v7
.end method
