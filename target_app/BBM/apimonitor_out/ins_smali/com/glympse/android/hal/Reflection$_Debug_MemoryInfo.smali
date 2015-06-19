.class public Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static ds:Ljava/lang/reflect/Method;
.field private static dt:Ljava/lang/reflect/Method;
.field private static du:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->ds:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->dt:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->du:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static Load()V
.registers 3
sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->cR:Z
if-nez v0, :cond_28
const/4 v0, 0x1
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->cR:Z
:try_start_7
const-class v0, Landroid/os/Debug$MemoryInfo;
const-string v1, "getTotalPrivateDirty"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->ds:Ljava/lang/reflect/Method;
:try_start_12
:goto_12
:try_end_12
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_2d
const-class v0, Landroid/os/Debug$MemoryInfo;
const-string v1, "getTotalPss"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->dt:Ljava/lang/reflect/Method;
:goto_1d
:try_start_1d
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1d} :catch_2b
const-class v0, Landroid/os/Debug$MemoryInfo;
const-string v1, "getTotalSharedDirty"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->du:Ljava/lang/reflect/Method;
:cond_28
:goto_28
:try_end_28
.catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_28} :catch_29
return-void
:catch_29
move-exception v0
goto :goto_28
:catch_2b
move-exception v0
goto :goto_1d
:catch_2d
move-exception v0
goto :goto_12
.end method
.method public static getTotalPrivateDirty(Landroid/os/Debug$MemoryInfo;)I
.registers 4
const/4 v1, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->ds:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1a
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->ds:Ljava/lang/reflect/Method;
const/4 v2, 0x0
invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_16
move-result v0
:goto_15
return v0
:catch_16
move-exception v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_1a
move v0, v1
goto :goto_15
.end method
.method public static getTotalPss(Landroid/os/Debug$MemoryInfo;)I
.registers 4
const/4 v1, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->dt:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1a
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->dt:Ljava/lang/reflect/Method;
const/4 v2, 0x0
invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_16
move-result v0
:goto_15
return v0
:catch_16
move-exception v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_1a
move v0, v1
goto :goto_15
.end method
.method public static getTotalSharedDirty(Landroid/os/Debug$MemoryInfo;)I
.registers 4
const/4 v1, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->du:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1a
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->du:Ljava/lang/reflect/Method;
const/4 v2, 0x0
invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_16
move-result v0
:goto_15
return v0
:catch_16
move-exception v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_1a
move v0, v1
goto :goto_15
.end method