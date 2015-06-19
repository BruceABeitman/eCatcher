.class public Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;
.source "SchemeSingle.java"
.field  separator:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
.registers 5
invoke-direct {p0, p1, p3}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;->separator:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;->separator:Ljava/lang/String;
return-void
.end method
.method public bridge synthetic doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;->doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
.registers 11
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;->keyName:Ljava/lang/String;
invoke-virtual {p1, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;->separator:Ljava/lang/String;
invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v8
if-gez v8, :cond_26
invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
add-int/lit8 v3, v1, 0x0
add-int/lit8 v8, v3, 0x1
new-array v6, v8, [Ljava/lang/String;
const/4 v0, 0x0
:goto_1a
if-le v0, v3, :cond_1d
:cond_1c
return-object v6
:cond_1d
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_26
iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;->separator:Ljava/lang/String;
invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
aget-object v8, v7, v8
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
const/4 v8, 0x1
aget-object v8, v7, v8
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
if-ge v1, v2, :cond_47
move v4, v1
move v1, v2
move v2, v4
:cond_47
sub-int v3, v1, v2
add-int/lit8 v8, v3, 0x1
new-array v6, v8, [Ljava/lang/String;
const/4 v0, 0x0
:goto_4e
if-gt v0, v3, :cond_1c
add-int v8, v2, v0
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4e
.end method