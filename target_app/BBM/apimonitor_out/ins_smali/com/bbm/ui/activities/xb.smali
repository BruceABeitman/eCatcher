.class final Lcom/bbm/ui/activities/xb;
.super Lcom/bbm/j/k;
.source "MainActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/xb;->a:Lcom/bbm/ui/activities/MainActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/xb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0c0016
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/xb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->d(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/g/am;
move-result-object v1
const-string v2, "maxGroupsAllowed"
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/xb;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;I)I
iget-object v2, v1, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_39
iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v2, "value"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
if-eqz v1, :cond_39
iget-object v2, p0, Lcom/bbm/ui/activities/xb;->a:Lcom/bbm/ui/activities/MainActivity;
const-string v3, "groupCount"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v0
invoke-static {v2, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;I)I
:cond_39
return-void
.end method