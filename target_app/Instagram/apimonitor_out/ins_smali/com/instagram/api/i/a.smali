.class public final Lcom/instagram/api/i/a;
.super Ljava/lang/Object;
.source "RequestParamUtil.java"
.method public static a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V
.registers 6
invoke-interface {p1}, Lcom/instagram/api/c/a;->c()I
move-result v0
sget v1, Lcom/instagram/common/a/c/a;->a:I
if-ne v0, v1, :cond_6a
invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->getCookies()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_14
:goto_14
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_36
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;
const-string v2, "csrftoken"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14
const-string v2, "_csrftoken"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v2, v0}, Lcom/instagram/common/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_36
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
if-eqz v0, :cond_6a
invoke-interface {p1}, Lcom/instagram/api/c/a;->e_()Z
move-result v0
if-eqz v0, :cond_53
const-string v0, "_uuid"
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-interface {p0, v0, v1}, Lcom/instagram/common/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_53
invoke-interface {p1}, Lcom/instagram/api/c/a;->b()Z
move-result v0
if-eqz v0, :cond_6a
const-string v0, "_uid"
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-interface {p0, v0, v1}, Lcom/instagram/common/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_6a
return-void
.end method