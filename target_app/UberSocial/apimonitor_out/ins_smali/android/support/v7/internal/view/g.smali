.class  Landroid/support/v7/internal/view/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field private static final a:[Ljava/lang/Class;
.field private b:Ljava/lang/Object;
.field private c:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
const-class v2, Landroid/view/MenuItem;
aput-object v2, v0, v1
sput-object v0, Landroid/support/v7/internal/view/g;->a:[Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/view/g;->b:Ljava/lang/Object;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
:try_start_9
sget-object v0, Landroid/support/v7/internal/view/g;->a:[Ljava/lang/Class;
invoke-virtual {v1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/g;->c:Ljava/lang/reflect/Method;
:try_end_11
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12
return-void
:catch_12
move-exception v0
new-instance v2, Landroid/view/InflateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Couldn\'t resolve menu item onClick handler "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " in class "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
throw v2
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/view/g; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
:try_start_1
iget-object v1, p0, Landroid/support/v7/internal/view/g;->c:Ljava/lang/reflect/Method;
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v1
sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-ne v1, v2, :cond_20
iget-object v0, p0, Landroid/support/v7/internal/view/g;->c:Ljava/lang/reflect/Method;
iget-object v1, p0, Landroid/support/v7/internal/view/g;->b:Ljava/lang/Object;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
:goto_1f
move v2, v0
const-string v1, " - Landroid/support/v7/internal/view/g; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_20
iget-object v1, p0, Landroid/support/v7/internal/view/g;->c:Ljava/lang/reflect/Method;
iget-object v2, p0, Landroid/support/v7/internal/view/g;->b:Ljava/lang/Object;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e
goto :goto_1f
:catch_2e
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method