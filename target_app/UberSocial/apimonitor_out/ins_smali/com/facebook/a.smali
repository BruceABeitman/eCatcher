.class public final Lcom/facebook/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field static final a:Ljava/lang/String; = "access_token"
.field static final b:Ljava/lang/String; = "expires_in"
.field static final synthetic c:Z = false
.field private static final d:J = 0x1L
.field private static final e:Ljava/util/Date;
.field private static final f:Ljava/util/Date;
.field private static final g:Ljava/util/Date;
.field private static final h:Ljava/util/Date;
.field private static final i:Lcom/facebook/c;
.field private static final j:Ljava/util/Date;
.field private final k:Ljava/util/Date;
.field private final l:Ljava/util/List;
.field private final m:Ljava/lang/String;
.field private final n:Lcom/facebook/c;
.field private final o:Ljava/util/Date;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/facebook/a;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_34
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/a;->c:Z
new-instance v0, Ljava/util/Date;
const-wide/high16 v1, -0x8000
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
sput-object v0, Lcom/facebook/a;->e:Ljava/util/Date;
new-instance v0, Ljava/util/Date;
const-wide v1, 0x7fffffffffffffffL
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
sput-object v0, Lcom/facebook/a;->f:Ljava/util/Date;
sget-object v0, Lcom/facebook/a;->f:Ljava/util/Date;
sput-object v0, Lcom/facebook/a;->g:Ljava/util/Date;
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
sput-object v0, Lcom/facebook/a;->h:Ljava/util/Date;
sget-object v0, Lcom/facebook/c;->b:Lcom/facebook/c;
sput-object v0, Lcom/facebook/a;->i:Lcom/facebook/c;
sget-object v0, Lcom/facebook/a;->e:Ljava/util/Date;
sput-object v0, Lcom/facebook/a;->j:Ljava/util/Date;
return-void
:cond_34
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p3, :cond_9
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object p3
:cond_9
iput-object p2, p0, Lcom/facebook/a;->k:Ljava/util/Date;
invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/a;->l:Ljava/util/List;
iput-object p1, p0, Lcom/facebook/a;->m:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
iput-object p5, p0, Lcom/facebook/a;->o:Ljava/util/Date;
return-void
.end method
.method public static a(Landroid/content/Intent;)Lcom/facebook/a;
.registers 5
const/4 v0, 0x0
const-string v1, "intent"
invoke-static {p0, v1}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
if-nez v1, :cond_d
:goto_c
return-object v0
:cond_d
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
sget-object v2, Lcom/facebook/c;->b:Lcom/facebook/c;
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-static {v0, v1, v2, v3}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/c;Ljava/util/Date;)Lcom/facebook/a;
move-result-object v0
goto :goto_c
.end method
.method static a(Landroid/os/Bundle;)Lcom/facebook/a;
.registers 7
const-string v0, "com.facebook.TokenCachingStrategy.Permissions"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-nez v0, :cond_28
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v3
:goto_c
new-instance v0, Lcom/facebook/a;
const-string v1, "com.facebook.TokenCachingStrategy.Token"
invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {p0, v2}, Lcom/facebook/bv;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
invoke-static {p0}, Lcom/facebook/bv;->g(Landroid/os/Bundle;)Lcom/facebook/c;
move-result-object v4
const-string v5, "com.facebook.TokenCachingStrategy.LastRefreshDate"
invoke-static {p0, v5}, Lcom/facebook/bv;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
return-object v0
:cond_28
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v3
goto :goto_c
.end method
.method static a(Landroid/os/Bundle;Lcom/facebook/c;)Lcom/facebook/a;
.registers 6
const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"
new-instance v1, Ljava/util/Date;
const-wide/16 v2, 0x0
invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
invoke-static {p0, v0, v1}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
const-string v1, "com.facebook.platform.extra.PERMISSIONS"
invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
const-string v2, "com.facebook.platform.extra.ACCESS_TOKEN"
invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0, p1}, Lcom/facebook/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/c;)Lcom/facebook/a;
move-result-object v0
return-object v0
.end method
.method static a(Lcom/facebook/a;Landroid/os/Bundle;)Lcom/facebook/a;
.registers 6
sget-boolean v0, Lcom/facebook/a;->c:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
sget-object v1, Lcom/facebook/c;->b:Lcom/facebook/c;
if-eq v0, v1, :cond_1c
iget-object v0, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
sget-object v1, Lcom/facebook/c;->c:Lcom/facebook/c;
if-eq v0, v1, :cond_1c
iget-object v0, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
sget-object v1, Lcom/facebook/c;->d:Lcom/facebook/c;
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_1c
const-string v0, "expires_in"
new-instance v1, Ljava/util/Date;
const-wide/16 v2, 0x0
invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
invoke-static {p1, v0, v1}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
const-string v1, "access_token"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/facebook/a;->c()Ljava/util/List;
move-result-object v2
iget-object v3, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
invoke-static {v2, v1, v0, v3}, Lcom/facebook/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/c;)Lcom/facebook/a;
move-result-object v0
return-object v0
.end method
.method static a(Lcom/facebook/a;Ljava/util/List;)Lcom/facebook/a;
.registers 8
new-instance v0, Lcom/facebook/a;
iget-object v1, p0, Lcom/facebook/a;->m:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/a;->k:Ljava/util/Date;
iget-object v4, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
iget-object v5, p0, Lcom/facebook/a;->o:Ljava/util/Date;
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/c;Ljava/util/List;)Lcom/facebook/a;
.registers 11
if-nez p1, :cond_18
sget-object v2, Lcom/facebook/a;->g:Ljava/util/Date;
:goto_4
if-nez p2, :cond_16
sget-object v5, Lcom/facebook/a;->h:Ljava/util/Date;
:goto_8
if-nez p3, :cond_14
sget-object v4, Lcom/facebook/a;->i:Lcom/facebook/c;
:goto_c
new-instance v0, Lcom/facebook/a;
move-object v1, p0
move-object v3, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
return-object v0
:cond_14
move-object v4, p3
goto :goto_c
:cond_16
move-object v5, p2
goto :goto_8
:cond_18
move-object v2, p1
goto :goto_4
.end method
.method static a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/c;)Lcom/facebook/a;
.registers 9
new-instance v0, Lcom/facebook/a;
sget-object v2, Lcom/facebook/a;->g:Ljava/util/Date;
sget-object v5, Lcom/facebook/a;->h:Ljava/util/Date;
move-object v1, p0
move-object v3, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
return-object v0
.end method
.method static a(Ljava/util/List;)Lcom/facebook/a;
.registers 7
new-instance v0, Lcom/facebook/a;
const-string v1, ""
sget-object v2, Lcom/facebook/a;->j:Ljava/util/Date;
sget-object v4, Lcom/facebook/c;->a:Lcom/facebook/c;
sget-object v5, Lcom/facebook/a;->h:Ljava/util/Date;
move-object v3, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
return-object v0
.end method
.method static a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/c;)Lcom/facebook/a;
.registers 5
const-string v0, "expires_in"
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-static {p1, v0, v1}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
const-string v1, "access_token"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1, v0, p2}, Lcom/facebook/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/c;)Lcom/facebook/a;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/c;Ljava/util/Date;)Lcom/facebook/a;
.registers 10
const-string v0, "access_token"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "expires_in"
invoke-static {p1, v0, p3}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v2
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
if-nez v2, :cond_16
:cond_14
const/4 v0, 0x0
:goto_15
return-object v0
:cond_16
new-instance v0, Lcom/facebook/a;
new-instance v5, Ljava/util/Date;
invoke-direct {v5}, Ljava/util/Date;-><init>()V
move-object v3, p0
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
goto :goto_15
.end method
.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/c;)Lcom/facebook/a;
.registers 10
invoke-static {p1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8
if-nez p2, :cond_d
:cond_8
invoke-static {p0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;
move-result-object v0
:goto_c
return-object v0
:cond_d
new-instance v0, Lcom/facebook/a;
new-instance v5, Ljava/util/Date;
invoke-direct {v5}, Ljava/util/Date;-><init>()V
move-object v1, p1
move-object v2, p2
move-object v3, p0
move-object v4, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
goto :goto_c
.end method
.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
.registers 10
const/4 v1, 0x0
if-nez p0, :cond_5
move-object v0, v1
:goto_4
return-object v0
:cond_5
invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Ljava/lang/Long;
if-eqz v2, :cond_25
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
move-wide v1, v0
:goto_14
const-wide/16 v3, 0x0
cmp-long v0, v1, v3
if-nez v0, :cond_36
new-instance v0, Ljava/util/Date;
const-wide v1, 0x7fffffffffffffffL
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
goto :goto_4
:cond_25
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_34
:try_start_29
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_2e
.catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_31
move-result-wide v0
move-wide v1, v0
goto :goto_14
:catch_31
move-exception v0
move-object v0, v1
goto :goto_4
:cond_34
move-object v0, v1
goto :goto_4
:cond_36
new-instance v0, Ljava/util/Date;
invoke-virtual {p2}, Ljava/util/Date;->getTime()J
move-result-wide v3
const-wide/16 v5, 0x3e8
mul-long/2addr v1, v5
add-long/2addr v1, v3
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
goto :goto_4
.end method
.method private a(Ljava/io/ObjectInputStream;)V
.registers 4
new-instance v0, Ljava/io/InvalidObjectException;
const-string v1, "Cannot readObject, serialization proxy required"
invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private a(Ljava/lang/StringBuilder;)V
.registers 4
const-string v0, " permissions:"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/facebook/a;->l:Ljava/util/List;
if-nez v0, :cond_f
const-string v0, "null"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_e
return-void
:cond_f
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ", "
iget-object v1, p0, Lcom/facebook/a;->l:Ljava/util/List;
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "]"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_e
.end method
.method private h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, "null"
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/facebook/af;->b:Lcom/facebook/af;
invoke-static {v0}, Lcom/facebook/bm;->c(Lcom/facebook/af;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;
goto :goto_6
:cond_12
const-string v0, "ACCESS_TOKEN_REMOVED"
goto :goto_6
.end method
.method private i()Ljava/lang/Object;
.registers 8
new-instance v0, Lcom/facebook/b;
iget-object v1, p0, Lcom/facebook/a;->m:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/a;->k:Ljava/util/Date;
iget-object v3, p0, Lcom/facebook/a;->l:Ljava/util/List;
iget-object v4, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
iget-object v5, p0, Lcom/facebook/a;->o:Ljava/util/Date;
const/4 v6, 0x0
invoke-direct/range {v0 .. v6}, Lcom/facebook/b;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;Lcom/facebook/a$1;)V
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/facebook/a;->k:Ljava/util/Date;
return-object v0
.end method
.method public c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/a;->l:Ljava/util/List;
return-object v0
.end method
.method public d()Lcom/facebook/c;
.registers 2
iget-object v0, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
return-object v0
.end method
.method public e()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/facebook/a;->o:Ljava/util/Date;
return-object v0
.end method
.method  f()Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "com.facebook.TokenCachingStrategy.Token"
iget-object v2, p0, Lcom/facebook/a;->m:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"
iget-object v2, p0, Lcom/facebook/a;->k:Ljava/util/Date;
invoke-static {v0, v1, v2}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
const-string v1, "com.facebook.TokenCachingStrategy.Permissions"
new-instance v2, Ljava/util/ArrayList;
iget-object v3, p0, Lcom/facebook/a;->l:Ljava/util/List;
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v1, "com.facebook.TokenCachingStrategy.AccessTokenSource"
iget-object v2, p0, Lcom/facebook/a;->n:Lcom/facebook/c;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"
iget-object v2, p0, Lcom/facebook/a;->o:Ljava/util/Date;
invoke-static {v0, v1, v2}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
return-object v0
.end method
.method  g()Z
.registers 3
iget-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iget-object v1, p0, Lcom/facebook/a;->k:Ljava/util/Date;
invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_17
:cond_15
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{AccessToken"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " token:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/facebook/a;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-direct {p0, v0}, Lcom/facebook/a;->a(Ljava/lang/StringBuilder;)V
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method