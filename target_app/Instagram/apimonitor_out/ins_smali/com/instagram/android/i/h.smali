.class final Lcom/instagram/android/i/h;
.super Ljava/lang/Object;
.source "RealtimeUpdateController.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Lcom/instagram/android/i/f;
.method private constructor <init>(Lcom/instagram/android/i/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/i/h;->a:Lcom/instagram/android/i/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/i/f;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/i/h;-><init>(Lcom/instagram/android/i/f;)V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 4
const-string v0, "loggedin"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_25
iget-object v0, p0, Lcom/instagram/android/i/h;->a:Lcom/instagram/android/i/f;
invoke-static {v0}, Lcom/instagram/android/i/f;->a(Lcom/instagram/android/i/f;)Lcom/instagram/realtimeclient/RealtimeClient;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V
iget-object v0, p0, Lcom/instagram/android/i/h;->a:Lcom/instagram/android/i/f;
invoke-static {v0}, Lcom/instagram/android/i/f;->a(Lcom/instagram/android/i/f;)Lcom/instagram/realtimeclient/RealtimeClient;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeClient;->setSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
iget-object v0, p0, Lcom/instagram/android/i/h;->a:Lcom/instagram/android/i/f;
invoke-static {v0}, Lcom/instagram/android/i/f;->b(Lcom/instagram/android/i/f;)Lcom/instagram/realtimeclient/RealtimeOperationManager;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->clearOperations()V
:cond_25
return-void
.end method