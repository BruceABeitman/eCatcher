.class public Lcom/glympse/android/hal/Reflection$_UiModeManager;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static cS:Ljava/lang/Class;
.field private static ei:Ljava/lang/Object;
.field private static ej:Ljava/lang/reflect/Method;
.field private static ek:Ljava/lang/reflect/Method;
.field private static el:Ljava/lang/reflect/Method;
.field private static em:Ljava/lang/reflect/Method;
.field private static en:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ej:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ek:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->el:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->em:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->en:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static Load(Landroid/content/Context;)V
.registers 7
const/4 v1, 0x1
const/4 v5, 0x0
sget-boolean v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cR:Z
if-nez v0, :cond_6c
sput-boolean v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cR:Z
:try_start_8
const-string v0, "android.app.UiModeManager"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
const-string v0, "uimode"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
:goto_18
:try_end_18
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_18} :catch_72
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
if-eqz v0, :cond_6c
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
if-eqz v0, :cond_6c
:try_start_20
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
const-string v1, "getCurrentModeType"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ej:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
const-string v1, "disableCarMode"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ek:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
const-string v1, "enableCarMode"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->el:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
const-string v1, "getNightMode"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->em:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->cS:Ljava/lang/Class;
const-string v1, "setNightMode"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->en:Ljava/lang/reflect/Method;
:goto_6c
:cond_6c
:try_end_6c
.catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_6c} :catch_6d
return-void
:catch_6d
move-exception v0
invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_6c
:catch_72
move-exception v0
goto :goto_18
.end method
.method public static disableCarMode(Landroid/content/Context;I)V
.registers 8
const/4 v5, 0x0
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_UiModeManager;->Load(Landroid/content/Context;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
if-eqz v0, :cond_1d
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ek:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1d
:try_start_c
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ek:Ljava/lang/reflect/Method;
sget-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_1d
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_1e
:cond_1d
return-void
:catch_1e
move-exception v0
invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_1d
.end method
.method public static enableCarMode(Landroid/content/Context;I)V
.registers 8
const/4 v5, 0x0
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_UiModeManager;->Load(Landroid/content/Context;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
if-eqz v0, :cond_1d
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->el:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1d
:try_start_c
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->el:Ljava/lang/reflect/Method;
sget-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_1d
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_1e
:cond_1d
return-void
:catch_1e
move-exception v0
invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_1d
.end method
.method public static getCurrentModeType(Landroid/content/Context;)I
.registers 5
const/4 v1, 0x0
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_UiModeManager;->Load(Landroid/content/Context;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
if-eqz v0, :cond_20
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ej:Ljava/lang/reflect/Method;
if-eqz v0, :cond_20
:try_start_c
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ej:Ljava/lang/reflect/Method;
sget-object v2, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_1a
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1a} :catch_1c
move-result v0
:goto_1b
return v0
:catch_1c
move-exception v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_20
move v0, v1
goto :goto_1b
.end method
.method public static getNightMode(Landroid/content/Context;)I
.registers 4
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_UiModeManager;->Load(Landroid/content/Context;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
if-eqz v0, :cond_20
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->em:Ljava/lang/reflect/Method;
if-eqz v0, :cond_20
:try_start_b
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->em:Ljava/lang/reflect/Method;
sget-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_19
.catch Ljava/lang/Throwable; {:try_start_b .. :try_end_19} :catch_1b
move-result v0
:goto_1a
return v0
:catch_1b
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_20
const/4 v0, 0x1
goto :goto_1a
.end method
.method public static setNightMode(Landroid/content/Context;I)V
.registers 8
const/4 v5, 0x0
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_UiModeManager;->Load(Landroid/content/Context;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
if-eqz v0, :cond_1d
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->en:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1d
:try_start_c
sget-object v0, Lcom/glympse/android/hal/Reflection$_UiModeManager;->en:Ljava/lang/reflect/Method;
sget-object v1, Lcom/glympse/android/hal/Reflection$_UiModeManager;->ei:Ljava/lang/Object;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_1d
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_1e
:cond_1d
return-void
:catch_1e
move-exception v0
invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_1d
.end method