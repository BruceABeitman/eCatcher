.class  Lcom/lenovo/anyshare/sdk/internal/bb$e;
.super Lcom/lenovo/anyshare/sdk/internal/bb$a;
.source "RootUtils.java"
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bb$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V
.registers 2
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bb$e;-><init>()V
return-void
.end method
.method public a(Landroid/content/Context;)Z
.registers 4
invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
if-eqz v0, :cond_e
iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_e
const/4 v1, 0x1
:goto_d
return v1
:cond_e
const/4 v1, 0x0
goto :goto_d
.end method