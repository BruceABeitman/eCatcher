.class public final Lcom/spotify/mobile/android/service/flow/logic/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/spotify/mobile/android/util/cz;
.field private static final b:Lcom/spotify/mobile/android/util/cz;
.field private static final c:Lcom/spotify/mobile/android/util/cz;
.field private final d:Lcom/spotify/mobile/android/util/cx;
.field private final e:Landroid/webkit/CookieManager;
.method static constructor <clinit>()V
.registers 1
const-string v0, "login_pli_added_to_queue"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/k;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "login_pli_added_to_queue_url"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/k;->b:Lcom/spotify/mobile/android/util/cz;
const-string v0, "login_pli_added_to_queue_cookie"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/k;->c:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->d:Lcom/spotify/mobile/android/util/cx;
invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->e:Landroid/webkit/CookieManager;
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/service/flow/logic/l;
.registers 7
const/4 v5, 0x0
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->d:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/k;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, v5}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->d:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/service/flow/logic/k;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->d:Lcom/spotify/mobile/android/util/cx;
sget-object v3, Lcom/spotify/mobile/android/service/flow/logic/k;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v0, :cond_2f
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2f
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/l;
const/4 v3, 0x1
invoke-direct {v0, v3, v1, v2}, Lcom/spotify/mobile/android/service/flow/logic/l;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
:goto_2e
return-object v0
:cond_2f
new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/l;
invoke-direct {v0, v5, v4, v4}, Lcom/spotify/mobile/android/service/flow/logic/l;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
goto :goto_2e
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/logic/l;)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->e:Landroid/webkit/CookieManager;
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/logic/l;->a()Z
move-result v0
if-eqz v0, :cond_61
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/logic/l;->c()Ljava/lang/String;
move-result-object v0
const-string v2, ";"
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_18
if-ge v0, v3, :cond_61
aget-object v4, v2, v0
const-string v5, "="
invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v5, v4
const/4 v6, 0x2
if-ne v5, v6, :cond_62
aget-object v5, v4, v1
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
const-string v6, "invite_request"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_62
const/4 v0, 0x1
aget-object v0, v4, v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->e:Landroid/webkit/CookieManager;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/logic/l;->b()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "; Expires=Wed, 31 Dec 2025 23:59:59 GMT"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
:cond_61
return-void
:cond_62
add-int/lit8 v0, v0, 0x1
goto :goto_18
.end method
.method public final a(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->e:Landroid/webkit/CookieManager;
invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->d:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/service/flow/logic/k;->a:Lcom/spotify/mobile/android/util/cz;
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/service/flow/logic/k;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/service/flow/logic/k;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->e:Landroid/webkit/CookieManager;
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/k;->d:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/k;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/k;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/k;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method