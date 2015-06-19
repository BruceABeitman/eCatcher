.class public Lcom/facebook/katana/RemoveRawContactsService;
.super Landroid/app/IntentService;
.source "RemoveRawContactsService.java"
.field private mUsername:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "RemoveRawContactsService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 7
const/4 v4, 0x0
iget-object v1, p0, Lcom/facebook/katana/RemoveRawContactsService;->mUsername:Ljava/lang/String;
if-eqz v1, :cond_2e
sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "account_name"
iget-object v3, p0, Lcom/facebook/katana/RemoveRawContactsService;->mUsername:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "account_type"
const-string v3, "com.facebook.auth.login"
invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "caller_is_syncadapter"
const-string v3, "true"
invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Lcom/facebook/katana/RemoveRawContactsService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_2e
return-void
.end method
.method public onStart(Landroid/content/Intent;I)V
.registers 5
const-string v1, " + Lcom/facebook/katana/RemoveRawContactsService; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
if-eqz v0, :cond_10
invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/RemoveRawContactsService;->mUsername:Ljava/lang/String;
:cond_10
invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V
const-string v1, " - Lcom/facebook/katana/RemoveRawContactsService; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method