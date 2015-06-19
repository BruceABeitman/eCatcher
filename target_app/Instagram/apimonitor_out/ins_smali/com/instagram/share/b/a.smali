.class public final Lcom/instagram/share/b/a;
.super Ljava/lang/Object;
.source "FacebookAccount.java"
.field private static a:Lcom/facebook/b/b;
.field private static b:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;
return-void
.end method
.method public static a()Lcom/facebook/b/b;
.registers 2
sget-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;
if-nez v0, :cond_12
new-instance v0, Lcom/facebook/b/b;
invoke-static {}, Lcom/instagram/share/b/f;->a()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/b/b;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;
invoke-static {}, Lcom/instagram/share/b/a;->m()V
:cond_12
sget-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
.registers 3
invoke-static {p0, p1}, Lcom/instagram/share/b/a;->b(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
move-result-object v0
return-object v0
.end method
.method public static a(I)V
.registers 3
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "friends_count"
invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static a(Landroid/content/Context;)V
.registers 3
new-instance v0, Lcom/instagram/share/b/e;
invoke-direct {v0, p0}, Lcom/instagram/share/b/e;-><init>(Landroid/content/Context;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/share/b/e;->b([Ljava/lang/Object;)Lcom/instagram/common/b/a;
return-void
.end method
.method public static a(Lcom/instagram/share/b/g;)V
.registers 4
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "page_access_token"
invoke-virtual {p0}, Lcom/instagram/share/b/g;->c()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "page_id"
invoke-virtual {p0}, Lcom/instagram/share/b/g;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "page_name"
invoke-virtual {p0}, Lcom/instagram/share/b/g;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/instagram/common/a/a/q;
invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V
new-instance v1, Lcom/instagram/share/b/b;
invoke-direct {v1, p0, p1}, Lcom/instagram/share/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method public static a(Z)V
.registers 2
if-eqz p0, :cond_5
invoke-static {}, Lcom/instagram/share/b/a;->p()V
:cond_5
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {}, Lcom/instagram/share/b/a;->j()V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/analytics/d;->d()V
return-void
.end method
.method private static b(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
.registers 4
const-string v0, "fb_access_token"
invoke-virtual {p0, v0, p1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "share_to_facebook"
const-string v1, "1"
invoke-virtual {p0, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "fb_has_publish_actions"
const-string v1, "1"
invoke-virtual {p0, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public static b()V
.registers 1
const/4 v0, 0x0
invoke-static {v0}, Lcom/instagram/share/b/a;->b(Z)V
return-void
.end method
.method public static b(Z)V
.registers 6
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-static {}, Lcom/instagram/share/b/a;->n()Z
move-result v1
const-string v2, "access_token"
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v2, "access_expires"
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/b/b;->d()J
move-result-wide v3
invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v2, "last_access_update"
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/b/b;->e()J
move-result-wide v3
invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v2, "token_has_manage_pages"
invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-eqz v0, :cond_4d
if-eqz v1, :cond_49
invoke-static {}, Lcom/instagram/share/b/a;->d()V
:cond_49
:goto_49
invoke-static {}, Lcom/instagram/share/b/a;->f()V
return-void
:cond_4d
invoke-static {}, Lcom/instagram/share/b/a;->o()V
goto :goto_49
.end method
.method public static c()Z
.registers 1
sget-boolean v0, Lcom/instagram/share/b/a;->b:Z
return v0
.end method
.method public static d()V
.registers 2
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/share/b/a;->b:Z
const-string v0, "fb/store_token/"
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/share/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static e()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->b()Z
move-result v1
if-eqz v1, :cond_15
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "user_id"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_15
return-object v0
.end method
.method public static f()V
.registers 2
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v0
if-eqz v0, :cond_2d
invoke-static {}, Lcom/instagram/share/b/a;->e()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2d
new-instance v0, Lcom/instagram/share/b/i;
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/share/b/i;-><init>(Ljava/lang/String;)V
new-instance v1, Lcom/instagram/share/b/c;
invoke-direct {v1}, Lcom/instagram/share/b/c;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/share/b/i;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
new-instance v1, Lcom/instagram/common/a/a/q;
invoke-direct {v1}, Lcom/instagram/common/a/a/q;-><init>()V
invoke-virtual {v1, v0}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V
:cond_2d
return-void
.end method
.method public static g()Lcom/instagram/share/b/g;
.registers 5
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "page_id"
const-string v2, ""
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "page_name"
const-string v3, ""
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "page_access_token"
const-string v4, ""
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v3, Lcom/instagram/share/b/g;
invoke-direct {v3, v1, v2, v0}, Lcom/instagram/share/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v3
.end method
.method public static h()Z
.registers 3
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "token_has_manage_pages"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static i()I
.registers 3
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "friends_count"
const/4 v2, -0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static j()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;
return-void
.end method
.method public static k()Ljava/lang/Runnable;
.registers 1
new-instance v0, Lcom/instagram/share/b/d;
invoke-direct {v0}, Lcom/instagram/share/b/d;-><init>()V
return-object v0
.end method
.method static synthetic l()Landroid/content/SharedPreferences;
.registers 1
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method private static m()V
.registers 7
const-wide/16 v5, 0x0
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "access_token"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "access_expires"
invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
const-string v4, "last_access_update"
invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v4
if-eqz v1, :cond_20
sget-object v0, Lcom/instagram/share/b/a;->a:Lcom/facebook/b/b;
invoke-virtual/range {v0 .. v5}, Lcom/facebook/b/b;->a(Ljava/lang/String;JJ)V
:cond_20
return-void
.end method
.method private static n()Z
.registers 4
const/4 v0, 0x0
invoke-static {}, Lcom/instagram/share/b/a;->q()Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "access_token"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1c
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1d
:cond_1c
const/4 v0, 0x1
:cond_1d
return v0
.end method
.method private static o()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/share/b/a;->b:Z
return-void
.end method
.method private static p()V
.registers 2
const-string v0, "fb/clear_token/"
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/share/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private static q()Landroid/content/SharedPreferences;
.registers 1
const-string v0, "facebookPreferences"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method