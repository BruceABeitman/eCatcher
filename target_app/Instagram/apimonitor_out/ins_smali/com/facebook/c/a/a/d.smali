.class final Lcom/facebook/c/a/a/d;
.super Ljava/lang/Object;
.source "TraceInternal.java"
.field public final a:Ljava/lang/reflect/Method;
.field public final b:Ljava/lang/reflect/Method;
.field public final c:J
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/c/a/a/d;->a:Ljava/lang/reflect/Method;
iput-object p2, p0, Lcom/facebook/c/a/a/d;->b:Ljava/lang/reflect/Method;
iput-wide p3, p0, Lcom/facebook/c/a/a/d;->c:J
return-void
.end method
.method public static a()Lcom/facebook/c/a/a/d;
.registers 7
const/4 v0, 0x0
:try_start_1
const-class v1, Landroid/os/Trace;
const-string v2, "isTagEnabled"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const-class v1, Landroid/os/Trace;
const-string v3, "setAppTracingAllowed"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Class;
const/4 v5, 0x0
sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v6, v4, v5
invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const-class v1, Landroid/os/Trace;
const-string v4, "TRACE_TAG_APP"
invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
move-result-object v4
sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-eq v4, v5, :cond_32
:goto_31
return-object v0
:cond_32
const/4 v4, 0x0
invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
move-result-wide v4
new-instance v1, Lcom/facebook/c/a/a/d;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/c/a/a/d;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V
:try_end_3c
.catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_3c} :catch_42
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3c} :catch_40
.catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_3c} :catch_3e
move-object v0, v1
goto :goto_31
:catch_3e
move-exception v1
goto :goto_31
:catch_40
move-exception v1
goto :goto_31
:catch_42
move-exception v1
goto :goto_31
.end method