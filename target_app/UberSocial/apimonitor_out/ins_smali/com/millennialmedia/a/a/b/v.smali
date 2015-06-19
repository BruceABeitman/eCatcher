.class public abstract Lcom/millennialmedia/a/a/b/v;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/millennialmedia/a/a/b/v;
.registers 6
:try_start_0
const-string v0, "sun.misc.Unsafe"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "theUnsafe"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
const-string v2, "allocateInstance"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
new-instance v0, Lcom/millennialmedia/a/a/b/v$1;
invoke-direct {v0, v2, v1}, Lcom/millennialmedia/a/a/b/v$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
:goto_28
:try_end_28
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29
return-object v0
:catch_29
move-exception v0
:try_start_2a
const-class v0, Ljava/io/ObjectInputStream;
const-string v1, "newInstance"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
new-instance v0, Lcom/millennialmedia/a/a/b/v$2;
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/b/v$2;-><init>(Ljava/lang/reflect/Method;)V
:try_end_48
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_48} :catch_49
goto :goto_28
:catch_49
move-exception v0
:try_start_4a
const-class v0, Ljava/io/ObjectStreamClass;
const-string v1, "getConstructorId"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
const/4 v1, 0x0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const-class v4, Ljava/lang/Object;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
const-class v0, Ljava/io/ObjectStreamClass;
const-string v2, "newInstance"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Ljava/lang/Class;
aput-object v5, v3, v4
const/4 v4, 0x1
sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v0, 0x1
invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
new-instance v0, Lcom/millennialmedia/a/a/b/v$3;
invoke-direct {v0, v2, v1}, Lcom/millennialmedia/a/a/b/v$3;-><init>(Ljava/lang/reflect/Method;I)V
:try_end_8f
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8f} :catch_90
goto :goto_28
:catch_90
move-exception v0
new-instance v0, Lcom/millennialmedia/a/a/b/v$4;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/v$4;-><init>()V
goto :goto_28
.end method
.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
.end method