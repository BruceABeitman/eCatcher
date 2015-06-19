.class public Lcom/glympse/android/hal/Reflection$_Service;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static dW:Ljava/lang/reflect/Method;
.field private static dX:Ljava/lang/reflect/Method;
.field private static dY:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Service;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_Service;->dW:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_Service;->dX:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_Service;->dY:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static Load()V
.registers 6
const/4 v1, 0x1
const/4 v5, 0x0
sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Service;->cR:Z
if-nez v0, :cond_4b
sput-boolean v1, Lcom/glympse/android/hal/Reflection$_Service;->cR:Z
:try_start_8
const-class v0, Landroid/app/Service;
const-string v1, "startForeground"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Landroid/app/Notification;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dX:Ljava/lang/reflect/Method;
const-class v0, Landroid/app/Service;
const-string v1, "stopForeground"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dY:Ljava/lang/reflect/Method;
:goto_31
:try_end_31
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_31} :catch_51
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dX:Ljava/lang/reflect/Method;
if-eqz v0, :cond_39
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dY:Ljava/lang/reflect/Method;
if-nez v0, :cond_4b
:cond_39
:try_start_39
const-class v0, Landroid/app/Service;
const-string v1, "setForeground"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dW:Ljava/lang/reflect/Method;
:goto_4b
:cond_4b
:try_end_4b
.catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4b} :catch_4c
return-void
:catch_4c
move-exception v0
invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_4b
:catch_51
move-exception v0
goto :goto_31
.end method
.method public static startForeground(Landroid/app/Service;ILandroid/app/Notification;)V
.registers 8
const/4 v4, 0x0
if-eqz p0, :cond_26
invoke-static {}, Lcom/glympse/android/hal/Reflection$_Service;->Load()V
:try_start_6
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dX:Ljava/lang/reflect/Method;
if-eqz v0, :cond_27
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dY:Ljava/lang/reflect/Method;
if-eqz v0, :cond_27
const/4 v0, 0x1
const-string v1, "Calling newer Service.startForeground()"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dX:Ljava/lang/reflect/Method;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_26
:cond_26
return-void
:cond_27
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dW:Ljava/lang/reflect/Method;
if-eqz v0, :cond_26
const/4 v0, 0x1
const-string v1, "Calling older Service.setForeground(true)"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dW:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_41
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_41} :catch_42
goto :goto_26
:catch_42
move-exception v0
invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_26
.end method
.method public static stopForeground(Landroid/app/Service;Z)V
.registers 7
const/4 v4, 0x0
if-eqz p0, :cond_23
invoke-static {}, Lcom/glympse/android/hal/Reflection$_Service;->Load()V
:try_start_6
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dX:Ljava/lang/reflect/Method;
if-eqz v0, :cond_24
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dY:Ljava/lang/reflect/Method;
if-eqz v0, :cond_24
const/4 v0, 0x1
const-string v1, "Calling newer Service.stopForeground()"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dY:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_23
:cond_23
return-void
:cond_24
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dW:Ljava/lang/reflect/Method;
if-eqz v0, :cond_23
const/4 v0, 0x1
const-string v1, "Calling older Service.setForeground(false)"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_Service;->dW:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_3e
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3e} :catch_3f
goto :goto_23
:catch_3f
move-exception v0
invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_23
.end method