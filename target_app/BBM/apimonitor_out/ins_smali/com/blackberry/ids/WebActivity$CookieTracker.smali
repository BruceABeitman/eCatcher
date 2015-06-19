.class public Lcom/blackberry/ids/WebActivity$CookieTracker;
.super Ljava/lang/Object;
.source "WebActivity.java"
.field private final a:Ljava/util/Set;
.field private final b:Landroid/webkit/CookieManager;
.field private final c:Z
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->a:Ljava/util/Set;
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->b:Landroid/webkit/CookieManager;
iget-object v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->b:Landroid/webkit/CookieManager;
invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z
move-result v0
iput-boolean v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->c:Z
return-void
.end method
.method public clearCookies(Lcom/blackberry/ids/RequestId;)V
.registers 5
const-string v0, "Clearing all cookies by request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->b:Landroid/webkit/CookieManager;
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
return-void
.end method
.method public restoreAceptCookies()V
.registers 3
iget-object v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->b:Landroid/webkit/CookieManager;
iget-boolean v1, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->c:Z
invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
return-void
.end method
.method public setAcceptCookies()V
.registers 3
iget-object v0, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->b:Landroid/webkit/CookieManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
return-void
.end method
.method public trackUrl(Ljava/lang/String;)V
.registers 6
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/blackberry/ids/WebActivity$CookieTracker;->a:Ljava/util/Set;
new-instance v2, Landroid/net/Uri$Builder;
invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v2
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v2
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method