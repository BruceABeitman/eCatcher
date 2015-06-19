.class public Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;
.source "SchemeMax.java"
.field  keyMax:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
.registers 4
invoke-direct {p0, p1, p3}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;->keyMax:Ljava/lang/String;
return-void
.end method
.method public bridge synthetic doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;->doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
.registers 7
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;->keyMax:Ljava/lang/String;
invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
add-int/lit8 v2, v1, 0x0
add-int/lit8 v4, v2, 0x1
new-array v3, v4, [Ljava/lang/String;
const/4 v0, 0x0
:goto_11
if-le v0, v1, :cond_14
return-object v3
:cond_14
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_11
.end method