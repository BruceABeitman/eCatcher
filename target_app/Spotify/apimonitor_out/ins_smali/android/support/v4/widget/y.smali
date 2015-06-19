.class final Landroid/support/v4/widget/y;
.super Landroid/support/v4/widget/x;
.source "SourceFile"
.field private a:Ljava/lang/reflect/Method;
.field private b:Ljava/lang/reflect/Field;
.method constructor <init>()V
.registers 4
invoke-direct {p0}, Landroid/support/v4/widget/x;-><init>()V
:try_start_3
const-class v0, Landroid/view/View;
const-string v1, "getDisplayList"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/y;->a:Ljava/lang/reflect/Method;
:try_start_e
:goto_e
:try_end_e
.catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_e} :catch_1f
const-class v0, Landroid/view/View;
const-string v1, "mRecreateDisplayList"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/y;->b:Ljava/lang/reflect/Field;
iget-object v0, p0, Landroid/support/v4/widget/y;->b:Ljava/lang/reflect/Field;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:try_end_1e
.catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_1e} :catch_28
:goto_1e
return-void
:catch_1f
move-exception v0
const-string v1, "SlidingPaneLayout"
const-string v2, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_e
:catch_28
move-exception v0
const-string v1, "SlidingPaneLayout"
const-string v2, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_1e
.end method
.method public final a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/widget/y;->a:Ljava/lang/reflect/Method;
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v4/widget/y;->b:Ljava/lang/reflect/Field;
if-eqz v0, :cond_21
:try_start_8
iget-object v0, p0, Landroid/support/v4/widget/y;->b:Ljava/lang/reflect/Field;
const/4 v1, 0x1
invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
iget-object v0, p0, Landroid/support/v4/widget/y;->a:Ljava/lang/reflect/Method;
const/4 v1, 0x0
invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_18
invoke-super {p0, p1, p2}, Landroid/support/v4/widget/x;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
:goto_17
return-void
:catch_18
move-exception v0
const-string v1, "SlidingPaneLayout"
const-string v2, "Error refreshing display list state"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_14
:cond_21
invoke-virtual {p2}, Landroid/view/View;->invalidate()V
goto :goto_17
.end method