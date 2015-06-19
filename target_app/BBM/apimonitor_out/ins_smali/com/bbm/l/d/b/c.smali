.class public final Lcom/bbm/l/d/b/c;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"
.implements Lcom/bbm/l/d/a;
.field public static final d:Lcom/bbm/d/a;
.field public static final e:Ljava/util/Hashtable;
.field public static final f:Ljava/util/HashSet;
.field private static h:Lcom/bbm/l/d/b/c;
.field private static p:Z
.field private static q:Lcom/bbm/j/u;
.field private static final r:Ljava/util/ArrayList;
.field private static s:Lcom/bbm/f/ac;
.field private static t:Lcom/bbm/l/d;
.field private static u:Lcom/bbm/l/e;
.field private static v:Z
.field public a:Ljava/util/List;
.field public b:Ljava/util/List;
.field public c:Ljava/lang/String;
.field  g:Lcom/bbm/l/d/b/r;
.field private i:Landroid/content/Context;
.field private j:Lcom/bbm/l/d/b/n;
.field private k:Lcom/bbm/util/bh;
.field private l:Z
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Lcom/bbm/l/d/b;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/l/d/b/c;->p:Z
const/4 v0, 0x0
sput-object v0, Lcom/bbm/l/d/b/c;->q:Lcom/bbm/j/u;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sput-object v0, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
sput-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/bbm/l/d/b/c;->r:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 8
const/4 v5, 0x3
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
new-instance v0, Lcom/bbm/l/d/b/l;
invoke-direct {v0, p0}, Lcom/bbm/l/d/b/l;-><init>(Lcom/bbm/l/d/b/c;)V
iput-object v0, p0, Lcom/bbm/l/d/b/c;->g:Lcom/bbm/l/d/b/r;
iput-object p1, p0, Lcom/bbm/l/d/b/c;->i:Landroid/content/Context;
new-instance v0, Lcom/bbm/l/d/b/n;
invoke-static {}, Lcom/bbm/l/d/b/w;->a()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/bbm/l/d/b/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
invoke-virtual {v0}, Lcom/bbm/l/d/b/n;->a()V
iput-boolean v4, v0, Lcom/bbm/l/d/b/n;->a:Z
const-string v0, "GooglePlayMethod.startUpIabHelper()"
const-string v1, "starting IAB setup."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
new-instance v1, Lcom/bbm/l/d/b/f;
invoke-direct {v1, p0}, Lcom/bbm/l/d/b/f;-><init>(Lcom/bbm/l/d/b/c;)V
invoke-virtual {v0}, Lcom/bbm/l/d/b/n;->a()V
iget-boolean v2, v0, Lcom/bbm/l/d/b/n;->c:Z
if-eqz v2, :cond_44
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "IAB helper is already set up."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_44
const-string v2, "Starting in-app billing setup."
invoke-virtual {v0, v2}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v2, Lcom/bbm/l/d/b/o;
invoke-direct {v2, v0, v1}, Lcom/bbm/l/d/b/o;-><init>(Lcom/bbm/l/d/b/n;Lcom/bbm/l/d/b/s;)V
iput-object v2, v0, Lcom/bbm/l/d/b/n;->j:Landroid/content/ServiceConnection;
new-instance v2, Landroid/content/Intent;
const-string v3, "com.android.vending.billing.InAppBillingService.BIND"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "com.android.vending"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, v0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
if-nez v3, :cond_88
const-string v0, "IabHelper context is null"
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v2, "Billing service unavailable on device."
invoke-direct {v0, v5, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-interface {v1, v0}, Lcom/bbm/l/d/b/s;->a(Lcom/bbm/l/d/b/u;)V
:goto_71
sget-object v0, Lcom/bbm/l/d/b/c;->s:Lcom/bbm/f/ac;
if-nez v0, :cond_87
new-instance v0, Lcom/bbm/l/d/b/d;
invoke-direct {v0, p0}, Lcom/bbm/l/d/b/d;-><init>(Lcom/bbm/l/d/b/c;)V
sput-object v0, Lcom/bbm/l/d/b/c;->s:Lcom/bbm/f/ac;
sget-object v0, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
sget-object v1, Lcom/bbm/l/d/b/c;->s:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
:cond_87
return-void
:cond_88
iget-object v3, v0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
if-nez v3, :cond_a2
const-string v0, "IabHelper manager is null"
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v2, "Billing service unavailable on device."
invoke-direct {v0, v5, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-interface {v1, v0}, Lcom/bbm/l/d/b/s;->a(Lcom/bbm/l/d/b/u;)V
goto :goto_71
:cond_a2
invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v3
if-nez v3, :cond_ba
const-string v0, "IabHelper queryIntentServices returned null"
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v2, "Billing service unavailable on device."
invoke-direct {v0, v5, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-interface {v1, v0}, Lcom/bbm/l/d/b/s;->a(Lcom/bbm/l/d/b/u;)V
goto :goto_71
:cond_ba
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_c9
iget-object v1, v0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
iget-object v0, v0, Lcom/bbm/l/d/b/n;->j:Landroid/content/ServiceConnection;
const/4 v3, 0x1
invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
goto :goto_71
:cond_c9
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v2, "Billing service unavailable on device."
invoke-direct {v0, v5, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-interface {v1, v0}, Lcom/bbm/l/d/b/s;->a(Lcom/bbm/l/d/b/u;)V
goto :goto_71
.end method
.method static synthetic a(Lcom/bbm/j/u;)Lcom/bbm/j/u;
.registers 1
sput-object p0, Lcom/bbm/l/d/b/c;->q:Lcom/bbm/j/u;
return-object p0
.end method
.method public static a(Landroid/content/Context;)Lcom/bbm/l/d/b/c;
.registers 2
sget-object v0, Lcom/bbm/l/d/b/c;->h:Lcom/bbm/l/d/b/c;
if-nez v0, :cond_b
new-instance v0, Lcom/bbm/l/d/b/c;
invoke-direct {v0, p0}, Lcom/bbm/l/d/b/c;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/bbm/l/d/b/c;->h:Lcom/bbm/l/d/b/c;
:cond_b
sget-object v0, Lcom/bbm/l/d/b/c;->h:Lcom/bbm/l/d/b/c;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/l/d/b/c;Lcom/bbm/util/bh;)Lcom/bbm/util/bh;
.registers 2
iput-object p1, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/l/d/b/c;J)V
.registers 9
const-wide/16 v4, 0x7d0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sub-long/2addr v0, p1
cmp-long v2, v0, v4
if-gez v2, :cond_1b
new-instance v2, Landroid/os/Handler;
invoke-direct {v2}, Landroid/os/Handler;-><init>()V
new-instance v3, Lcom/bbm/l/d/b/k;
invoke-direct {v3, p0}, Lcom/bbm/l/d/b/k;-><init>(Lcom/bbm/l/d/b/c;)V
sub-long v0, v4, v0
invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_1a
return-void
:cond_1b
invoke-static {}, Lcom/bbm/util/fb;->a()V
goto :goto_1a
.end method
.method static synthetic a(Lcom/bbm/l/d/b/c;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/l/d/b/c;->l:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/l/d/b/c;)Lcom/bbm/l/d/b;
.registers 2
iget-object v0, p0, Lcom/bbm/l/d/b/c;->o:Lcom/bbm/l/d/b;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/l/d/b/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/l/d/b/c;->m:Ljava/lang/String;
return-object v0
.end method
.method static synthetic j()Ljava/util/ArrayList;
.registers 1
sget-object v0, Lcom/bbm/l/d/b/c;->r:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic k()Lcom/bbm/l/d;
.registers 1
sget-object v0, Lcom/bbm/l/d/b/c;->t:Lcom/bbm/l/d;
return-object v0
.end method
.method static synthetic l()Lcom/bbm/l/d;
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/bbm/l/d/b/c;->t:Lcom/bbm/l/d;
return-object v0
.end method
.method static synthetic m()Lcom/bbm/l/e;
.registers 1
sget-object v0, Lcom/bbm/l/d/b/c;->u:Lcom/bbm/l/e;
return-object v0
.end method
.method static synthetic n()Z
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/l/d/b/c;->p:Z
return v0
.end method
.method static synthetic o()Lcom/bbm/j/u;
.registers 1
sget-object v0, Lcom/bbm/l/d/b/c;->q:Lcom/bbm/j/u;
return-object v0
.end method
.method static synthetic p()Z
.registers 1
sget-boolean v0, Lcom/bbm/l/d/b/c;->v:Z
return v0
.end method
.method public final a(Lcom/bbm/l/d/c;Lcom/bbm/l/e;)Ljava/lang/String;
.registers 7
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v2, "type"
invoke-virtual {p2}, Lcom/bbm/l/e;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {p1}, Lcom/bbm/l/d/c;->a()Lcom/bbm/l/d/d;
move-result-object v2
sget-object v3, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;
if-ne v2, v3, :cond_43
check-cast p1, Lcom/bbm/l/d/b/x;
const-string v2, "signature"
iget-object v3, p1, Lcom/bbm/l/d/b/x;->q:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "purchaseToken"
iget-object v3, p1, Lcom/bbm/l/d/b/x;->o:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "productId"
iget-object v3, p1, Lcom/bbm/l/d/b/x;->k:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "pkgName"
iget-object v3, p1, Lcom/bbm/l/d/b/x;->j:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "android"
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_3e
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3e} :catch_92
:goto_3e
:cond_3e
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:try_start_43
:cond_43
invoke-interface {p1}, Lcom/bbm/l/d/c;->a()Lcom/bbm/l/d/d;
move-result-object v2
sget-object v3, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;
if-ne v2, v3, :cond_3e
check-cast p1, Lcom/bbm/l/d/a/b;
const-string v2, "platform"
const-string v3, "Android"
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "productId"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->g:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "licensetype"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->f:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "transacationtype"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->d:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "transacationid"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->c:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "bangocontentid"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->a:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "bangouserid"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->b:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "price"
iget-object v3, p1, Lcom/bbm/l/d/a/b;->e:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "currency"
const-string v3, "null"
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "bbmcarrierbilling"
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_91
.catch Lorg/json/JSONException; {:try_start_43 .. :try_end_91} :catch_92
goto :goto_3e
:catch_92
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_3e
.end method
.method public final a(Landroid/app/Activity;ZLcom/bbm/l/a;)V
.registers 11
sget-boolean v0, Lcom/bbm/l/d/b/c;->p:Z
if-eqz v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_19
if-eqz p1, :cond_4
const v0, 0x7f0e06dc
invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_4
:cond_19
const/4 v0, 0x1
sput-boolean v0, Lcom/bbm/l/d/b/c;->p:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
if-eqz p1, :cond_2d
const v0, 0x7f0e0627
invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, -0x1
invoke-static {p1, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
:cond_2d
sget-object v0, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->A()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
const/4 v6, 0x0
new-instance v0, Lcom/bbm/l/d/b/h;
move-object v1, p0
move v2, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/bbm/l/d/b/h;-><init>(Lcom/bbm/l/d/b/c;ZJLcom/bbm/l/a;)V
invoke-virtual {p0, v6, v0}, Lcom/bbm/l/d/b/c;->a(Ljava/lang/String;Lcom/bbm/l/d/b/t;)V
goto :goto_4
.end method
.method public final a(Lcom/bbm/l/d;)V
.registers 2
sput-object p1, Lcom/bbm/l/d/b/c;->t:Lcom/bbm/l/d;
return-void
.end method
.method public final a(Lcom/bbm/l/e;)V
.registers 2
sput-object p1, Lcom/bbm/l/d/b/c;->u:Lcom/bbm/l/e;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final a(Ljava/lang/String;Lcom/bbm/l/d/b/t;)V
.registers 4
iget-object v0, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
:cond_b
iget-object v0, p0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
if-nez v0, :cond_16
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
:cond_16
if-eqz p1, :cond_1d
iget-object v0, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1d
iget-object v0, p0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-boolean v0, p0, Lcom/bbm/l/d/b/c;->l:Z
if-eqz v0, :cond_29
invoke-virtual {p0}, Lcom/bbm/l/d/b/c;->i()V
:cond_29
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/bbm/l/d/b/x;)V
.registers 4
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/l/d/b/c;->l:Z
return v0
.end method
.method public final a(IILandroid/content/Intent;)Z
.registers 5
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
invoke-virtual {v0, p1, p2, p3}, Lcom/bbm/l/d/b/n;->a(IILandroid/content/Intent;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final a(Landroid/app/Activity;Ljava/lang/String;ILcom/bbm/l/d/b;Ljava/lang/String;)Z
.registers 16
const/4 v9, 0x0
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
if-eqz v1, :cond_3f
iput-object p4, p0, Lcom/bbm/l/d/b/c;->o:Lcom/bbm/l/d/b;
iput-object p2, p0, Lcom/bbm/l/d/b/c;->m:Ljava/lang/String;
iput-object p5, p0, Lcom/bbm/l/d/b/c;->n:Ljava/lang/String;
iget-object v7, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
iget-object v8, p0, Lcom/bbm/l/d/b/c;->g:Lcom/bbm/l/d/b/r;
iget-object v5, p0, Lcom/bbm/l/d/b/c;->c:Ljava/lang/String;
const-string v4, "inapp"
invoke-virtual {v7}, Lcom/bbm/l/d/b/n;->a()V
const-string v0, "launchPurchaseFlow"
invoke-virtual {v7, v0}, Lcom/bbm/l/d/b/n;->a(Ljava/lang/String;)V
const-string v0, "launchPurchaseFlow"
invoke-virtual {v7, v0}, Lcom/bbm/l/d/b/n;->b(Ljava/lang/String;)V
const-string v0, "subs"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
iget-boolean v0, v7, Lcom/bbm/l/d/b/n;->e:Z
if-nez v0, :cond_40
new-instance v0, Lcom/bbm/l/d/b/u;
const/16 v1, -0x3f1
const-string v2, "Subscriptions are not available."
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-virtual {v7}, Lcom/bbm/l/d/b/n;->b()V
if-eqz v8, :cond_3e
invoke-interface {v8, v0, v9}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:goto_3e
:cond_3e
const/4 v0, 0x1
:cond_3f
return v0
:cond_40
:try_start_40
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Constructing buy intent for "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", item type: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
iget-object v0, v7, Lcom/bbm/l/d/b/n;->i:Lcom/a/b/a/a;
const/4 v1, 0x3
iget-object v2, v7, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
move-object v3, p2
invoke-interface/range {v0 .. v5}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/bbm/l/d/b/n;->a(Landroid/os/Bundle;)I
move-result v1
if-eqz v1, :cond_bf
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Unable to buy item, Error response: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/bbm/l/d/b/n;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
invoke-virtual {v7}, Lcom/bbm/l/d/b/n;->b()V
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v2, "Unable to buy item"
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
if-eqz v8, :cond_3e
const/4 v1, 0x0
invoke-interface {v8, v0, v1}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:try_end_96
.catch Landroid/content/IntentSender$SendIntentException; {:try_start_40 .. :try_end_96} :catch_97
.catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_96} :catch_114
goto :goto_3e
:catch_97
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "SendIntentException while launching purchase flow for sku "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V
invoke-virtual {v7}, Lcom/bbm/l/d/b/n;->b()V
new-instance v0, Lcom/bbm/l/d/b/u;
const/16 v1, -0x3ec
const-string v2, "Failed to send intent."
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
if-eqz v8, :cond_3e
invoke-interface {v8, v0, v9}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
goto :goto_3e
:cond_bf
:try_start_bf
const-string v1, "BUY_INTENT"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Launching buy intent for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ". Request code: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
iput p3, v7, Lcom/bbm/l/d/b/n;->k:I
iput-object v8, v7, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
iput-object v4, v7, Lcom/bbm/l/d/b/n;->l:Ljava/lang/String;
invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
move-result-object v1
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v4
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v5
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v6
move-object v0, p1
move v2, p3
invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
:try_end_112
.catch Landroid/content/IntentSender$SendIntentException; {:try_start_bf .. :try_end_112} :catch_97
.catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_112} :catch_114
goto/16 :goto_3e
:catch_114
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "RemoteException while launching purchase flow for sku "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
invoke-virtual {v7}, Lcom/bbm/l/d/b/n;->b()V
new-instance v0, Lcom/bbm/l/d/b/u;
const/16 v1, -0x3e9
const-string v2, "Remote exception while starting purchase flow"
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
if-eqz v8, :cond_3e
invoke-interface {v8, v0, v9}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
goto/16 :goto_3e
.end method
.method public final b()Z
.registers 2
sget-boolean v0, Lcom/bbm/l/d/b/c;->p:Z
return v0
.end method
.method public final c()V
.registers 2
const/4 v0, 0x1
sput-boolean v0, Lcom/bbm/l/d/b/c;->v:Z
return-void
.end method
.method public final d()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
return-object v0
.end method
.method public final e()Lcom/bbm/l/d;
.registers 2
sget-object v0, Lcom/bbm/l/d/b/c;->t:Lcom/bbm/l/d;
return-object v0
.end method
.method public final f()Ljava/util/ArrayList;
.registers 2
sget-object v0, Lcom/bbm/l/d/b/c;->r:Ljava/util/ArrayList;
return-object v0
.end method
.method public final g()V
.registers 2
sget-object v0, Lcom/bbm/l/d/b/c;->r:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
return-void
.end method
.method public final h()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_34
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
const-string v1, "Disposing."
invoke-virtual {v0, v1}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/l/d/b/n;->c:Z
iget-object v1, v0, Lcom/bbm/l/d/b/n;->j:Landroid/content/ServiceConnection;
if-eqz v1, :cond_29
const-string v1, "Unbinding from service."
invoke-virtual {v0, v1}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
iget-object v1, v0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
if-eqz v1, :cond_29
iget-object v1, v0, Lcom/bbm/l/d/b/n;->i:Lcom/a/b/a/a;
if-eqz v1, :cond_29
iget-object v1, v0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
iget-object v2, v0, Lcom/bbm/l/d/b/n;->j:Landroid/content/ServiceConnection;
invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_29
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/l/d/b/n;->d:Z
iput-object v3, v0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
iput-object v3, v0, Lcom/bbm/l/d/b/n;->j:Landroid/content/ServiceConnection;
iput-object v3, v0, Lcom/bbm/l/d/b/n;->i:Lcom/a/b/a/a;
iput-object v3, v0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
:cond_34
iput-object v3, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
iput-object v3, p0, Lcom/bbm/l/d/b/c;->k:Lcom/bbm/util/bh;
sget-object v0, Lcom/bbm/l/d/b/c;->s:Lcom/bbm/f/ac;
if-eqz v0, :cond_5a
sget-object v0, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
sget-object v1, Lcom/bbm/l/d/b/c;->s:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
sput-object v3, Lcom/bbm/l/d/b/c;->s:Lcom/bbm/f/ac;
sget-object v0, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
sget-object v0, Lcom/bbm/l/d/b/c;->r:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
sput-object v3, Lcom/bbm/l/d/b/c;->t:Lcom/bbm/l/d;
:cond_5a
sput-object v3, Lcom/bbm/l/d/b/c;->h:Lcom/bbm/l/d/b/c;
return-void
.end method
.method public final i()V
.registers 8
const/4 v6, 0x0
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
if-eqz v0, :cond_3d
const/4 v0, 0x0
:try_start_a
iput-boolean v0, p0, Lcom/bbm/l/d/b/c;->l:Z
iget-object v0, p0, Lcom/bbm/l/d/b/c;->j:Lcom/bbm/l/d/b/n;
iget-object v1, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
new-instance v2, Lcom/bbm/l/d/b/g;
invoke-direct {v2, p0}, Lcom/bbm/l/d/b/g;-><init>(Lcom/bbm/l/d/b/c;)V
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
invoke-virtual {v0}, Lcom/bbm/l/d/b/n;->a()V
const-string v4, "queryInventory"
invoke-virtual {v0, v4}, Lcom/bbm/l/d/b/n;->a(Ljava/lang/String;)V
const-string v4, "refresh inventory"
invoke-virtual {v0, v4}, Lcom/bbm/l/d/b/n;->b(Ljava/lang/String;)V
new-instance v4, Ljava/lang/Thread;
new-instance v5, Lcom/bbm/l/d/b/p;
invoke-direct {v5, v0, v1, v2, v3}, Lcom/bbm/l/d/b/p;-><init>(Lcom/bbm/l/d/b/n;Ljava/util/List;Lcom/bbm/l/d/b/t;Landroid/os/Handler;)V
invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v4}, Ljava/lang/Thread;->start()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/l/d/b/c;->l:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
:cond_3d
:try_end_3d
.catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_3d} :catch_3e
return-void
:catch_3e
move-exception v0
iget-object v0, p0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
iput-object v6, p0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
iput-object v6, p0, Lcom/bbm/l/d/b/c;->a:Ljava/util/List;
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/bbm/l/d/b/c;->l:Z
if-eqz v0, :cond_3d
new-instance v1, Lcom/bbm/l/d/b/u;
const/16 v2, -0x3f0
const-string v3, "Unable to complete inventory query"
invoke-direct {v1, v2, v3}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_57
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/b/t;
invoke-interface {v0, v1, v6}, Lcom/bbm/l/d/b/t;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
goto :goto_57
.end method