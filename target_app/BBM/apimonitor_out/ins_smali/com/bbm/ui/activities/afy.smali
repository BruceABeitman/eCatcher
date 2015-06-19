.class final Lcom/bbm/ui/activities/afy;
.super Ljava/lang/Object;
.source "SettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/afy;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/afy;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->t()Z
move-result v0
if-ne p2, v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/afy;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->p(Lcom/bbm/ui/activities/SettingsActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/afy;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/afy;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-virtual {v0, p2, v1}, Lcom/bbm/d/a;->a(ZLandroid/content/Context;)V
goto :goto_c
.end method