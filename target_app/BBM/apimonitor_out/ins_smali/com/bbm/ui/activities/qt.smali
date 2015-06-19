.class final Lcom/bbm/ui/activities/qt;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method private constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qt;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/qt;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 6
const-string v0, "ShowGroupBarCode"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "=> Message: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/bbm/f/ab;->b()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
:try_start_1e
const-string v1, "ShowGroupBarCode"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "=> base64Code: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "base64Code"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string v1, "ShowGroupBarCode"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "=> inviteUrl: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "inviteUrl"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/bbm/ui/activities/qt;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const-string v2, "base64Code"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "inviteUrl"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;Ljava/lang/String;Ljava/lang/String;)V
:try_end_63
.catchall {:try_start_1e .. :try_end_63} :catchall_83
.catch Lorg/json/JSONException; {:try_start_1e .. :try_end_63} :catch_71
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
:goto_70
return-void
:catch_71
move-exception v0
:try_start_72
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:try_end_75
.catchall {:try_start_72 .. :try_end_75} :catchall_83
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
goto :goto_70
:catchall_83
move-exception v0
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
throw v0
.end method