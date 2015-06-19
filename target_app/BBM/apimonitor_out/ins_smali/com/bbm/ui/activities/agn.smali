.class final Lcom/bbm/ui/activities/agn;
.super Ljava/lang/Object;
.source "SettingsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/app/Dialog;
.field final synthetic b:Lcom/bbm/ui/activities/SettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;Landroid/app/Dialog;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/agn;->b:Lcom/bbm/ui/activities/SettingsActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/agn;->a:Landroid/app/Dialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/agn;->a:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/agn;->b:Lcom/bbm/ui/activities/SettingsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/agn;->b:Lcom/bbm/ui/activities/SettingsActivity;
const v2, 0x7f0e066c
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/SettingsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method