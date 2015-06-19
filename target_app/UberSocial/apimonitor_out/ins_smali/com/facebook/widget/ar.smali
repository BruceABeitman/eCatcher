.class  Lcom/facebook/widget/ar;
.super Lcom/facebook/widget/ah;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/aq;
.method private constructor <init>(Lcom/facebook/widget/aq;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ar;->a:Lcom/facebook/widget/aq;
invoke-direct {p0, p1}, Lcom/facebook/widget/ah;-><init>(Lcom/facebook/widget/af;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/aq;Lcom/facebook/widget/aq$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/ar;-><init>(Lcom/facebook/widget/aq;)V
return-void
.end method
.method public a(Lcom/facebook/widget/e;)V
.registers 4
invoke-super {p0, p1}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/e;)V
iget-object v0, p0, Lcom/facebook/widget/ar;->d:Lcom/facebook/widget/e;
new-instance v1, Lcom/facebook/widget/ar$1;
invoke-direct {v1, p0}, Lcom/facebook/widget/ar$1;-><init>(Lcom/facebook/widget/ar;)V
invoke-virtual {v0, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/f;)V
return-void
.end method
.method protected a(Lcom/facebook/widget/m;Lcom/facebook/widget/au;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/m;Lcom/facebook/widget/au;)V
if-eqz p2, :cond_b
invoke-virtual {p1}, Lcom/facebook/widget/m;->d()Z
move-result v0
if-eqz v0, :cond_c
:goto_b
:cond_b
return-void
:cond_c
iget-object v0, p0, Lcom/facebook/widget/ar;->a:Lcom/facebook/widget/aq;
invoke-virtual {v0}, Lcom/facebook/widget/aq;->x()V
invoke-virtual {p2}, Lcom/facebook/widget/au;->a()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p2}, Lcom/facebook/widget/au;->b()Z
move-result v0
if-eqz v0, :cond_23
const-wide/16 v0, 0x7d0
:goto_1f
invoke-virtual {p1, v0, v1}, Lcom/facebook/widget/m;->a(J)V
goto :goto_b
:cond_23
const-wide/16 v0, 0x0
goto :goto_1f
.end method