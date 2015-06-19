.class final Lcom/instagram/share/b/c;
.super Lcom/instagram/common/a/a/l;
.source "FacebookAccount.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V
return-void
.end method
.method private static a(Lcom/instagram/share/b/k;)V
.registers 4
if-eqz p0, :cond_26
invoke-virtual {p0}, Lcom/instagram/share/b/k;->f_()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/instagram/share/b/k;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_26
invoke-static {}, Lcom/instagram/share/b/a;->l()Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "user_id"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Ljava/lang/String;)V
:cond_26
return-void
.end method
.method public final synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/share/b/k;
invoke-static {p1}, Lcom/instagram/share/b/c;->a(Lcom/instagram/share/b/k;)V
return-void
.end method