.class abstract Lcom/facebook/internal/z;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/HashSet;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const-string v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const-string v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sput-object v0, Lcom/facebook/internal/z;->a:Ljava/util/HashSet;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/facebook/internal/z;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v3
iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
const-string v4, "generic"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_17
and-int/lit8 v2, v3, 0x2
if-eqz v2, :cond_17
:cond_16
:goto_16
return v0
:cond_17
:try_start_17
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/16 v3, 0x40
invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_20
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_20} :catch_3c
move-result-object v2
iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
array-length v4, v3
move v2, v1
:goto_25
if-ge v2, v4, :cond_3f
aget-object v5, v3, v2
invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v5
invoke-static {v5}, Lcom/facebook/internal/ai;->a([B)Ljava/lang/String;
move-result-object v5
sget-object v6, Lcom/facebook/internal/z;->a:Ljava/util/HashSet;
invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_16
add-int/lit8 v2, v2, 0x1
goto :goto_25
:catch_3c
move-exception v0
move v0, v1
goto :goto_16
:cond_3f
move v0, v1
goto :goto_16
.end method
.method protected abstract a()Ljava/lang/String;
.end method