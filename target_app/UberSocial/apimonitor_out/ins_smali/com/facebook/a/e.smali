.class public Lcom/facebook/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "fbconnect://success"
.field public static final b:Ljava/lang/String; = "fbconnect://cancel"
.field public static final c:Ljava/lang/String; = "access_token"
.field public static final d:Ljava/lang/String; = "expires_in"
.field public static final e:Ljava/lang/String; = "service_disabled"
.field public static final f:Landroid/net/Uri; = null
.field public static final g:Ljava/lang/String; = "aid"
.field public static final h:I = -0x1
.field protected static i:Ljava/lang/String; = null
.field protected static j:Ljava/lang/String; = null
.field protected static k:Ljava/lang/String; = null
.field public static final l:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"
.field private static final m:Ljava/lang/String; = "oauth"
.field private static final n:I = 0x7f99
.field private final A:J
.field private final o:Ljava/lang/Object;
.field private p:Ljava/lang/String;
.field private q:J
.field private r:J
.field private s:Ljava/lang/String;
.field private t:Landroid/app/Activity;
.field private u:[Ljava/lang/String;
.field private v:Lcom/facebook/aw;
.field private volatile w:Lcom/facebook/aw;
.field private x:Z
.field private y:Lcom/facebook/a/h;
.field private volatile z:Lcom/facebook/aw;
.method static constructor <clinit>()V
.registers 1
const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/a/e;->f:Landroid/net/Uri;
const-string v0, "https://m.facebook.com/dialog/"
sput-object v0, Lcom/facebook/a/e;->i:Ljava/lang/String;
const-string v0, "https://graph.facebook.com/"
sput-object v0, Lcom/facebook/a/e;->j:Ljava/lang/String;
const-string v0, "https://api.facebook.com/restserver.php"
sput-object v0, Lcom/facebook/a/e;->k:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
iput-wide v1, p0, Lcom/facebook/a/e;->q:J
iput-wide v1, p0, Lcom/facebook/a/e;->r:J
const-wide/32 v0, 0x5265c00
iput-wide v0, p0, Lcom/facebook/a/e;->A:J
if-nez p1, :cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
iput-object p1, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/facebook/a/e;J)J
.registers 3
iput-wide p1, p0, Lcom/facebook/a/e;->q:J
return-wide p1
.end method
.method public static a(Landroid/content/ContentResolver;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/facebook/bm;->a(Landroid/content/ContentResolver;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/facebook/a/e;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/facebook/a/e;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a([Ljava/lang/String;)Ljava/util/List;
.registers 2
invoke-static {p0}, Lcom/facebook/a/e;->b([Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/bj;Lcom/facebook/a/f;)V
.registers 10
const/4 v1, 0x0
const-string v0, "authorize"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
new-instance v0, Lcom/facebook/ba;
invoke-direct {v0, p1}, Lcom/facebook/ba;-><init>(Landroid/content/Context;)V
iget-object v2, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/facebook/ba;->a(Ljava/lang/String;)Lcom/facebook/ba;
move-result-object v0
invoke-direct {p0}, Lcom/facebook/a/e;->i()Lcom/facebook/bv;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/facebook/ba;->a(Lcom/facebook/bv;)Lcom/facebook/ba;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/ba;->a()Lcom/facebook/aw;
move-result-object v0
iput-object v0, p0, Lcom/facebook/a/e;->v:Lcom/facebook/aw;
iput-object p1, p0, Lcom/facebook/a/e;->t:Landroid/app/Activity;
if-eqz p2, :cond_50
move-object v0, p2
:goto_24
iput-object v0, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
new-instance v0, Lcom/facebook/a/e$1;
invoke-direct {v0, p0, p5}, Lcom/facebook/a/e$1;-><init>(Lcom/facebook/a/e;Lcom/facebook/a/f;)V
new-instance v2, Lcom/facebook/bc;
invoke-direct {v2, p1}, Lcom/facebook/bc;-><init>(Landroid/app/Activity;)V
invoke-virtual {v2, v0}, Lcom/facebook/bc;->b(Lcom/facebook/bf;)Lcom/facebook/bc;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/facebook/bc;->b(Lcom/facebook/bj;)Lcom/facebook/bc;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/bc;->b(I)Lcom/facebook/bc;
move-result-object v0
invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/facebook/bc;->b(Ljava/util/List;)Lcom/facebook/bc;
move-result-object v2
iget-object v3, p0, Lcom/facebook/a/e;->v:Lcom/facebook/aw;
iget-object v0, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
array-length v0, v0
if-lez v0, :cond_53
const/4 v0, 0x1
:goto_4c
invoke-direct {p0, v3, v2, v0}, Lcom/facebook/a/e;->a(Lcom/facebook/aw;Lcom/facebook/bc;Z)V
return-void
:cond_50
new-array v0, v1, [Ljava/lang/String;
goto :goto_24
:cond_53
move v0, v1
goto :goto_4c
.end method
.method static synthetic a(Lcom/facebook/a/e;Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;Lcom/facebook/a/f;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/a/e;->a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;Lcom/facebook/a/f;)V
return-void
.end method
.method private a(Lcom/facebook/aw;Lcom/facebook/bc;Z)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p2, v0}, Lcom/facebook/bc;->a(Z)V
if-eqz p3, :cond_a
invoke-virtual {p1, p2}, Lcom/facebook/aw;->b(Lcom/facebook/bc;)V
:goto_9
return-void
:cond_a
invoke-virtual {p1, p2}, Lcom/facebook/aw;->a(Lcom/facebook/bc;)V
goto :goto_9
.end method
.method private a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;Lcom/facebook/a/f;)V
.registers 10
invoke-virtual {p1}, Lcom/facebook/aw;->a()Landroid/os/Bundle;
move-result-object v1
sget-object v0, Lcom/facebook/bk;->d:Lcom/facebook/bk;
if-ne p2, v0, :cond_24
const/4 v0, 0x0
iget-object v2, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v2
:try_start_c
iget-object v3, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
if-eq p1, v3, :cond_17
iget-object v0, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
iput-object p1, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/facebook/a/e;->x:Z
:cond_17
monitor-exit v2
:try_end_18
.catchall {:try_start_c .. :try_end_18} :catchall_21
if-eqz v0, :cond_1d
invoke-virtual {v0}, Lcom/facebook/aw;->i()V
:cond_1d
invoke-interface {p4, v1}, Lcom/facebook/a/f;->a(Landroid/os/Bundle;)V
:goto_20
:cond_20
return-void
:catchall_21
move-exception v0
:try_start_22
monitor-exit v2
:try_end_23
.catchall {:try_start_22 .. :try_end_23} :catchall_21
throw v0
:cond_24
if-eqz p3, :cond_20
instance-of v0, p3, Lcom/facebook/v;
if-eqz v0, :cond_2e
invoke-interface {p4}, Lcom/facebook/a/f;->a()V
goto :goto_20
:cond_2e
instance-of v0, p3, Lcom/facebook/r;
if-eqz v0, :cond_5d
if-eqz v1, :cond_5d
const-string v0, "com.facebook.sdk.WebViewErrorCode"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5d
const-string v0, "com.facebook.sdk.FailingUrl"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5d
new-instance v0, Lcom/facebook/a/d;
invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
const-string v3, "com.facebook.sdk.WebViewErrorCode"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
const-string v4, "com.facebook.sdk.FailingUrl"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v2, v3, v1}, Lcom/facebook/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {p4, v0}, Lcom/facebook/a/f;->a(Lcom/facebook/a/d;)V
goto :goto_20
:cond_5d
new-instance v0, Lcom/facebook/a/k;
invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;)V
invoke-interface {p4, v0}, Lcom/facebook/a/f;->a(Lcom/facebook/a/k;)V
goto :goto_20
.end method
.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
.registers 5
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v1
if-nez v1, :cond_c
:goto_b
return v0
:cond_c
iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/facebook/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
goto :goto_b
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x0
:try_start_1
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/16 v2, 0x40
invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_a
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_24
move-result-object v1
iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
array-length v3, v2
move v1, v0
:goto_f
if-ge v1, v3, :cond_20
aget-object v4, v2, v1
invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
move-result-object v4
const-string v5, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_21
const/4 v0, 0x1
:cond_20
:goto_20
return v0
:cond_21
add-int/lit8 v1, v1, 0x1
goto :goto_f
:catch_24
move-exception v1
goto :goto_20
.end method
.method static synthetic a(Lcom/facebook/a/e;[Ljava/lang/String;)[Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Ljava/util/List;)[Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/facebook/a/e;->b(Ljava/util/List;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/facebook/a/e;J)J
.registers 3
iput-wide p1, p0, Lcom/facebook/a/e;->r:J
return-wide p1
.end method
.method static synthetic b(Lcom/facebook/a/e;)Lcom/facebook/aw;
.registers 2
iget-object v0, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
return-object v0
.end method
.method private static b([Ljava/lang/String;)Ljava/util/List;
.registers 2
if-eqz p0, :cond_7
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
goto :goto_6
.end method
.method private static b(Ljava/util/List;)[Ljava/lang/String;
.registers 4
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
new-array v2, v0, [Ljava/lang/String;
if-eqz p0, :cond_19
const/4 v0, 0x0
move v1, v0
:goto_a
array-length v0, v2
if-ge v1, v0, :cond_19
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_19
return-object v2
.end method
.method static synthetic c(Lcom/facebook/a/e;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/a/e;->q:J
return-wide v0
.end method
.method static synthetic d(Lcom/facebook/a/e;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/a/e;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/a/e;->r:J
return-wide v0
.end method
.method private e(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/facebook/a/e;->z:Lcom/facebook/aw;
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot call %s after setSession has been called."
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
return-void
.end method
.method private i()Lcom/facebook/bv;
.registers 3
iget-object v0, p0, Lcom/facebook/a/e;->y:Lcom/facebook/a/h;
if-nez v0, :cond_c
new-instance v0, Lcom/facebook/a/h;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/a/h;-><init>(Lcom/facebook/a/e;Lcom/facebook/a/e$1;)V
iput-object v0, p0, Lcom/facebook/a/e;->y:Lcom/facebook/a/h;
:cond_c
iget-object v0, p0, Lcom/facebook/a/e;->y:Lcom/facebook/a/h;
return-object v0
.end method
.method public a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/a/e;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/os/Bundle;)Ljava/lang/String;
.registers 4
const-string v0, "method"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
const/4 v0, 0x0
const-string v1, "GET"
invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/a/e;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "GET"
invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/a/e;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 4
const-string v0, "GET"
invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/a/e;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/a/e;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(IILandroid/content/Intent;)V
.registers 7
const/4 v2, 0x0
const-string v0, "authorizeCallback"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/a/e;->v:Lcom/facebook/aw;
if-eqz v0, :cond_18
iget-object v1, p0, Lcom/facebook/a/e;->t:Landroid/app/Activity;
invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/aw;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_18
iput-object v2, p0, Lcom/facebook/a/e;->v:Lcom/facebook/aw;
iput-object v2, p0, Lcom/facebook/a/e;->t:Landroid/app/Activity;
iput-object v2, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
:cond_18
return-void
.end method
.method public a(J)V
.registers 7
const-string v0, "setAccessExpires"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_8
iput-wide p1, p0, Lcom/facebook/a/e;->q:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/facebook/a/e;->r:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/a/e;->x:Z
monitor-exit v1
return-void
:catchall_15
move-exception v0
monitor-exit v1
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_15
throw v0
.end method
.method public a(Landroid/app/Activity;Lcom/facebook/a/f;)V
.registers 9
const/4 v0, 0x0
new-array v2, v0, [Ljava/lang/String;
const/16 v3, 0x7f99
sget-object v4, Lcom/facebook/bj;->a:Lcom/facebook/bj;
move-object v0, p0
move-object v1, p1
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/bj;Lcom/facebook/a/f;)V
return-void
.end method
.method public a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/a/f;)V
.registers 11
if-ltz p3, :cond_d
sget-object v4, Lcom/facebook/bj;->a:Lcom/facebook/bj;
:goto_4
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/bj;Lcom/facebook/a/f;)V
return-void
:cond_d
sget-object v4, Lcom/facebook/bj;->c:Lcom/facebook/bj;
goto :goto_4
.end method
.method public a(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/a/f;)V
.registers 10
const/16 v3, 0x7f99
sget-object v4, Lcom/facebook/bj;->a:Lcom/facebook/bj;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/bj;Lcom/facebook/a/f;)V
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/f;)V
.registers 7
const-string v0, "display"
const-string v1, "touch"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "redirect_uri"
const-string v1, "fbconnect://success"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "oauth"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
const-string v0, "type"
const-string v1, "user_agent"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "client_id"
iget-object v1, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_24
:goto_24
const-string v0, "android.permission.INTERNET"
invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_4b
const-string v0, "Error"
const-string v1, "Application requires permission to access the Internet"
invoke-static {p1, v0, v1}, Lcom/facebook/a/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:goto_33
return-void
:cond_34
const-string v0, "app_id"
iget-object v1, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/a/e;->b()Z
move-result v0
if-eqz v0, :cond_24
const-string v0, "access_token"
invoke-virtual {p0}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:cond_4b
new-instance v0, Lcom/facebook/a/l;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/a/l;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/f;)V
invoke-virtual {v0}, Lcom/facebook/a/l;->show()V
goto :goto_33
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/f;)V
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/a/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/f;)V
return-void
.end method
.method public a(Lcom/facebook/aw;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "session cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v1, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_d
iput-object p1, p0, Lcom/facebook/a/e;->z:Lcom/facebook/aw;
monitor-exit v1
return-void
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_d .. :try_end_13} :catchall_11
throw v0
.end method
.method public a(Ljava/lang/String;JJ)V
.registers 8
const-string v0, "setTokenFromCache"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_8
iput-object p1, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
iput-wide p2, p0, Lcom/facebook/a/e;->q:J
iput-wide p4, p0, Lcom/facebook/a/e;->r:J
monitor-exit v1
return-void
:catchall_10
move-exception v0
monitor-exit v1
:try_end_12
.catchall {:try_start_8 .. :try_end_12} :catchall_10
throw v0
.end method
.method public a(Z)V
.registers 2
invoke-static {p1}, Lcom/facebook/bm;->a(Z)V
return-void
.end method
.method public a()Z
.registers 5
const-string v0, "shouldExtendAccessToken"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/a/e;->b()Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/facebook/a/e;->r:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
cmp-long v0, v0, v2
if-ltz v0, :cond_1b
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public a(Landroid/content/Context;Lcom/facebook/a/g;)Z
.registers 6
const-string v0, "extendAccessToken"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.facebook.katana"
const-string v2, "com.facebook.katana.platform.TokenRefreshService"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-direct {p0, p1, v0}, Lcom/facebook/a/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v1
if-nez v1, :cond_19
const/4 v0, 0x0
:goto_18
return v0
:cond_19
new-instance v1, Lcom/facebook/a/j;
invoke-direct {v1, p0, p1, p2}, Lcom/facebook/a/j;-><init>(Lcom/facebook/a/e;Landroid/content/Context;Lcom/facebook/a/g;)V
const/4 v2, 0x1
invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
goto :goto_18
.end method
.method  b(Landroid/content/Context;)Ljava/lang/String;
.registers 9
const-string v0, "logout"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "method"
const-string v2, "auth.expireSession"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/facebook/a/e;->a(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v3
:try_start_1c
iget-object v4, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
const/4 v5, 0x0
iput-object v5, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
const/4 v5, 0x0
iput-object v5, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
const-wide/16 v5, 0x0
iput-wide v5, p0, Lcom/facebook/a/e;->q:J
iput-wide v1, p0, Lcom/facebook/a/e;->r:J
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/facebook/a/e;->x:Z
monitor-exit v3
:try_end_2e
.catchall {:try_start_1c .. :try_end_2e} :catchall_34
if-eqz v4, :cond_33
invoke-virtual {v4}, Lcom/facebook/aw;->j()V
:cond_33
return-object v0
:catchall_34
move-exception v0
:try_start_35
monitor-exit v3
:try_end_36
.catchall {:try_start_35 .. :try_end_36} :catchall_34
throw v0
.end method
.method  b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const-string v0, "format"
const-string v1, "json"
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/a/e;->b()Z
move-result v0
if-eqz v0, :cond_16
const-string v0, "access_token"
invoke-virtual {p0}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_16
if-eqz p1, :cond_30
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/facebook/a/e;->j:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2b
invoke-static {v0, p3, p2}, Lcom/facebook/a/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_30
sget-object v0, Lcom/facebook/a/e;->k:Ljava/lang/String;
goto :goto_2b
.end method
.method public b(Ljava/lang/String;)V
.registers 6
const-string v0, "setAccessToken"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_8
iput-object p1, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/facebook/a/e;->r:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/a/e;->x:Z
monitor-exit v1
return-void
:catchall_15
move-exception v0
monitor-exit v1
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_15
throw v0
.end method
.method public b()Z
.registers 5
invoke-virtual {p0}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/facebook/a/e;->e()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_1c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p0}, Lcom/facebook/a/e;->e()J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_1e
:cond_1c
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public b(Landroid/content/Context;Lcom/facebook/a/g;)Z
.registers 4
const-string v0, "extendAccessTokenIfNeeded"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/a/e;->a()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0, p1, p2}, Lcom/facebook/a/e;->a(Landroid/content/Context;Lcom/facebook/a/g;)Z
move-result v0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method public final c()Lcom/facebook/aw;
.registers 8
const/4 v1, 0x0
const/4 v2, 0x0
:cond_2
iget-object v3, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v3
:try_start_5
iget-object v0, p0, Lcom/facebook/a/e;->z:Lcom/facebook/aw;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/facebook/a/e;->z:Lcom/facebook/aw;
monitor-exit v3
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
if-nez v0, :cond_15
iget-boolean v0, p0, Lcom/facebook/a/e;->x:Z
if-nez v0, :cond_1c
:cond_15
iget-object v0, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
monitor-exit v3
goto :goto_c
:catchall_19
move-exception v0
monitor-exit v3
:try_end_1b
.catchall {:try_start_5 .. :try_end_1b} :catchall_19
throw v0
:try_start_1c
:cond_1c
iget-object v0, p0, Lcom/facebook/a/e;->p:Ljava/lang/String;
iget-object v4, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
monitor-exit v3
:try_end_21
.catchall {:try_start_1c .. :try_end_21} :catchall_19
if-nez v0, :cond_25
move-object v0, v2
goto :goto_c
:cond_25
if-eqz v4, :cond_4e
invoke-virtual {v4}, Lcom/facebook/aw;->h()Ljava/util/List;
move-result-object v0
:goto_2b
new-instance v3, Lcom/facebook/ba;
iget-object v4, p0, Lcom/facebook/a/e;->t:Landroid/app/Activity;
invoke-direct {v3, v4}, Lcom/facebook/ba;-><init>(Landroid/content/Context;)V
iget-object v4, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/facebook/ba;->a(Ljava/lang/String;)Lcom/facebook/ba;
move-result-object v3
invoke-direct {p0}, Lcom/facebook/a/e;->i()Lcom/facebook/bv;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/facebook/ba;->a(Lcom/facebook/bv;)Lcom/facebook/ba;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/ba;->a()Lcom/facebook/aw;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/aw;->d()Lcom/facebook/bk;
move-result-object v4
sget-object v5, Lcom/facebook/bk;->b:Lcom/facebook/bk;
if-eq v4, v5, :cond_5e
move-object v0, v2
goto :goto_c
:cond_4e
iget-object v0, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/facebook/a/e;->u:[Ljava/lang/String;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
goto :goto_2b
:cond_59
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
goto :goto_2b
:cond_5e
new-instance v4, Lcom/facebook/bc;
iget-object v5, p0, Lcom/facebook/a/e;->t:Landroid/app/Activity;
invoke-direct {v4, v5}, Lcom/facebook/bc;-><init>(Landroid/app/Activity;)V
invoke-virtual {v4, v0}, Lcom/facebook/bc;->b(Ljava/util/List;)Lcom/facebook/bc;
move-result-object v4
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_92
const/4 v0, 0x1
:goto_70
invoke-direct {p0, v3, v4, v0}, Lcom/facebook/a/e;->a(Lcom/facebook/aw;Lcom/facebook/bc;Z)V
iget-object v4, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v4
:try_start_76
iget-boolean v0, p0, Lcom/facebook/a/e;->x:Z
if-nez v0, :cond_7e
iget-object v0, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
if-nez v0, :cond_97
:cond_7e
iget-object v0, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
iput-object v3, p0, Lcom/facebook/a/e;->w:Lcom/facebook/aw;
const/4 v5, 0x0
iput-boolean v5, p0, Lcom/facebook/a/e;->x:Z
move-object v6, v3
move-object v3, v0
move-object v0, v6
:goto_88
monitor-exit v4
:try_end_89
.catchall {:try_start_76 .. :try_end_89} :catchall_94
if-eqz v3, :cond_8e
invoke-virtual {v3}, Lcom/facebook/aw;->i()V
:cond_8e
if-eqz v0, :cond_2
goto/16 :goto_c
:cond_92
move v0, v1
goto :goto_70
:catchall_94
move-exception v0
:try_start_95
monitor-exit v4
:try_end_96
.catchall {:try_start_95 .. :try_end_96} :catchall_94
throw v0
:cond_97
move-object v0, v2
move-object v3, v2
goto :goto_88
.end method
.method public c(Ljava/lang/String;)V
.registers 8
const-string v0, "setAccessExpiresIn"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
if-eqz p1, :cond_14
const-string v0, "0"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
const-wide/16 v0, 0x0
:goto_11
invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e;->a(J)V
:cond_14
return-void
:cond_15
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/16 v4, 0x3e8
mul-long/2addr v2, v4
add-long/2addr v0, v2
goto :goto_11
.end method
.method public c(Landroid/content/Context;)Z
.registers 3
iget-object v0, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/facebook/bm;->a(Landroid/content/Context;Ljava/lang/String;)V
const/4 v0, 0x0
return v0
.end method
.method public d()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/facebook/a/e;->c()Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/facebook/aw;->f()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public d(Ljava/lang/String;)V
.registers 4
const-string v0, "setAppId"
invoke-direct {p0, v0}, Lcom/facebook/a/e;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/e;->o:Ljava/lang/Object;
monitor-enter v1
:try_start_8
iput-object p1, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/a/e;->x:Z
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_8 .. :try_end_11} :catchall_f
throw v0
.end method
.method public e()J
.registers 3
invoke-virtual {p0}, Lcom/facebook/a/e;->c()Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Lcom/facebook/aw;->g()Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
:goto_e
return-wide v0
:cond_f
iget-wide v0, p0, Lcom/facebook/a/e;->q:J
goto :goto_e
.end method
.method public f()J
.registers 3
iget-wide v0, p0, Lcom/facebook/a/e;->r:J
return-wide v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a/e;->s:Ljava/lang/String;
return-object v0
.end method
.method public h()Z
.registers 2
invoke-static {}, Lcom/facebook/bm;->d()Z
move-result v0
return v0
.end method