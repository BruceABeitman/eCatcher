.class final Lcom/google/android/gms/internal/aq$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 14
const/4 v1, 0x1
const/4 v2, 0x0
const-string v0, "urls"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_12
const-string v0, "URLs missing in canOpenURLs GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
:goto_11
return-void
:cond_12
const-string v3, ","
invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v6
array-length v7, v4
move v3, v2
:goto_27
if-ge v3, v7, :cond_63
aget-object v8, v4, v3
const-string v0, ";"
const/4 v9, 0x2
invoke-virtual {v8, v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v0
aget-object v9, v0, v2
invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v9
array-length v10, v0
if-le v10, v1, :cond_5e
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:goto_41
invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v9
new-instance v10, Landroid/content/Intent;
invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v0, 0x1
invoke-virtual {v6, v10, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v0
if-eqz v0, :cond_61
move v0, v1
:goto_53
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_27
:cond_5e
const-string v0, "android.intent.action.VIEW"
goto :goto_41
:cond_61
move v0, v2
goto :goto_53
:cond_63
const-string v0, "openableURLs"
invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_11
.end method