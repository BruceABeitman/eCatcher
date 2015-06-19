.class final Lcom/instagram/user/userservice/a/f;
.super Ljava/lang/Object;
.source "AutoCompleteUserServiceHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/user/c/a;
.field final synthetic b:Lcom/instagram/user/userservice/a/e;
.method constructor <init>(Lcom/instagram/user/userservice/a/e;Lcom/instagram/user/c/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/user/userservice/a/f;->b:Lcom/instagram/user/userservice/a/e;
iput-object p2, p0, Lcom/instagram/user/userservice/a/f;->a:Lcom/instagram/user/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
:try_start_0
const-string v0, "autoCompleteUserStoreV2"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p0, Lcom/instagram/user/userservice/a/f;->a:Lcom/instagram/user/c/a;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/instagram/user/userservice/a/f;->a:Lcom/instagram/user/c/a;
invoke-static {v2}, Lcom/instagram/user/b/b;->a(Lcom/instagram/user/c/a;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/user/userservice/a/f;->a:Lcom/instagram/user/c/a;
invoke-static {v0}, Lcom/instagram/user/userservice/a/h;->a(Lcom/instagram/user/c/a;)V
invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/user/userservice/a/f;->a:Lcom/instagram/user/c/a;
invoke-virtual {v0, v1}, Lcom/instagram/f/d/a;->a(Lcom/instagram/user/c/a;)V
invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/f/d/a;->d()V
const-string v0, "DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
:try_end_37
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38
:goto_37
return-void
:catch_38
move-exception v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const-string v1, "Unable to serialize user: %s. Exception %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/instagram/user/userservice/a/f;->a:Lcom/instagram/user/c/a;
invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
goto :goto_37
.end method