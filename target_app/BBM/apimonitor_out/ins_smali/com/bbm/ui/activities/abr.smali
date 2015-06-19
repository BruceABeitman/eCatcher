.class final Lcom/bbm/ui/activities/abr;
.super Ljava/lang/Object;
.source "ProfileActivity.java"
.implements Lcom/bbm/ui/br;
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/abr;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/abr;->a:Lcom/bbm/ui/activities/ProfileActivity;
const v1, 0x7f0a03a8
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/SendEditText;
iget-object v1, p0, Lcom/bbm/ui/activities/abr;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ProfileActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v1
instance-of v2, v1, Landroid/widget/EditText;
if-eqz v2, :cond_36
iget-object v2, p0, Lcom/bbm/ui/activities/abr;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;
move-result-object v2
invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v2
if-ne v1, v2, :cond_37
iget-object v0, p0, Lcom/bbm/ui/activities/abr;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-static {v0, p1}, Lcom/bbm/ui/EmoticonPicker;->a(Landroid/widget/EditText;Ljava/lang/String;)V
:goto_30
:cond_30
iget-object v0, p0, Lcom/bbm/ui/activities/abr;->a:Lcom/bbm/ui/activities/ProfileActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->c(Lcom/bbm/ui/activities/ProfileActivity;Z)V
:cond_36
return-void
:cond_37
if-ne v1, v0, :cond_30
invoke-static {v0, p1}, Lcom/bbm/ui/EmoticonPicker;->a(Landroid/widget/EditText;Ljava/lang/String;)V
goto :goto_30
.end method