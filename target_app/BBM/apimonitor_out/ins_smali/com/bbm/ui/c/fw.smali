.class final Lcom/bbm/ui/c/fw;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/l/b/i;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/i;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/fw;->c:Lcom/bbm/ui/c/fu;
iput-object p2, p0, Lcom/bbm/ui/c/fw;->a:Lcom/bbm/l/b/i;
iput-object p3, p0, Lcom/bbm/ui/c/fw;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/fw; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Sticker Action Link clicked"
const-class v1, Lcom/bbm/ui/c/fu;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/fw;->c:Lcom/bbm/ui/c/fu;
iget-object v1, p0, Lcom/bbm/ui/c/fw;->a:Lcom/bbm/l/b/i;
iget-object v1, v1, Lcom/bbm/l/b/i;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/fw;->c:Lcom/bbm/ui/c/fu;
invoke-static {v1}, Lcom/bbm/ui/c/fu;->f(Lcom/bbm/ui/c/fu;)Lcom/bbm/c/q;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/fw;->c:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->g(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/b/m;
move-result-object v2
iget-object v2, v2, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/c/fw;->b:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/ui/c/fw;->a:Lcom/bbm/l/b/i;
iget-object v4, v4, Lcom/bbm/l/b/i;->b:Ljava/lang/String;
:try_start_28
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
sget-object v6, Lcom/bbm/c/n;->P:Lcom/bbm/c/n;
invoke-virtual {v6}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v2, Lcom/bbm/c/n;->R:Lcom/bbm/c/n;
invoke-virtual {v2}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Lcom/bbm/c/q;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/n;->N:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/n;->aa:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/m;->c:Lcom/bbm/c/m;
invoke-virtual {v0, v1, v5}, Lcom/bbm/c/c;->b(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
:try_end_5a
.catch Lorg/json/JSONException; {:try_start_28 .. :try_end_5a} :catch_5b
:goto_5a
const-string v1, " - Lcom/bbm/ui/c/fw; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_5b
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "EventTracker.trackStickerActionClickEvent() JSONException - "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_5a
.end method