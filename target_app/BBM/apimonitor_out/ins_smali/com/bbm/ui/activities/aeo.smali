.class final Lcom/bbm/ui/activities/aeo;
.super Lcom/bbm/d/b/n;
.source "SelectContactActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/aeo;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {p0, p2}, Lcom/bbm/d/b/n;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
check-cast p1, Lcom/bbm/d/gp;
iget-object v0, p0, Lcom/bbm/ui/activities/aeo;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->s(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/Set;
move-result-object v0
iget-object v2, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
move v0, v1
:goto_12
return v0
:cond_13
iget-object v0, p1, Lcom/bbm/d/gp;->s:Ljava/util/List;
if-eqz v0, :cond_37
iget-object v0, p1, Lcom/bbm/d/gp;->s:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/aeo;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/SelectContactActivity;->t(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/Set;
move-result-object v3
invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
move v0, v1
goto :goto_12
:cond_37
invoke-super {p0, p1}, Lcom/bbm/d/b/n;->a(Ljava/lang/Object;)Z
move-result v0
goto :goto_12
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
check-cast p1, Lcom/bbm/d/gp;
invoke-static {p1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method