.class final Lcom/bbm/ui/activities/agr;
.super Ljava/lang/Object;
.source "SettingsActivity.java"
.implements Lcom/bbm/ui/p;
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/agr;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/agr;->a:Lcom/bbm/ui/activities/SettingsActivity;
const-string v1, "notification_led_colour"
invoke-static {v0, v1, p1}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;I)V
return-void
.end method