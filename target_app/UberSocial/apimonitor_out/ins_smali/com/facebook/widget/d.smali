.class  Lcom/facebook/widget/d;
.super Lcom/facebook/widget/ah;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/c;
.method private constructor <init>(Lcom/facebook/widget/c;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/c;
invoke-direct {p0, p1}, Lcom/facebook/widget/ah;-><init>(Lcom/facebook/widget/af;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/c;Lcom/facebook/widget/c$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/d;-><init>(Lcom/facebook/widget/c;)V
return-void
.end method
.method private e()V
.registers 2
iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->v()V
iget-object v0, p0, Lcom/facebook/widget/d;->c:Lcom/facebook/widget/m;
invoke-virtual {v0}, Lcom/facebook/widget/m;->e()V
return-void
.end method
.method protected a(Lcom/facebook/widget/m;Lcom/facebook/widget/au;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/m;Lcom/facebook/widget/au;)V
if-eqz p2, :cond_b
invoke-virtual {p1}, Lcom/facebook/widget/m;->d()Z
move-result v0
if-eqz v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual {p2}, Lcom/facebook/widget/au;->b()Z
move-result v0
if-eqz v0, :cond_16
invoke-direct {p0}, Lcom/facebook/widget/d;->e()V
goto :goto_b
:cond_16
iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/c;
invoke-virtual {v0}, Lcom/facebook/widget/c;->x()V
invoke-virtual {p2}, Lcom/facebook/widget/au;->a()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p2}, Lcom/facebook/widget/au;->c()I
move-result v0
if-nez v0, :cond_2d
const-wide/16 v0, 0x7d0
:goto_29
invoke-virtual {p1, v0, v1}, Lcom/facebook/widget/m;->a(J)V
goto :goto_b
:cond_2d
const-wide/16 v0, 0x0
goto :goto_29
.end method