.class public final Lcom/facebook/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/facebook/internal/z;
.field private static b:Ljava/util/List;
.field private static c:Ljava/util/Map;
.field private static final d:Ljava/util/List;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x0
new-instance v0, Lcom/facebook/internal/x;
invoke-direct {v0, v4}, Lcom/facebook/internal/x;-><init>(B)V
sput-object v0, Lcom/facebook/internal/w;->a:Lcom/facebook/internal/z;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sget-object v1, Lcom/facebook/internal/w;->a:Lcom/facebook/internal/z;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/facebook/internal/aa;
invoke-direct {v1, v4}, Lcom/facebook/internal/aa;-><init>(B)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sput-object v0, Lcom/facebook/internal/w;->b:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lcom/facebook/internal/y;
invoke-direct {v2, v4}, Lcom/facebook/internal/y;-><init>(B)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string v2, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"
sget-object v3, Lcom/facebook/internal/w;->b:Ljava/util/List;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "com.facebook.platform.action.request.FEED_DIALOG"
sget-object v3, Lcom/facebook/internal/w;->b:Ljava/util/List;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "com.facebook.platform.action.request.MESSAGE_DIALOG"
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sput-object v0, Lcom/facebook/internal/w;->c:Ljava/util/Map;
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Integer;
const v1, 0x1335124
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v4
const/4 v1, 0x1
const v2, 0x13350ac
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
const v2, 0x1332d23
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
const v2, 0x1332b3a
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const v2, 0x1332ac6
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
const v2, 0x133060d
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/facebook/internal/w;->d:Ljava/util/List;
return-void
.end method
.method public static a(Landroid/content/Context;I)I
.registers 5
const/4 v1, -0x1
sget-object v0, Lcom/facebook/internal/w;->b:Ljava/util/List;
if-eqz v0, :cond_1c
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/internal/z;
invoke-static {p0, v0, p1}, Lcom/facebook/internal/w;->a(Landroid/content/Context;Lcom/facebook/internal/z;I)I
move-result v0
if-eq v0, v1, :cond_9
:goto_1b
return v0
:cond_1c
move v0, v1
goto :goto_1b
.end method
.method private static a(Landroid/content/Context;Lcom/facebook/internal/z;I)I
.registers 11
const/4 v6, -0x1
const/4 v7, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v1, 0x1
new-array v2, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string v3, "version"
aput-object v3, v2, v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "content://"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/facebook/internal/z;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ".provider.PlatformProvider/versions"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
:try_start_2e
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_31
.catchall {:try_start_2e .. :try_end_31} :catchall_95
move-result-object v1
if-nez v1, :cond_3b
if-eqz v1, :cond_39
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_39
move v0, v6
:goto_3a
:cond_3a
return v0
:try_start_3b
:cond_3b
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
:goto_40
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_5f
const-string v0, "version"
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_57
.catchall {:try_start_3b .. :try_end_57} :catchall_58
goto :goto_40
:catchall_58
move-exception v0
:goto_59
if-eqz v1, :cond_5e
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_5e
throw v0
:cond_5f
:try_start_5f
sget-object v0, Lcom/facebook/internal/w;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_65
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_74
.catchall {:try_start_5f .. :try_end_74} :catchall_58
move-result v4
if-ge v4, p2, :cond_7e
if-eqz v1, :cond_7c
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_7c
move v0, v6
goto :goto_3a
:cond_7e
:try_start_7e
invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_65
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_87
.catchall {:try_start_7e .. :try_end_87} :catchall_58
move-result v0
if-eqz v1, :cond_3a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_3a
:cond_8e
if-eqz v1, :cond_93
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_93
move v0, v6
goto :goto_3a
:catchall_95
move-exception v0
move-object v1, v7
goto :goto_59
.end method
.method public static a(Landroid/content/Context;)Landroid/content/Intent;
.registers 5
sget-object v0, Lcom/facebook/internal/w;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/internal/z;
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-virtual {v0}, Lcom/facebook/internal/z;->a()Ljava/lang/String;
move-result-object v0
const-string v3, "com.facebook.katana.platform.TokenRefreshService"
invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/internal/w;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_6
:goto_27
return-object v0
:cond_28
const/4 v0, 0x0
goto :goto_27
.end method
.method private static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_5
move-object p1, v0
:goto_4
:cond_4
return-object p1
:cond_5
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v1
if-nez v1, :cond_12
move-object p1, v0
goto :goto_4
:cond_12
iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
invoke-static {p0, v1}, Lcom/facebook/internal/z;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4
move-object p1, v0
goto :goto_4
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Landroid/content/Intent;
.registers 10
const/4 v1, 0x0
sget-object v0, Lcom/facebook/internal/w;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_87
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/internal/z;
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
invoke-virtual {v0}, Lcom/facebook/internal/z;->a()Ljava/lang/String;
move-result-object v0
const-string v4, "com.facebook.katana.ProxyAuth"
invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v3, "client_id"
invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-static {p2}, Lcom/facebook/internal/ai;->a(Ljava/util/Collection;)Z
move-result v3
if-nez v3, :cond_39
const-string v3, "scope"
const-string v4, ","
invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_39
invoke-static {p3}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_44
const-string v3, "e2e"
invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_44
const-string v3, "response_type"
const-string v4, "token"
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "return_scopes"
const-string v4, "true"
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {}, Lcom/facebook/ah;->g()Z
move-result v3
if-nez v3, :cond_68
const-string v3, "legacy_override"
const-string v4, "v2.0"
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
if-eqz p4, :cond_68
const-string v3, "auth_type"
const-string v4, "rerequest"
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_68
if-nez v0, :cond_6e
move-object v0, v1
:goto_6b
:cond_6b
if-eqz v0, :cond_7
:goto_6d
return-object v0
:cond_6e
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-nez v3, :cond_7b
move-object v0, v1
goto :goto_6b
:cond_7b
iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-static {p0, v3}, Lcom/facebook/internal/z;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_6b
move-object v0, v1
goto :goto_6b
:cond_87
move-object v0, v1
goto :goto_6d
.end method
.method public static a(Landroid/content/Intent;)Z
.registers 2
const-string v0, "com.facebook.platform.status.ERROR_TYPE"
invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static b(Landroid/content/Context;)Landroid/content/Intent;
.registers 5
sget-object v0, Lcom/facebook/internal/w;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/internal/z;
new-instance v2, Landroid/content/Intent;
const-string v3, "com.facebook.platform.PLATFORM_SERVICE"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/facebook/internal/z;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v2, "android.intent.category.DEFAULT"
invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/internal/w;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_6
:goto_2d
return-object v0
:cond_2e
const/4 v0, 0x0
goto :goto_2d
.end method