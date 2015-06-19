.class final Lcom/instagram/android/l/c/f;
.super Lcom/instagram/android/l/b/d;
.source "UserListFragment.java"
.field final synthetic a:Lcom/instagram/android/l/c/a;
.method constructor <init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
.registers 6
iput-object p1, p0, Lcom/instagram/android/l/c/f;->a:Lcom/instagram/android/l/c/a;
const/4 v0, 0x0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/android/l/b/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
return-void
.end method
.method public final a(Lcom/instagram/common/a/c/b;)V
.registers 5
invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->g()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
:cond_2c
return-void
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "vkontakte/find/"
return-object v0
.end method