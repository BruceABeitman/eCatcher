.class final Lcom/bbm/ui/activities/aga;
.super Ljava/lang/Object;
.source "SettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aga;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/aga;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->e()Z
move-result v0
if-ne p2, v0, :cond_d
:goto_c
return-void
:cond_d
const-string v0, "show music update onCheckedChanged"
const-class v1, Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aga;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->r(Lcom/bbm/ui/activities/SettingsActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/aga;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;
move-result-object v0
const-string v1, "receiveMusicUpdates"
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
goto :goto_c
.end method