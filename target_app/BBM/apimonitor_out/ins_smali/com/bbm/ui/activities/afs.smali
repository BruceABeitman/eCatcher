.class final Lcom/bbm/ui/activities/afs;
.super Lcom/bbm/j/k;
.source "SettingsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/afs;->a:Lcom/bbm/ui/activities/SettingsActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-object v0, v0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/afs;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method