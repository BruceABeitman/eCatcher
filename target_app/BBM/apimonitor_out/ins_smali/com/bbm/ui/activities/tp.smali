.class final Lcom/bbm/ui/activities/tp;
.super Ljava/lang/Object;
.source "GroupSettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/tp;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/tp;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->c(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/g/a;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/g/a;->u:Z
if-eq p2, v0, :cond_3b
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
:try_start_14
invoke-interface {v1}, Ljava/util/List;->clear()V
const-string v2, "uri"
iget-object v3, p0, Lcom/bbm/ui/activities/tp;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "showThisGroupsPicturesInTheMessageApp"
invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/tp;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->f(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v2, "group"
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:goto_3b
:try_end_3b
.catch Lorg/json/JSONException; {:try_start_14 .. :try_end_3b} :catch_3c
:cond_3b
return-void
:catch_3c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_3b
.end method