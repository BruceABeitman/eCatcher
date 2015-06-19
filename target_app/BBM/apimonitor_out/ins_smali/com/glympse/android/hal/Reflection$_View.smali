.class public Lcom/glympse/android/hal/Reflection$_View;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static eo:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_View;->cR:Z
const/4 v0, 0x0
sput-object v0, Lcom/glympse/android/hal/Reflection$_View;->eo:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static Load()V
.registers 5
const/4 v1, 0x1
sget-boolean v0, Lcom/glympse/android/hal/Reflection$_View;->cR:Z
if-nez v0, :cond_1e
sput-boolean v1, Lcom/glympse/android/hal/Reflection$_View;->cR:Z
:try_start_7
const-class v0, Landroid/view/View;
const-string v1, "setLayerType"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Landroid/graphics/Paint;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_View;->eo:Ljava/lang/reflect/Method;
:try_end_1e
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_1f
:goto_1e
:cond_1e
return-void
:catch_1f
move-exception v0
goto :goto_1e
.end method
.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
.registers 8
const/4 v4, 0x0
if-eqz p0, :cond_1c
invoke-static {}, Lcom/glympse/android/hal/Reflection$_View;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_View;->eo:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1c
:try_start_a
sget-object v0, Lcom/glympse/android/hal/Reflection$_View;->eo:Ljava/lang/reflect/Method;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_1c
:try_end_1c
.catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1c} :catch_1d
:goto_1c
return-void
:catch_1d
move-exception v0
invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_1c
.end method