.class final Lcom/bbm/ui/activities/il;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/il;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 5
const-string v0, "messageRecallResult"
iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
:try_start_a
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "conversationUri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/il;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
const-string v1, "recallStatus"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/fi;->a(Ljava/lang/String;)Lcom/bbm/d/fi;
move-result-object v0
sget-object v1, Lcom/bbm/d/fi;->b:Lcom/bbm/d/fi;
invoke-virtual {v1, v0}, Lcom/bbm/d/fi;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/activities/il;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/il;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v2, 0x7f0e02ab
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:cond_3e
:goto_3e
:try_end_3e
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_3e} :catch_3f
return-void
:catch_3f
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_3e
.end method