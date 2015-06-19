.class final Lcom/handmark/pulltorefresh/library/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.field private final b:Landroid/view/animation/Interpolator;
.field private final c:I
.field private final d:I
.field private final e:J
.field private f:Lcom/handmark/pulltorefresh/library/l;
.field private g:Z
.field private h:J
.field private i:I
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/l;)V
.registers 9
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/n;->g:Z
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/n;->h:J
const/4 v0, -0x1
iput v0, p0, Lcom/handmark/pulltorefresh/library/n;->i:I
iput p2, p0, Lcom/handmark/pulltorefresh/library/n;->d:I
iput p3, p0, Lcom/handmark/pulltorefresh/library/n;->c:I
invoke-static {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->b:Landroid/view/animation/Interpolator;
iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/n;->e:J
iput-object p6, p0, Lcom/handmark/pulltorefresh/library/n;->f:Lcom/handmark/pulltorefresh/library/l;
return-void
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/n;->g:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method public run()V
.registers 7
const-wide/16 v4, 0x3e8
iget-wide v0, p0, Lcom/handmark/pulltorefresh/library/n;->h:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_20
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/n;->h:J
:goto_10
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/n;->g:Z
if-eqz v0, :cond_58
iget v0, p0, Lcom/handmark/pulltorefresh/library/n;->c:I
iget v1, p0, Lcom/handmark/pulltorefresh/library/n;->i:I
if-eq v0, v1, :cond_58
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-static {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
:cond_1f
:goto_1f
return-void
:cond_20
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/n;->h:J
sub-long/2addr v0, v2
mul-long/2addr v0, v4
iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/n;->e:J
div-long/2addr v0, v2
invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
const-wide/16 v2, 0x0
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
iget v2, p0, Lcom/handmark/pulltorefresh/library/n;->d:I
iget v3, p0, Lcom/handmark/pulltorefresh/library/n;->c:I
sub-int/2addr v2, v3
int-to-float v2, v2
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/n;->b:Landroid/view/animation/Interpolator;
long-to-float v0, v0
const/high16 v1, 0x447a
div-float/2addr v0, v1
invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v0
mul-float/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iget v1, p0, Lcom/handmark/pulltorefresh/library/n;->d:I
sub-int v0, v1, v0
iput v0, p0, Lcom/handmark/pulltorefresh/library/n;->i:I
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
iget v1, p0, Lcom/handmark/pulltorefresh/library/n;->i:I
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V
goto :goto_10
:cond_58
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->f:Lcom/handmark/pulltorefresh/library/l;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->f:Lcom/handmark/pulltorefresh/library/l;
invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/l;->a()V
goto :goto_1f
.end method