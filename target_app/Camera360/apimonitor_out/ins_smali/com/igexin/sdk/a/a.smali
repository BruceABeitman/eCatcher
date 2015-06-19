.class public Lcom/igexin/sdk/a/a;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/String;
.field private static c:Lcom/igexin/sdk/a/a;
.field private b:Lcom/igexin/sdk/IPushCore;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "PushSdk"
sput-object v0, Lcom/igexin/sdk/a/a;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/igexin/sdk/a/a;
.registers 1
sget-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/sdk/a/a;
invoke-direct {v0}, Lcom/igexin/sdk/a/a;-><init>()V
sput-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;
:cond_b
sget-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;
return-object v0
.end method
.method public a(Lcom/igexin/sdk/IPushCore;)V
.registers 2
iput-object p1, p0, Lcom/igexin/sdk/a/a;->b:Lcom/igexin/sdk/IPushCore;
return-void
.end method
.method public a(Landroid/content/Context;)Z
.registers 4
const-string/jumbo v0, "com.igexin.push.core.stub.PushCore"
:try_start_3
invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/sdk/IPushCore;
if-eqz v0, :cond_19
invoke-virtual {p0, v0}, Lcom/igexin/sdk/a/a;->a(Lcom/igexin/sdk/IPushCore;)V
:try_end_16
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_18
const/4 v0, 0x1
:goto_17
return v0
:catch_18
move-exception v0
:cond_19
const/4 v0, 0x0
goto :goto_17
.end method
.method public b()Lcom/igexin/sdk/IPushCore;
.registers 2
iget-object v0, p0, Lcom/igexin/sdk/a/a;->b:Lcom/igexin/sdk/IPushCore;
return-object v0
.end method