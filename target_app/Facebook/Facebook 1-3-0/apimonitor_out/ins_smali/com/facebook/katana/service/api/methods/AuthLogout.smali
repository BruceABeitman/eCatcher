.class public Lcom/facebook/katana/service/api/methods/AuthLogout;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "AuthLogout.java"
.field private final mContext:Landroid/content/Context;
.field private final mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 11
const/4 v5, 0x0
const-string v2, "GET"
const-string v3, "auth.logout"
const-string v4, "https://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mContext:Landroid/content/Context;
new-instance v0, Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;
invoke-direct {v0, p0, v5}, Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogout;Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;)V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mParams:Ljava/util/Map;
const-string v1, "call_id"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/AuthLogout;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/AuthLogout;)Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
return-object v0
.end method
.method public start()V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_e
invoke-super {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->start()V
:goto_d
return-void
:cond_e
new-instance v0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;
const/16 v1, 0xc8
const-string v2, "Ok"
const/4 v3, 0x0
invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogout;ILjava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->execute()V
goto :goto_d
.end method