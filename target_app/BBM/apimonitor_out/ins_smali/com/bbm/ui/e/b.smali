.class public final Lcom/bbm/ui/e/b;
.super Ljava/lang/Object;
.source "BubbleUtil.java"
.method public static a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
.registers 7
iget-object v0, p2, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-boolean v0, v0, Lcom/bbm/d/fg;->j:Z
if-nez v0, :cond_18
invoke-static {}, Lcom/bbm/ui/activities/xo;->a()Lcom/bbm/ui/activities/xp;
move-result-object v0
:goto_a
iget-boolean v1, p2, Lcom/bbm/ui/e/i;->b:Z
iget-boolean v2, p2, Lcom/bbm/ui/e/i;->c:Z
if-eqz v1, :cond_28
if-eqz v2, :cond_28
iget v0, v0, Lcom/bbm/ui/activities/xp;->c:I
invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
:cond_17
:goto_17
return-void
:cond_18
if-eqz p3, :cond_23
iget-object v0, p2, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/ui/activities/xo;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/xp;
move-result-object v0
goto :goto_a
:cond_23
invoke-static {}, Lcom/bbm/ui/activities/xo;->b()Lcom/bbm/ui/activities/xp;
move-result-object v0
goto :goto_a
:cond_28
if-nez v1, :cond_32
if-nez v2, :cond_32
iget v0, v0, Lcom/bbm/ui/activities/xp;->a:I
invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_17
:cond_32
if-nez v1, :cond_3a
iget v0, v0, Lcom/bbm/ui/activities/xp;->b:I
invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_17
:cond_3a
if-nez v2, :cond_17
iget v0, v0, Lcom/bbm/ui/activities/xp;->d:I
invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_17
.end method
.method public static a(Landroid/view/View;Lcom/bbm/ui/e/i;)V
.registers 3
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-boolean v0, v0, Lcom/bbm/d/fg;->j:Z
if-nez v0, :cond_d
const v0, 0x7f02009a
invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
:goto_c
return-void
:cond_d
const v0, 0x7f020094
invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_c
.end method