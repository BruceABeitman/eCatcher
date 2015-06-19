.class final Lcom/tonicartos/widget/stickygridheaders/g;
.super Lcom/tonicartos/widget/stickygridheaders/n;
.source "StickyGridHeadersGridView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
.registers 3
iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/n;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V
return-void
.end method
.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/g;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
return-void
.end method
.method public final run()V
.registers 8
const/4 v6, 0x2
const/4 v1, 0x0
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget v2, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I
invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_49
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I
invoke-static {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J
move-result-wide v3
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/g;->b()Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->g:Z
if-nez v0, :cond_51
iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v0, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Lcom/tonicartos/widget/stickygridheaders/j;
if-eqz v0, :cond_4f
iget-object v0, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Lcom/tonicartos/widget/stickygridheaders/j;
invoke-interface {v0, v3, v4}, Lcom/tonicartos/widget/stickygridheaders/j;->a(J)Z
move-result v0
:goto_30
if-eqz v0, :cond_3a
if-eqz v2, :cond_37
invoke-virtual {v2, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V
:cond_37
invoke-virtual {v5, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->performHapticFeedback(I)Z
:goto_3a
:cond_3a
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
const/4 v3, -0x2
iput v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V
invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V
:goto_49
:cond_49
return-void
:cond_4a
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/g;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iput v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I
goto :goto_49
:cond_4f
move v0, v1
goto :goto_30
:cond_51
move v0, v1
goto :goto_3a
.end method