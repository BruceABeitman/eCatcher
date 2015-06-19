.class final Lcom/facebook/c/a/a/b;
.super Ljava/lang/Object;
.source "SystemPropertiesInternal.java"
.field public final a:Ljava/lang/reflect/Method;
.field public final b:Ljava/lang/reflect/Method;
.field public final c:Ljava/lang/reflect/Method;
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/c/a/a/b;->a:Ljava/lang/reflect/Method;
iput-object p2, p0, Lcom/facebook/c/a/a/b;->b:Ljava/lang/reflect/Method;
iput-object p3, p0, Lcom/facebook/c/a/a/b;->c:Ljava/lang/reflect/Method;
return-void
.end method
.method public static a()Lcom/facebook/c/a/a/b;
.registers 8
const/4 v1, 0x0
:try_start_1
const-string v0, "android.os.SystemProperties"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v2, "get"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Ljava/lang/String;
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const-string v2, "getLong"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Class;
const/4 v5, 0x0
const-class v6, Ljava/lang/String;
aput-object v6, v4, v5
const/4 v5, 0x1
sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v6, v4, v5
invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v4
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0x10
if-lt v2, v5, :cond_43
const-string v2, "addChangeCallback"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
const-class v7, Ljava/lang/Runnable;
aput-object v7, v5, v6
invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
move-object v2, v0
:goto_3d
new-instance v0, Lcom/facebook/c/a/a/b;
invoke-direct {v0, v2, v3, v4}, Lcom/facebook/c/a/a/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
:try_end_42
.catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_42} :catch_45
.catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_42} :catch_48
:goto_42
return-object v0
:cond_43
move-object v2, v1
goto :goto_3d
:catch_45
move-exception v0
move-object v0, v1
goto :goto_42
:catch_48
move-exception v0
move-object v0, v1
goto :goto_42
.end method