.class  Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field private static final PARAM_TYPES:[Ljava/lang/Class;
.field private mMethod:Ljava/lang/reflect/Method;
.field private mRealOwner:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
const-class v2, Landroid/view/MenuItem;
aput-object v2, v0, v1
sput-object v0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
:try_start_9
sget-object v3, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;
invoke-virtual {v0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
:try_end_11
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12
return-void
:catch_12
move-exception v1
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
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
throw v2
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
:try_start_1
iget-object v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v2
sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-ne v2, v3, :cond_20
iget-object v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
iget-object v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
:goto_1f
move v2, v1
const-string v1, " - Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:cond_20
iget-object v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e
goto :goto_1f
:catch_2e
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method