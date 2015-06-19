.class public Lcom/glympse/android/lib/ContactPhone;
.super Lcom/glympse/android/lib/ah;
.source "ContactPhone.java"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/ah;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ContactPhone;->iX:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/ContactPhone;->ew:Ljava/lang/String;
invoke-static {p2}, Lcom/glympse/android/lib/ContactPhone;->getNormalizedAddress(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ContactPhone;->iY:Ljava/lang/String;
return-void
.end method
.method public static getNormalizedAddress(Ljava/lang/String;)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_2d
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
check-cast v0, [C
const/4 v1, 0x0
:goto_12
if-ge v1, v2, :cond_28
aget-char v4, v0, v1
const/16 v5, 0x30
if-lt v4, v5, :cond_1e
const/16 v5, 0x39
if-le v4, v5, :cond_22
:cond_1e
const/16 v5, 0x2b
if-ne v4, v5, :cond_25
:cond_22
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_25
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_28
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2c
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_2c
.end method
.method public static getSortRank(Ljava/lang/String;)I
.registers 3
const/16 v0, 0xa
if-nez p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
const-string v1, "mobile"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_f
const/4 v0, 0x0
goto :goto_4
:cond_f
const-string v1, "iphone"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_19
const/4 v0, 0x1
goto :goto_4
:cond_19
const-string v1, "work"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4
const/4 v0, 0x2
goto :goto_4
.end method
.method public bridge synthetic getAddress()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/glympse/android/lib/ah;->getAddress()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLabel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ContactPhone;->iX:Ljava/lang/String;
return-object v0
.end method
.method public bridge synthetic getNormalizedAddress()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/glympse/android/lib/ah;->getNormalizedAddress()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSortRank()I
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ContactPhone;->iX:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/lib/ContactPhone;->getSortRank(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getType()I
.registers 2
const/4 v0, 0x1
return v0
.end method