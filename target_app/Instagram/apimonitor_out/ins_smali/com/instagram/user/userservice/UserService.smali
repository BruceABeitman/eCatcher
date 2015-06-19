.class public Lcom/instagram/user/userservice/UserService;
.super Landroid/app/IntentService;
.source "UserService.java"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/instagram/user/userservice/UserService;
invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 4
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "autocomplete"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_21
new-instance v0, Lcom/instagram/user/userservice/a/d;
invoke-direct {v0}, Lcom/instagram/user/userservice/a/d;-><init>()V
invoke-virtual {v0}, Lcom/instagram/user/userservice/a/d;->a()V
invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/f/d/a;->d()V
const-string v0, "DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
:goto_20
return-void
:cond_21
const-string v1, "suggestions"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
new-instance v0, Lcom/instagram/user/userservice/b/f;
invoke-direct {v0}, Lcom/instagram/user/userservice/b/f;-><init>()V
invoke-virtual {v0}, Lcom/instagram/user/userservice/b/f;->a()V
const-string v0, "DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
goto :goto_20
:cond_37
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Intent is not supported by this UserService"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method