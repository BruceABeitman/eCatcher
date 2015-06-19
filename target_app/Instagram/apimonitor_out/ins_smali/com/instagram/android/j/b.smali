.class public final Lcom/instagram/android/j/b;
.super Ljava/lang/Object;
.source "SimilarAccountsUtil.java"
.method public static a(Lcom/instagram/user/c/a;)Ljava/util/List;
.registers 7
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/user/c/a;->C()Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_64
invoke-virtual {p0}, Lcom/instagram/user/c/a;->C()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_19
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_64
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v5}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v2
if-eqz v2, :cond_53
invoke-virtual {v2}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
sget-object v5, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
if-ne v0, v5, :cond_68
sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
invoke-virtual {v2, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V
move-object v0, v2
:goto_41
invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v2
sget-object v5, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
if-ne v2, v5, :cond_66
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
const/4 v1, 0x3
if-ge v0, v1, :cond_64
:goto_51
move v1, v0
goto :goto_19
:cond_53
sget-object v2, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
invoke-virtual {v0, v2}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v5, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
goto :goto_41
:cond_64
move-object v0, v3
goto :goto_3
:cond_66
move v0, v1
goto :goto_51
:cond_68
move-object v0, v2
goto :goto_41
.end method
.method public static a(Lcom/instagram/common/analytics/e;Lcom/instagram/android/j/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/common/analytics/b;
invoke-virtual {p1}, Lcom/instagram/android/j/a;->a()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v2, "uid_based_on"
invoke-virtual {v1, v2, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "uid"
invoke-virtual {v1, v2, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "view"
invoke-virtual {v1, v2, p4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
return-void
.end method