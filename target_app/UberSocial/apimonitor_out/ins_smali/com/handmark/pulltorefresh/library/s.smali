.class final Lcom/handmark/pulltorefresh/library/s;
.super Lcom/handmark/pulltorefresh/library/r;
.source "SourceFile"
.field final synthetic b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/s;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/r;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected overScrollBy(IIIIIIIIZ)Z
.registers 17
invoke-super/range {p0 .. p9}, Lcom/handmark/pulltorefresh/library/r;->overScrollBy(IIIIIIIIZ)Z
move-result v6
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/s;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move v1, p1
move v2, p3
move v3, p2
move v4, p4
move/from16 v5, p9
invoke-static/range {v0 .. v5}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
return v6
.end method