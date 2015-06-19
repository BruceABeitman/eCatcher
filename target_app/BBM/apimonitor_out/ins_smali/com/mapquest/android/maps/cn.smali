.class public final Lcom/mapquest/android/maps/cn;
.super Ljava/lang/Object;
.source "TouchEventHandler.java"
.field  a:Z
.field  b:Z
.field  c:Z
.field  d:I
.field protected e:I
.field  f:Ljava/util/ArrayList;
.field final synthetic g:Lcom/mapquest/android/maps/ch;
.field private h:I
.method public constructor <init>(Lcom/mapquest/android/maps/ch;)V
.registers 10
const/4 v4, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
iput-object p1, p0, Lcom/mapquest/android/maps/cn;->g:Lcom/mapquest/android/maps/ch;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/mapquest/android/maps/cn;->a:Z
iput-boolean v1, p0, Lcom/mapquest/android/maps/cn;->b:Z
iput-boolean v0, p0, Lcom/mapquest/android/maps/cn;->c:Z
iput v1, p0, Lcom/mapquest/android/maps/cn;->d:I
iput v1, p0, Lcom/mapquest/android/maps/cn;->h:I
const v2, 0xffff
iput v2, p0, Lcom/mapquest/android/maps/cn;->e:I
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Lcom/mapquest/android/maps/cn;->f:Ljava/util/ArrayList;
const-class v2, Landroid/view/MotionEvent;
const-string v3, "getPointerCount"
invoke-static {v2, v3, v4}, Lcom/mapquest/android/maps/cn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
move-result v2
const-class v3, Landroid/view/MotionEvent;
const-string v4, "getX"
new-array v5, v0, [Ljava/lang/Class;
sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v6, v5, v1
invoke-static {v3, v4, v5}, Lcom/mapquest/android/maps/cn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
move-result v3
const-class v4, Landroid/view/MotionEvent;
const-string v5, "getY"
new-array v6, v0, [Ljava/lang/Class;
sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v7, v6, v1
invoke-static {v4, v5, v6}, Lcom/mapquest/android/maps/cn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
move-result v4
if-eqz v2, :cond_7c
if-eqz v3, :cond_7c
if-eqz v4, :cond_7c
:goto_48
iput-boolean v0, p0, Lcom/mapquest/android/maps/cn;->c:Z
iget-boolean v0, p0, Lcom/mapquest/android/maps/cn;->c:Z
if-eqz v0, :cond_7b
:try_start_4e
const-class v0, Landroid/view/MotionEvent;
const-string v1, "ACTION_POINTER_DOWN"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/cn;->d:I
const-class v0, Landroid/view/MotionEvent;
const-string v1, "ACTION_POINTER_UP"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/cn;->h:I
const-class v0, Landroid/view/MotionEvent;
const-string v1, "ACTION_MASK"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/cn;->e:I
:cond_7b
:goto_7b
:try_end_7b
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_7b} :catch_7e
return-void
:cond_7c
move v0, v1
goto :goto_48
:catch_7e
move-exception v0
goto :goto_7b
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
.registers 4
:try_start_0
invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
const/4 v0, 0x1
:goto_4
return v0
:catch_5
move-exception v0
const/4 v0, 0x0
goto :goto_4
.end method
.method private static b(Landroid/view/MotionEvent;)I
.registers 3
const/4 v1, 0x0
const-string v0, "getPointerCount"
invoke-static {p0, v0, v1, v1}, Lcom/mapquest/android/maps/cn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public final a(Lcom/mapquest/android/maps/cl;)V
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/cn;->f:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/mapquest/android/maps/cn;->a:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Lcom/mapquest/android/maps/cn;->b:Z
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final a(Landroid/view/MotionEvent;)Z
.registers 13
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/mapquest/android/maps/cn;->c:Z
if-nez v0, :cond_8
move v0, v1
:goto_7
return v0
:try_start_8
:cond_8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
iget v3, p0, Lcom/mapquest/android/maps/cn;->e:I
and-int v4, v0, v3
if-nez v4, :cond_15
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mapquest/android/maps/cn;->b:Z
:cond_15
invoke-static {p1}, Lcom/mapquest/android/maps/cn;->b(Landroid/view/MotionEvent;)I
move-result v0
if-gt v0, v2, :cond_1d
move v0, v1
goto :goto_7
:cond_1d
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mapquest/android/maps/cn;->a:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mapquest/android/maps/cn;->b:Z
invoke-static {p1}, Lcom/mapquest/android/maps/cn;->b(Landroid/view/MotionEvent;)I
move-result v0
new-array v5, v0, [Landroid/graphics/PointF;
move v3, v1
:goto_2a
invoke-static {p1}, Lcom/mapquest/android/maps/cn;->b(Landroid/view/MotionEvent;)I
move-result v0
if-ge v3, v0, :cond_7f
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
aput-object v0, v5, v3
aget-object v6, v5, v3
const-string v0, "getX"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Class;
const/4 v8, 0x0
sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v9, v7, v8
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v8, v9
invoke-static {p1, v0, v7, v8}, Lcom/mapquest/android/maps/cn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
iput v0, v6, Landroid/graphics/PointF;->x:F
aget-object v6, v5, v3
const-string v0, "getY"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Class;
const/4 v8, 0x0
sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v9, v7, v8
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v8, v9
invoke-static {p1, v0, v7, v8}, Lcom/mapquest/android/maps/cn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
iput v0, v6, Landroid/graphics/PointF;->y:F
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_2a
:cond_7f
iget v0, p0, Lcom/mapquest/android/maps/cn;->d:I
if-eq v4, v0, :cond_86
const/4 v0, 0x2
if-ne v4, v0, :cond_a1
:cond_86
iget-object v0, p0, Lcom/mapquest/android/maps/cn;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_8c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/cl;
invoke-interface {v0, p1, p0, v5}, Lcom/mapquest/android/maps/cl;->a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/cn;[Landroid/graphics/PointF;)Z
move-result v0
if-eqz v0, :cond_8c
:cond_9e
:goto_9e
move v0, v2
goto/16 :goto_7
:cond_a1
iget v0, p0, Lcom/mapquest/android/maps/cn;->h:I
if-ne v4, v0, :cond_9e
iget-object v0, p0, Lcom/mapquest/android/maps/cn;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_ab
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c6
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/cl;
invoke-interface {v0}, Lcom/mapquest/android/maps/cl;->a()Z
:try_end_ba
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_ba} :catch_bb
goto :goto_ab
:catch_bb
move-exception v0
const-string v2, "com.mapquest.android.maps.toucheventhandler"
const-string v3, "Exception thrown while handling multitouch"
invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move v0, v1
goto/16 :goto_7
:cond_c6
const/4 v0, 0x0
:try_start_c7
iput-boolean v0, p0, Lcom/mapquest/android/maps/cn;->a:Z
:try_end_c9
.catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_c9} :catch_bb
goto :goto_9e
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/cn;->e:I
return v0
.end method