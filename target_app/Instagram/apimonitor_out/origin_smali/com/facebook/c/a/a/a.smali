.class public final Lcom/facebook/c/a/a/a;
.super Ljava/lang/Object;
.source "SystemPropertiesInternal.java"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/facebook/c/a/a/b;->a()Lcom/facebook/c/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/facebook/c/a/a/b;->a:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/c/a/a/a;->c:Ljava/lang/reflect/Method;

    iget-object v1, v0, Lcom/facebook/c/a/a/b;->b:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/c/a/a/a;->a:Ljava/lang/reflect/Method;

    iget-object v0, v0, Lcom/facebook/c/a/a/b;->c:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/facebook/c/a/a/a;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    :goto_16
    return-void

    :cond_17
    sput-object v1, Lcom/facebook/c/a/a/a;->c:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/c/a/a/a;->a:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/c/a/a/a;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    goto :goto_16
.end method

.method private static varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_a} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_a} :catch_11

    move-result-object v0

    goto :goto_3

    :catch_c
    move-exception v1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/c/a/a/a;->d:Z

    goto :goto_3

    :catch_11
    move-exception v1

    invoke-static {v1}, Lcom/facebook/c/a;->a(Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/facebook/c/a/a/a;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 4

    sget-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/facebook/c/a/a/a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
