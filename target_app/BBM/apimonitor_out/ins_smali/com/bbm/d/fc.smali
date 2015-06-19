.class public final Lcom/bbm/d/fc;
.super Ljava/lang/Object;
.source "GroupMemberToBBMCoreAvatarLookup.java"
.method public static a(Landroid/content/res/Resources;Lcom/bbm/g/ac;)Lcom/google/b/a/l;
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p1, Lcom/bbm/g/ac;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/d/fc;->a(Landroid/content/res/Resources;Lcom/bbm/g/o;)Lcom/google/b/a/l;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/res/Resources;Lcom/bbm/g/o;)Lcom/google/b/a/l;
.registers 6
const/4 v0, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p1, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v3, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v3, v1}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v1
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v3, :cond_3c
iget-object v1, p1, Lcom/bbm/g/o;->a:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_37
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
iget-object v2, p1, Lcom/bbm/g/o;->a:Ljava/lang/String;
invoke-direct {v1, p0, v2}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
:cond_37
:goto_37
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
return-object v0
:cond_3c
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
goto :goto_37
.end method