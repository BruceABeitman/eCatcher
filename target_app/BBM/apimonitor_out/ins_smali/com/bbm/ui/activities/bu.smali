.class final Lcom/bbm/ui/activities/bu;
.super Lcom/bbm/d/b/m;
.source "ChangeStatusActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/bt;
.method constructor <init>(Lcom/bbm/ui/activities/bt;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/bu;->a:Lcom/bbm/ui/activities/bt;
invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)Z
.registers 5
check-cast p1, Lcom/bbm/d/ge;
iget-object v0, p1, Lcom/bbm/d/ge;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/bu;->a:Lcom/bbm/ui/activities/bt;
iget-object v1, v1, Lcom/bbm/ui/activities/bt;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e04db
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p1, Lcom/bbm/d/ge;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/bu;->a:Lcom/bbm/ui/activities/bt;
iget-object v1, v1, Lcom/bbm/ui/activities/bt;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e04dc
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_32
const/4 v0, 0x1
:goto_31
return v0
:cond_32
const/4 v0, 0x0
goto :goto_31
.end method