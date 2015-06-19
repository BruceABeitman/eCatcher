.class public final Lcom/instagram/user/userservice/a/i;
.super Ljava/lang/Object;
.source "UserAutoCompleteUtil.java"
.method public static a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V
.registers 9
invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_2c
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-static {v3, v1, v4}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_2c
invoke-static {p1, p3, v0}, Lcom/instagram/user/userservice/a/i;->a(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/user/c/a;)V
:cond_2c
invoke-virtual {v0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_8
invoke-static {v3, v1}, Lcom/instagram/common/u/e;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_8
invoke-static {p1, p3, v0}, Lcom/instagram/user/userservice/a/i;->a(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/user/c/a;)V
goto :goto_8
:cond_40
return-void
.end method
.method private static a(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/user/c/a;)V
.registers 4
if-eqz p1, :cond_8
invoke-interface {p1, p2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
:cond_8
invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_b
return-void
.end method