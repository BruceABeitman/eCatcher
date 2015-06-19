.class public Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;
.source "SchemeMaxMin.java"
.field  keyMax:Ljava/lang/String;
.field  keyMin:Ljava/lang/String;
.field  keyStep:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
.registers 6
invoke-direct {p0, p1, p4}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyStep:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyMax:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyMin:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
.registers 7
invoke-direct {p0, p1, p5}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyStep:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyStep:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyMax:Ljava/lang/String;
iput-object p4, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyMin:Ljava/lang/String;
return-void
.end method
.method public bridge synthetic doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
.registers 9
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyStep:Ljava/lang/String;
if-nez v6, :cond_31
const/high16 v3, 0x3f80
:goto_6
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyMax:Ljava/lang/String;
invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyMin:Ljava/lang/String;
invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v2
new-instance v4, Ljava/util/LinkedList;
invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
move v0, v2
:goto_20
cmpg-float v6, v0, v1
if-lez v6, :cond_3c
invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
move-result v6
new-array v6, v6, [Ljava/lang/String;
invoke-virtual {v4, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v5
check-cast v5, [Ljava/lang/String;
return-object v5
:cond_31
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;->keyStep:Ljava/lang/String;
invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v3
goto :goto_6
:cond_3c
invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
add-float/2addr v0, v3
goto :goto_20
.end method