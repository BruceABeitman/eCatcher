.class  Lcom/tencent/open/TaskGuide$4;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/tencent/open/TaskGuide;
.method constructor <init>(Lcom/tencent/open/TaskGuide;I)V
.registers 3
iput-object p1, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
iput p2, p0, Lcom/tencent/open/TaskGuide$4;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v3, 0x2
const/4 v2, 0x1
iget-object v0, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;)Z
move-result v0
if-eqz v0, :cond_23
iget v0, p0, Lcom/tencent/open/TaskGuide$4;->a:I
if-nez v0, :cond_24
iget-object v0, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tencent/open/TaskGuide$h;
iget-object v1, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v1}, Lcom/tencent/open/TaskGuide;->c(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/open/TaskGuide$h;->a(Lcom/tencent/open/TaskGuide$d;)V
:cond_23
:goto_23
return-void
:cond_24
iget v0, p0, Lcom/tencent/open/TaskGuide$4;->a:I
if-ne v0, v2, :cond_3e
iget-object v0, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tencent/open/TaskGuide$h;
iget-object v1, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v1}, Lcom/tencent/open/TaskGuide;->d(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/open/TaskGuide$h;->a(Lcom/tencent/open/TaskGuide$d;)V
goto :goto_23
:cond_3e
iget v0, p0, Lcom/tencent/open/TaskGuide$4;->a:I
if-ne v0, v3, :cond_23
iget-object v0, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tencent/open/TaskGuide$h;
iget-object v1, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v1}, Lcom/tencent/open/TaskGuide;->c(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/open/TaskGuide$h;->a(Lcom/tencent/open/TaskGuide$d;)V
iget-object v0, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
if-le v0, v2, :cond_23
iget-object v0, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tencent/open/TaskGuide$h;
iget-object v1, p0, Lcom/tencent/open/TaskGuide$4;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v1}, Lcom/tencent/open/TaskGuide;->d(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/open/TaskGuide$h;->a(Lcom/tencent/open/TaskGuide$d;)V
goto :goto_23
.end method