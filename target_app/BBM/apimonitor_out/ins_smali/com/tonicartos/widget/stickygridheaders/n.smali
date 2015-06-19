.class  Lcom/tonicartos/widget/stickygridheaders/n;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"
.field private a:I
.field final synthetic c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
.registers 2
iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/n;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/n;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/n;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
move-result v0
iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/n;->a:I
return-void
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/n;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->hasWindowFocus()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/n;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
move-result v0
iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/n;->a:I
if-ne v0, v1, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method