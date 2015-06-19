.class final Lcom/instagram/user/userservice/a/g;
.super Ljava/lang/Object;
.source "AutoCompleteUserServiceHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/user/c/a;
.field final synthetic b:Lcom/instagram/user/userservice/a/e;
.method constructor <init>(Lcom/instagram/user/userservice/a/e;Lcom/instagram/user/c/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/user/userservice/a/g;->b:Lcom/instagram/user/userservice/a/e;
iput-object p2, p0, Lcom/instagram/user/userservice/a/g;->a:Lcom/instagram/user/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
const-string v0, "autoCompleteUserStoreV2"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p0, Lcom/instagram/user/userservice/a/g;->a:Lcom/instagram/user/c/a;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/user/userservice/a/g;->a:Lcom/instagram/user/c/a;
invoke-static {v0}, Lcom/instagram/user/userservice/a/h;->b(Lcom/instagram/user/c/a;)V
invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/user/userservice/a/g;->a:Lcom/instagram/user/c/a;
invoke-virtual {v0, v1}, Lcom/instagram/f/d/a;->b(Lcom/instagram/user/c/a;)V
return-void
.end method