.class final Lcom/bbm/ui/c/eq;
.super Ljava/lang/Object;
.source "OwnProfileDetailsFragment.java"
.implements Lcom/bbm/ui/p;
.field final synthetic a:Lcom/bbm/ui/c/ep;
.method constructor <init>(Lcom/bbm/ui/c/ep;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
iget-object v0, v0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_4b
iget-object v0, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
iget-object v0, v0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_4b
iget-object v0, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
iget-object v0, v0, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->a(Lcom/bbm/ui/c/ej;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
iget-object v1, v1, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;
invoke-virtual {v1}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;
move-result-object v1
const-class v2, Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "user_uri"
iget-object v2, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
iget-object v2, v2, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;
invoke-static {v2}, Lcom/bbm/ui/c/ej;->e(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/gp;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/c/eq;->a:Lcom/bbm/ui/c/ep;
iget-object v1, v1, Lcom/bbm/ui/c/ep;->a:Lcom/bbm/ui/c/ej;
invoke-virtual {v1, v0}, Lcom/bbm/ui/c/ej;->startActivity(Landroid/content/Intent;)V
:cond_4b
return-void
.end method