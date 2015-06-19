.class final Lcom/bbm/ui/c/eh;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"
.implements Lcom/bbm/ui/d/c;
.field final synthetic a:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/eh;->a:Lcom/bbm/ui/c/du;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 9
const/4 v6, 0x1
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "channelUri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/c/eh;->a:Lcom/bbm/ui/c/du;
invoke-static {v1}, Lcom/bbm/ui/c/du;->g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/eh;->a:Lcom/bbm/ui/c/du;
invoke-static {v2}, Lcom/bbm/ui/c/du;->b(Lcom/bbm/ui/c/du;)Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e01af
new-array v4, v6, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v0, v4, v5
invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0, v6}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method