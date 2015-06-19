.class public Lcom/flurry/sdk/ez;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(I)I
.registers 3
invoke-static {}, Lcom/flurry/sdk/ez;->c()Landroid/util/DisplayMetrics;
move-result-object v0
int-to-float v1, p0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
div-float v0, v1, v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method public static a()Landroid/graphics/Point;
.registers 6
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2}, Landroid/graphics/Point;-><init>()V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x11
if-lt v0, v3, :cond_23
invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
:goto_22
return-object v2
:cond_23
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xe
if-lt v0, v3, :cond_63
:try_start_29
const-class v0, Landroid/view/Display;
const-string v3, "getRawHeight"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Class;
invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const-class v0, Landroid/view/Display;
const-string v4, "getRawWidth"
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Class;
invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, v2, Landroid/graphics/Point;->x:I
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, v2, Landroid/graphics/Point;->y:I
:try_end_5d
.catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_5d} :catch_5e
goto :goto_22
:catch_5e
move-exception v0
invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
goto :goto_22
:cond_63
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xd
if-lt v0, v3, :cond_6d
invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
goto :goto_22
:cond_6d
invoke-virtual {v1}, Landroid/view/Display;->getWidth()I
move-result v0
iput v0, v2, Landroid/graphics/Point;->x:I
invoke-virtual {v1}, Landroid/view/Display;->getHeight()I
move-result v0
iput v0, v2, Landroid/graphics/Point;->y:I
goto :goto_22
.end method
.method public static b(I)I
.registers 3
invoke-static {}, Lcom/flurry/sdk/ez;->c()Landroid/util/DisplayMetrics;
move-result-object v0
int-to-float v1, p0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method public static b()Landroid/util/DisplayMetrics;
.registers 2
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
return-object v1
.end method
.method public static c()Landroid/util/DisplayMetrics;
.registers 5
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x11
if-lt v0, v2, :cond_23
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
:goto_22
return-object v0
:cond_23
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v0, v2, :cond_49
:try_start_29
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
const-class v2, Landroid/view/Display;
const-string v3, "getRealMetrics"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Class;
invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v3, v4
invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_42
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_43
goto :goto_22
:catch_43
move-exception v0
invoke-static {}, Lcom/flurry/sdk/ez;->b()Landroid/util/DisplayMetrics;
move-result-object v0
goto :goto_22
:cond_49
invoke-static {}, Lcom/flurry/sdk/ez;->b()Landroid/util/DisplayMetrics;
move-result-object v0
goto :goto_22
.end method
.method public static c(I)Landroid/util/Pair;
.registers 3
invoke-static {}, Lcom/flurry/sdk/ez;->g()I
move-result v0
invoke-static {}, Lcom/flurry/sdk/ez;->h()I
move-result v1
packed-switch p0, :pswitch_data_26
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
move-result-object v0
:goto_17
return-object v0
:pswitch_18
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
move-result-object v0
goto :goto_17
nop
:pswitch_data_26
.packed-switch 0x2
:pswitch_18
.end packed-switch
.end method
.method public static d()F
.registers 1
invoke-static {}, Lcom/flurry/sdk/ez;->c()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
return v0
.end method
.method public static e()I
.registers 1
invoke-static {}, Lcom/flurry/sdk/ez;->a()Landroid/graphics/Point;
move-result-object v0
iget v0, v0, Landroid/graphics/Point;->x:I
return v0
.end method
.method public static f()I
.registers 1
invoke-static {}, Lcom/flurry/sdk/ez;->a()Landroid/graphics/Point;
move-result-object v0
iget v0, v0, Landroid/graphics/Point;->y:I
return v0
.end method
.method public static g()I
.registers 1
invoke-static {}, Lcom/flurry/sdk/ez;->e()I
move-result v0
invoke-static {v0}, Lcom/flurry/sdk/ez;->a(I)I
move-result v0
return v0
.end method
.method public static h()I
.registers 1
invoke-static {}, Lcom/flurry/sdk/ez;->f()I
move-result v0
invoke-static {v0}, Lcom/flurry/sdk/ez;->a(I)I
move-result v0
return v0
.end method
.method public static i()I
.registers 3
invoke-static {}, Lcom/flurry/sdk/ez;->a()Landroid/graphics/Point;
move-result-object v0
iget v1, v0, Landroid/graphics/Point;->x:I
iget v2, v0, Landroid/graphics/Point;->y:I
if-ne v1, v2, :cond_c
const/4 v0, 0x3
:goto_b
return v0
:cond_c
iget v1, v0, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Point;->y:I
if-ge v1, v0, :cond_14
const/4 v0, 0x1
goto :goto_b
:cond_14
const/4 v0, 0x2
goto :goto_b
.end method
.method public static j()Landroid/util/Pair;
.registers 2
invoke-static {}, Lcom/flurry/sdk/ez;->g()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {}, Lcom/flurry/sdk/ez;->h()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
move-result-object v0
return-object v0
.end method