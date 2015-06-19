.class final Lcom/c/a/br;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/a/cg;Lcom/c/a/cg;)I
.registers 9
const/4 v0, 0x1
const/4 v1, -0x1
if-ne p1, p2, :cond_6
const/4 v0, 0x0
:goto_5
:cond_5
return v0
:cond_6
if-nez p1, :cond_a
move v0, v1
goto :goto_5
:cond_a
if-eqz p2, :cond_5
invoke-virtual {p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;
move-result-object v2
invoke-virtual {p2}, Lcom/c/a/cg;->n_()Lcom/c/ba;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/c/ba;->c(Lcom/c/ba;)I
move-result v2
if-eqz v2, :cond_1c
move v0, v2
goto :goto_5
:cond_1c
invoke-virtual {p1}, Lcom/c/a/cg;->c()D
move-result-wide v2
invoke-virtual {p2}, Lcom/c/a/cg;->c()D
move-result-wide v4
invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I
move-result v2
if-eqz v2, :cond_2c
move v0, v2
goto :goto_5
:cond_2c
invoke-virtual {p1}, Lcom/c/a/cg;->d()D
move-result-wide v2
invoke-virtual {p2}, Lcom/c/a/cg;->d()D
move-result-wide v4
invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I
move-result v2
if-eqz v2, :cond_3c
move v0, v2
goto :goto_5
:cond_3c
invoke-virtual {p1}, Lcom/c/a/cg;->p()I
move-result v2
invoke-virtual {p2}, Lcom/c/a/cg;->p()I
move-result v3
sub-int/2addr v2, v3
if-eqz v2, :cond_49
move v0, v2
goto :goto_5
:cond_49
invoke-virtual {p1}, Lcom/c/a/cg;->b()I
move-result v2
invoke-virtual {p2}, Lcom/c/a/cg;->b()I
move-result v3
sub-int/2addr v2, v3
if-eqz v2, :cond_56
move v0, v2
goto :goto_5
:cond_56
invoke-virtual {p1}, Lcom/c/a/cg;->g()Z
move-result v2
invoke-virtual {p2}, Lcom/c/a/cg;->g()Z
move-result v3
xor-int/2addr v2, v3
if-eqz v2, :cond_69
invoke-virtual {p1}, Lcom/c/a/cg;->g()Z
move-result v2
if-nez v2, :cond_5
move v0, v1
goto :goto_5
:cond_69
invoke-virtual {p1}, Lcom/c/a/cg;->f()D
move-result-wide v2
invoke-virtual {p2}, Lcom/c/a/cg;->f()D
move-result-wide v4
invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I
move-result v2
if-eqz v2, :cond_79
move v0, v2
goto :goto_5
:cond_79
invoke-virtual {p1}, Lcom/c/a/cg;->u()Z
move-result v2
invoke-virtual {p2}, Lcom/c/a/cg;->u()Z
move-result v3
xor-int/2addr v2, v3
if-eqz v2, :cond_8d
invoke-virtual {p1}, Lcom/c/a/cg;->u()Z
move-result v2
if-nez v2, :cond_5
move v0, v1
goto/16 :goto_5
:cond_8d
invoke-virtual {p1}, Lcom/c/a/cg;->j()D
move-result-wide v0
invoke-virtual {p2}, Lcom/c/a/cg;->j()D
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I
move-result v0
goto/16 :goto_5
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/c/a/cg;
check-cast p2, Lcom/c/a/cg;
invoke-virtual {p0, p1, p2}, Lcom/c/a/br;->a(Lcom/c/a/cg;Lcom/c/a/cg;)I
move-result v0
return v0
.end method