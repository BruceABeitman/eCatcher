.class public final Lcom/facebook/c/a/a/c;
.super Ljava/lang/Object;
.source "TraceInternal.java"
.field public static final a:Z
.field public static final b:J
.field private static final c:Ljava/lang/reflect/Method;
.field private static final d:Ljava/lang/reflect/Method;
.field private static volatile e:Z
.method static constructor <clinit>()V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v3, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x12
if-lt v0, v4, :cond_25
move v0, v1
:goto_a
sput-boolean v0, Lcom/facebook/c/a/a/c;->a:Z
sget-boolean v0, Lcom/facebook/c/a/a/c;->a:Z
if-eqz v0, :cond_32
invoke-static {}, Lcom/facebook/c/a/a/d;->a()Lcom/facebook/c/a/a/d;
move-result-object v0
:goto_14
if-eqz v0, :cond_27
iget-object v2, v0, Lcom/facebook/c/a/a/d;->a:Ljava/lang/reflect/Method;
sput-object v2, Lcom/facebook/c/a/a/c;->c:Ljava/lang/reflect/Method;
iget-object v2, v0, Lcom/facebook/c/a/a/d;->b:Ljava/lang/reflect/Method;
sput-object v2, Lcom/facebook/c/a/a/c;->d:Ljava/lang/reflect/Method;
iget-wide v2, v0, Lcom/facebook/c/a/a/d;->c:J
sput-wide v2, Lcom/facebook/c/a/a/c;->b:J
sput-boolean v1, Lcom/facebook/c/a/a/c;->e:Z
:goto_24
return-void
:cond_25
move v0, v2
goto :goto_a
:cond_27
sput-object v3, Lcom/facebook/c/a/a/c;->c:Ljava/lang/reflect/Method;
sput-object v3, Lcom/facebook/c/a/a/c;->d:Ljava/lang/reflect/Method;
const-wide/16 v0, 0x0
sput-wide v0, Lcom/facebook/c/a/a/c;->b:J
sput-boolean v2, Lcom/facebook/c/a/a/c;->e:Z
goto :goto_24
:cond_32
move-object v0, v3
goto :goto_14
.end method
.method private static varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
:try_start_2
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_7
.catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_7} :catch_9
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_7} :catch_e
move-result-object v0
:goto_8
return-object v0
:catch_9
move-exception v1
const/4 v1, 0x0
sput-boolean v1, Lcom/facebook/c/a/a/c;->e:Z
goto :goto_8
:catch_e
move-exception v1
invoke-static {v1}, Lcom/facebook/c/a;->a(Ljava/lang/reflect/InvocationTargetException;)V
goto :goto_8
.end method
.method public static a(Z)V
.registers 5
const/4 v3, 0x1
sget-boolean v0, Lcom/facebook/c/a/a/c;->e:Z
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
sget-object v0, Lcom/facebook/c/a/a/c;->d:Ljava/lang/reflect/Method;
new-array v1, v3, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/facebook/c/a/a/c;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5
.end method
.method public static a(J)Z
.registers 6
const/4 v1, 0x0
sget-boolean v0, Lcom/facebook/c/a/a/c;->e:Z
if-nez v0, :cond_7
move v0, v1
:goto_6
return v0
:cond_7
sget-object v0, Lcom/facebook/c/a/a/c;->c:Ljava/lang/reflect/Method;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/facebook/c/a/a/c;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_1c
move v0, v1
goto :goto_6
:cond_1c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_6
.end method