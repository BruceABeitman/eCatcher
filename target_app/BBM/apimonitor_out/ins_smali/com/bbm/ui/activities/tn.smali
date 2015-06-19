.class final Lcom/bbm/ui/activities/tn;
.super Lcom/bbm/j/k;
.source "GroupSettingsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupSettingsActivity;->b(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupSettingsActivity;->a(Lcom/bbm/ui/activities/GroupSettingsActivity;Lcom/bbm/g/a;)Lcom/bbm/g/a;
iget-object v0, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->c(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/g/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_20
:goto_1f
return-void
:cond_20
iget-object v0, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->d(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/tn;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->e(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
goto :goto_1f
.end method