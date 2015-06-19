.class  Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->b:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iput-object p2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->a:Landroid/view/View;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->b:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-virtual {v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getWidth()I
move-result v1
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->a:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getWidth()I
move-result v2
sub-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->b:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->smoothScrollTo(II)V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->b:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
const/4 v1, 0x0
iput-object v1, v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;->b:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
:cond_2a
return-void
.end method