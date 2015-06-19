.class final Lcom/bbm/ui/activities/tr;
.super Ljava/lang/Object;
.source "GroupSettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lorg/json/JSONObject;
.field final synthetic c:Lcom/bbm/ui/activities/GroupSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupSettingsActivity;Ljava/util/List;Lorg/json/JSONObject;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/tr;->c:Lcom/bbm/ui/activities/GroupSettingsActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/tr;->a:Ljava/util/List;
iput-object p3, p0, Lcom/bbm/ui/activities/tr;->b:Lorg/json/JSONObject;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/tr;->c:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->b(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/tr;->c:Lcom/bbm/ui/activities/GroupSettingsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/g/a;->a:Z
if-eq p2, v0, :cond_4b
:try_start_12
iget-object v0, p0, Lcom/bbm/ui/activities/tr;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/bbm/ui/activities/tr;->a:Ljava/util/List;
iget-object v1, p0, Lcom/bbm/ui/activities/tr;->b:Lorg/json/JSONObject;
const-string v2, "uri"
iget-object v3, p0, Lcom/bbm/ui/activities/tr;->c:Lcom/bbm/ui/activities/GroupSettingsActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "allowNonAdminToInvite"
iget-object v3, p0, Lcom/bbm/ui/activities/tr;->c:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupSettingsActivity;->g(Lcom/bbm/ui/activities/GroupSettingsActivity;)Landroid/widget/Switch;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z
move-result v3
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/tr;->c:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->f(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/tr;->a:Ljava/util/List;
const-string v2, "group"
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:try_end_4b
.catch Lorg/json/JSONException; {:try_start_12 .. :try_end_4b} :catch_4c
:goto_4b
:cond_4b
return-void
:catch_4c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_4b
.end method