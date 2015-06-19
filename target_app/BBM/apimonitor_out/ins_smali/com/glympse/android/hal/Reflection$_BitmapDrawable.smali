.class public Lcom/glympse/android/hal/Reflection$_BitmapDrawable;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static dl:Ljava/lang/reflect/Constructor;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->cR:Z
const/4 v0, 0x0
sput-object v0, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->dl:Ljava/lang/reflect/Constructor;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static Load()V
.registers 7
const/4 v0, 0x0
sget-boolean v1, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->cR:Z
if-nez v1, :cond_35
const/4 v1, 0x1
sput-boolean v1, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->cR:Z
:try_start_8
const-class v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v1
array-length v2, v1
:goto_f
if-ge v0, v2, :cond_35
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v4
if-eqz v4, :cond_36
const/4 v5, 0x2
array-length v6, v4
if-ne v5, v6, :cond_36
const-class v5, Landroid/content/res/Resources;
const/4 v6, 0x0
aget-object v6, v4, v6
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_36
const-class v5, Landroid/graphics/Bitmap;
const/4 v6, 0x0
aget-object v4, v4, v6
invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_36
sput-object v3, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->dl:Ljava/lang/reflect/Constructor;
:goto_35
:cond_35
:try_end_35
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_35} :catch_39
return-void
:cond_36
add-int/lit8 v0, v0, 0x1
goto :goto_f
:catch_39
move-exception v0
goto :goto_35
.end method
.method public static createInstance(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
.registers 6
const/4 v3, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->dl:Ljava/lang/reflect/Constructor;
if-eqz v0, :cond_1e
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->dl:Ljava/lang/reflect/Constructor;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
const/4 v2, 0x1
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
:try_end_19
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1a
:goto_19
return-object v0
:catch_1a
move-exception v0
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_1e
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
goto :goto_19
.end method