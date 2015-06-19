.class public final Lcom/mato/sdk/a/b;
.super Ljava/lang/Object;
.field private static A:Ljava/lang/String; = null
.field private static B:Z = false
.field private static C:Ljava/lang/String; = "_2g"
.field private static D:Ljava/lang/String; = "_3g"
.field private static E:Ljava/lang/String; = "_4g"
.field private static F:Ljava/lang/String; = "wifi"
.field private static G:Ljava/util/Map; = null
.field private static final a:Ljava/lang/String; = "Mato.MatoConfig"
.field private static final b:Z = false
.field private static c:Z = false
.field private static d:Ljava/lang/String; = null
.field private static e:Ljava/lang/String; = "config"
.field private static final f:Ljava/lang/String; = "wsg_support"
.field private static final g:Ljava/lang/String; = "auth_time"
.field private static final h:Ljava/lang/String; = "auth_result"
.field private static final i:Ljava/lang/String; = "auth_fail_time"
.field private static final j:Ljava/lang/String; = "ndk_ver"
.field private static final k:Ljava/lang/String; = "last_proxy"
.field private static final l:Ljava/lang/String; = "first_time"
.field private static final m:Ljava/lang/String; = "last_report"
.field private static final n:Ljava/lang/String; = "absolute_first_time"
.field private static final o:Ljava/lang/String; = "next_proxy"
.field private static p:I
.field private static q:Ljava/lang/String;
.field private static r:Z
.field private static s:Ljava/lang/String;
.field private static t:Z
.field private static u:Z
.field private static v:Ljava/lang/String;
.field private static w:I
.field private static x:Ljava/lang/String;
.field private static y:Ljava/lang/String;
.field private static z:I
.method static constructor <clinit>()V
.registers 5
const/4 v4, -0x1
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
sput-boolean v2, Lcom/mato/sdk/a/b;->c:Z
const-string/jumbo v0, "http://mauth.chinanetcenter.com"
sput-object v0, Lcom/mato/sdk/a/b;->d:Ljava/lang/String;
sput v2, Lcom/mato/sdk/a/b;->p:I
sput-object v1, Lcom/mato/sdk/a/b;->q:Ljava/lang/String;
sput-boolean v2, Lcom/mato/sdk/a/b;->r:Z
sput-object v1, Lcom/mato/sdk/a/b;->s:Ljava/lang/String;
sput-boolean v3, Lcom/mato/sdk/a/b;->t:Z
sput-boolean v3, Lcom/mato/sdk/a/b;->u:Z
sput-object v1, Lcom/mato/sdk/a/b;->v:Ljava/lang/String;
sput v4, Lcom/mato/sdk/a/b;->w:I
sput-object v1, Lcom/mato/sdk/a/b;->x:Ljava/lang/String;
sput-object v1, Lcom/mato/sdk/a/b;->y:Ljava/lang/String;
sput v4, Lcom/mato/sdk/a/b;->z:I
sput-object v1, Lcom/mato/sdk/a/b;->A:Ljava/lang/String;
sput-boolean v3, Lcom/mato/sdk/a/b;->B:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
new-instance v0, Lcom/mato/sdk/a/b$g;
invoke-direct {v0}, Lcom/mato/sdk/a/b$g;-><init>()V
invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->a(Ljava/lang/String;)V
sget-object v1, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
const-string/jumbo v2, "wifi"
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
const-string/jumbo v1, "_2g"
new-instance v2, Lcom/mato/sdk/a/b$g;
invoke-direct {v2}, Lcom/mato/sdk/a/b$g;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
const-string/jumbo v1, "_3g"
new-instance v2, Lcom/mato/sdk/a/b$g;
invoke-direct {v2}, Lcom/mato/sdk/a/b$g;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
const-string/jumbo v1, "_4g"
new-instance v2, Lcom/mato/sdk/a/b$g;
invoke-direct {v2}, Lcom/mato/sdk/a/b$g;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static A()V
.registers 2
:try_start_0
const-string/jumbo v0, "absolute_first_time"
const-string/jumbo v1, "H2"
invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
goto :goto_d
.end method
.method private static B()V
.registers 2
const/4 v0, 0x1
invoke-static {v0}, Lcom/mato/sdk/a/b;->b(Z)V
const-string/jumbo v0, "config"
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
const-string/jumbo v0, "auth_result"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
const-string/jumbo v0, "last_proxy"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
const-string/jumbo v0, "last_report"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
return-void
.end method
.method private static C()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b;->x:Ljava/lang/String;
return-object v0
.end method
.method private static D()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b;->y:Ljava/lang/String;
return-object v0
.end method
.method private static E()I
.registers 1
sget v0, Lcom/mato/sdk/a/b;->z:I
return v0
.end method
.method private static F()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b;->A:Ljava/lang/String;
return-object v0
.end method
.method public static a()Lcom/mato/sdk/a/b$g;
.registers 2
invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_e
const-string/jumbo v0, "_3g"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
:goto_d
return-object v0
:cond_e
const-string/jumbo v1, "3G"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
const-string/jumbo v0, "_3g"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
goto :goto_d
:cond_1f
const-string/jumbo v1, "EDGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3a
const-string/jumbo v1, "GPRS"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3a
const-string/jumbo v1, "CDMA"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
:cond_3a
const-string/jumbo v0, "_2g"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
goto :goto_d
:cond_42
const-string/jumbo v1, "LTE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_53
const-string/jumbo v0, "_4g"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
goto :goto_d
:cond_53
const-string/jumbo v1, "WIFI"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_64
const-string/jumbo v0, "wifi"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
goto :goto_d
:cond_64
const-string/jumbo v0, "_3g"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
goto :goto_d
.end method
.method public static a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
.registers 3
sget-object v0, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mato/sdk/a/b$g;
if-nez v0, :cond_15
sget-object v0, Lcom/mato/sdk/a/b;->G:Ljava/util/Map;
const-string/jumbo v1, "_3g"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mato/sdk/a/b$g;
:cond_15
return-object v0
.end method
.method public static a(I)V
.registers 1
sput p0, Lcom/mato/sdk/a/b;->p:I
return-void
.end method
.method public static a(Z)V
.registers 3
:try_start_0
const-string/jumbo v0, "next_proxy"
invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
goto :goto_e
.end method
.method public static b()Lcom/mato/sdk/a/b$g;
.registers 1
const-string/jumbo v0, "wifi"
invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;
move-result-object v0
return-object v0
.end method
.method public static b(I)V
.registers 3
:try_start_0
const-string/jumbo v0, "wsg_support"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
goto :goto_e
.end method
.method public static b(Ljava/lang/String;)V
.registers 3
:try_start_0
const-string/jumbo v0, "config"
invoke-static {p0}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
goto :goto_a
.end method
.method public static b(Z)V
.registers 3
:try_start_0
const-string/jumbo v0, "first_time"
invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
goto :goto_e
.end method
.method public static c()I
.registers 1
sget v0, Lcom/mato/sdk/a/b;->p:I
return v0
.end method
.method public static c(I)V
.registers 3
:try_start_0
const-string/jumbo v0, "ndk_ver"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
goto :goto_e
.end method
.method public static c(Ljava/lang/String;)V
.registers 2
const-string/jumbo v0, "version"
invoke-static {v0, p0}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
return-void
.end method
.method public static c(Z)V
.registers 1
sput-boolean p0, Lcom/mato/sdk/a/b;->r:Z
return-void
.end method
.method public static d(I)V
.registers 1
sput p0, Lcom/mato/sdk/a/b;->w:I
return-void
.end method
.method public static d(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b;->q:Ljava/lang/String;
return-void
.end method
.method public static d(Z)V
.registers 1
sput-boolean p0, Lcom/mato/sdk/a/b;->t:Z
return-void
.end method
.method public static d()Z
.registers 1
sget v0, Lcom/mato/sdk/a/b;->p:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public static e()I
.registers 3
const/4 v0, -0x1
const-string/jumbo v1, "wsg_support"
const-string/jumbo v2, ""
invoke-static {v1, v2}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_19
:try_start_11
invoke-static {v1}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_18
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a
move-result v0
:cond_19
:goto_19
return v0
:catch_1a
move-exception v1
goto :goto_19
.end method
.method public static e(I)V
.registers 1
sput p0, Lcom/mato/sdk/a/b;->z:I
return-void
.end method
.method public static e(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b;->s:Ljava/lang/String;
return-void
.end method
.method public static e(Z)V
.registers 1
sput-boolean p0, Lcom/mato/sdk/a/b;->u:Z
return-void
.end method
.method public static f()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/mato/sdk/a/b;->d:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/frontoffice/checkAuthority"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static f(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b;->v:Ljava/lang/String;
return-void
.end method
.method public static f(Z)V
.registers 1
sput-boolean p0, Lcom/mato/sdk/a/b;->B:Z
return-void
.end method
.method public static g()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/mato/sdk/a/b;->d:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/frontoffice/checkNdkVersion"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static g(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b;->y:Ljava/lang/String;
return-void
.end method
.method public static h()Ljava/lang/String;
.registers 4
const-string/jumbo v0, "config"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Mato.MatoConfig"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the config is "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_3e
const-string/jumbo v1, "Mato.MatoConfig"
const-string/jumbo v2, "is not empty"
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2f
invoke-static {v0}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
:try_end_32
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_34
move-result-object v0
:goto_33
return-object v0
:catch_34
move-exception v0
const-string/jumbo v0, "Mato.MatoConfig"
const-string/jumbo v1, "decrypt error"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_3e
const-string/jumbo v0, "Mato.MatoConfig"
const-string/jumbo v1, "the config is empty,so return null"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_33
.end method
.method public static h(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b;->A:Ljava/lang/String;
return-void
.end method
.method public static i()I
.registers 2
const-string/jumbo v0, "ndk_ver"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1a
:try_start_10
invoke-static {v0}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_17
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_19
move-result v0
:goto_18
return v0
:catch_19
move-exception v0
:cond_1a
const/4 v0, 0x0
goto :goto_18
.end method
.method private static i(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b;->x:Ljava/lang/String;
return-void
.end method
.method public static j()Z
.registers 2
const-string/jumbo v0, "next_proxy"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1a
:try_start_10
invoke-static {v0}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
:try_end_17
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_19
move-result v0
:goto_18
return v0
:catch_19
move-exception v0
:cond_1a
const/4 v0, 0x0
goto :goto_18
.end method
.method public static k()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "version"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static l()Z
.registers 2
const-string/jumbo v0, "first_time"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1a
:try_start_10
invoke-static {v0}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
:try_end_17
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_19
move-result v0
:goto_18
return v0
:catch_19
move-exception v0
:cond_1a
const/4 v0, 0x1
goto :goto_18
.end method
.method public static m()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b;->q:Ljava/lang/String;
return-object v0
.end method
.method public static n()Z
.registers 1
sget-boolean v0, Lcom/mato/sdk/a/b;->r:Z
return v0
.end method
.method public static o()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b;->s:Ljava/lang/String;
return-object v0
.end method
.method public static p()Z
.registers 1
sget-boolean v0, Lcom/mato/sdk/a/b;->t:Z
return v0
.end method
.method public static q()Z
.registers 1
sget-boolean v0, Lcom/mato/sdk/a/b;->u:Z
return v0
.end method
.method public static r()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b;->v:Ljava/lang/String;
return-object v0
.end method
.method public static s()I
.registers 1
sget v0, Lcom/mato/sdk/a/b;->w:I
return v0
.end method
.method public static t()Z
.registers 1
sget-boolean v0, Lcom/mato/sdk/a/b;->B:Z
return v0
.end method
.method private static u()Z
.registers 2
sget v0, Lcom/mato/sdk/a/b;->p:I
const/4 v1, 0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method private static v()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/mato/sdk/a/b;->c:Z
return-void
.end method
.method private static w()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/mato/sdk/a/b;->c:Z
return-void
.end method
.method private static x()Z
.registers 1
sget-boolean v0, Lcom/mato/sdk/a/b;->c:Z
return v0
.end method
.method private static y()Z
.registers 2
const/4 v0, 0x1
sget v1, Lcom/mato/sdk/a/b;->p:I
if-ne v1, v0, :cond_6
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private static z()Z
.registers 2
const-string/jumbo v0, "absolute_first_time"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
:try_start_12
const-string/jumbo v0, "absolute_first_time"
const-string/jumbo v1, "H2"
invoke-static {v1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:goto_1f
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_21
const/4 v0, 0x1
goto :goto_11
:catch_21
move-exception v0
goto :goto_1f
.end method