.class final Lcom/bbm/ui/activities/afw;
.super Ljava/lang/Object;
.source "SettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/afw;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
const-string v0, "sticky notification onCheckedChanged"
const-class v1, Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/afw;->a:Lcom/bbm/ui/activities/SettingsActivity;
const-string v1, "sticky_notification"
invoke-static {v0, v1, p2}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/afw;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0, p2}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Z)V
return-void
.end method