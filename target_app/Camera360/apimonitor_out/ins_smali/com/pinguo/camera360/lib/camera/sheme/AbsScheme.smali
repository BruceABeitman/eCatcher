.class public abstract Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;
.super Ljava/lang/Object;
.source "AbsScheme.java"
.implements Lcom/pinguo/camera360/lib/camera/sheme/SchemeInterface;
.field private isSupport:Z
.field private mDefValue:Ljava/lang/Object;
.field private mValuse:[Ljava/lang/Object;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport:Z
return-void
.end method
.method public analyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getCurrValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/Object;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mDefValue:Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mValuse:[Ljava/lang/Object;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mValuse:[Ljava/lang/Object;
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mValuse:[Ljava/lang/Object;
array-length v1, v1
if-le v1, v0, :cond_1b
:goto_16
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport:Z
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mValuse:[Ljava/lang/Object;
return-object v0
:cond_1b
const/4 v0, 0x0
goto :goto_16
.end method
.method protected abstract doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
.end method
.method public getDefValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mDefValue:Ljava/lang/Object;
return-object v0
.end method
.method public getValse()[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->mValuse:[Ljava/lang/Object;
return-object v0
.end method
.method public isSupport()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport:Z
return v0
.end method