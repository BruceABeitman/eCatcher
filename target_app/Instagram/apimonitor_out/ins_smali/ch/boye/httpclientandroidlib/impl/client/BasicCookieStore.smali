.class public Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;
.super Ljava/lang/Object;
.source "BasicCookieStore.java"
.implements Lch/boye/httpclientandroidlib/client/CookieStore;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x69357431db388559L
.field private final cookies:Ljava/util/TreeSet;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/TreeSet;
new-instance v1, Lch/boye/httpclientandroidlib/cookie/CookieIdentityComparator;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/cookie/CookieIdentityComparator;-><init>()V
invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
return-void
.end method
.method public declared-synchronized addCookie(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
.registers 3
monitor-enter p0
if-eqz p1, :cond_18
:try_start_3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isExpired(Ljava/util/Date;)Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_1a
:cond_18
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized addCookies([Lch/boye/httpclientandroidlib/cookie/Cookie;)V
.registers 5
monitor-enter p0
if-eqz p1, :cond_f
:try_start_3
array-length v1, p1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_f
aget-object v2, p1, v0
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->addCookie(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_11
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_f
monitor-exit p0
return-void
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized clearExpired(Ljava/util/Date;)Z
.registers 5
const/4 v0, 0x0
monitor-enter p0
if-nez p1, :cond_6
:goto_4
monitor-exit p0
return v0
:try_start_6
:cond_6
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:cond_d
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isExpired(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_d
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
:try_end_22
.catchall {:try_start_6 .. :try_end_22} :catchall_26
const/4 v1, 0x1
goto :goto_d
:cond_24
move v0, v1
goto :goto_4
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getCookies()Ljava/util/List;
.registers 3
monitor-enter p0
:try_start_1
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_a
monitor-exit p0
return-object v0
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized toString()Ljava/lang/String;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->toString()Ljava/lang/String;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-object v0
monitor-exit p0
return-object v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method