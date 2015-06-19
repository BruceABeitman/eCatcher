.class public Lcom/ibm/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source "RangeDateRule.java"
.implements Lcom/ibm/icu/util/DateRule;
.field  ranges:Ljava/util/Vector;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0, v1, v1}, Ljava/util/Vector;-><init>(II)V
iput-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
return-void
.end method
.method private rangeAt(I)Lcom/ibm/icu/util/Range;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge p1, v0, :cond_12
iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/Range;
move-object v0, p0
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private startIndex(Ljava/util/Date;)I
.registers 6
iget-object v3, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
invoke-virtual {v3}, Ljava/util/Vector;->size()I
move-result v1
const/4 v0, 0x0
:goto_7
iget-object v3, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
invoke-virtual {v3}, Ljava/util/Vector;->size()I
move-result v3
if-ge v0, v3, :cond_1f
iget-object v3, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/util/Range;
iget-object v3, v2, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;
invoke-virtual {p1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v3
if-eqz v3, :cond_20
:cond_1f
return v1
:cond_20
move v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method public add(Lcom/ibm/icu/util/DateRule;)V
.registers 5
new-instance v0, Ljava/util/Date;
const-wide/high16 v1, -0x8000
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/RangeDateRule;->add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
return-void
.end method
.method public add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
.registers 5
iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
new-instance v1, Lcom/ibm/icu/util/Range;
invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/Range;-><init>(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
.registers 8
invoke-direct {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I
move-result v1
iget-object v4, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
if-ne v1, v4, :cond_d
const/4 v1, 0x0
:cond_d
const/4 v3, 0x0
invoke-direct {p0, v1}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;
move-result-object v2
add-int/lit8 v4, v1, 0x1
invoke-direct {p0, v4}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;
move-result-object v0
if-eqz v2, :cond_28
iget-object v4, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
if-eqz v4, :cond_28
if-eqz v0, :cond_29
iget-object v4, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
iget-object v5, v0, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;
invoke-interface {v4, p1, v5}, Lcom/ibm/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
move-result-object v3
:cond_28
:goto_28
return-object v3
:cond_29
iget-object v4, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
invoke-interface {v4, p1}, Lcom/ibm/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;
move-result-object v3
goto :goto_28
.end method
.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
.registers 9
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;
move-result-object v5
:goto_6
return-object v5
:cond_7
invoke-direct {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I
move-result v1
const/4 v4, 0x0
invoke-direct {p0, v1}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;
move-result-object v2
:cond_10
:goto_10
if-nez v4, :cond_3d
if-eqz v2, :cond_3d
iget-object v5, v2, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;
invoke-virtual {v5, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v5
if-nez v5, :cond_3d
move-object v3, v2
add-int/lit8 v5, v1, 0x1
invoke-direct {p0, v5}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;
move-result-object v2
iget-object v5, v3, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
if-eqz v5, :cond_10
if-eqz v2, :cond_3b
iget-object v5, v2, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;
invoke-virtual {v5, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v5
if-nez v5, :cond_3b
iget-object v5, v2, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;
move-object v0, v5
:goto_34
iget-object v5, v3, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
invoke-interface {v5, p1, v0}, Lcom/ibm/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
move-result-object v4
goto :goto_10
:cond_3b
move-object v0, p2
goto :goto_34
:cond_3d
move-object v5, v4
goto :goto_6
.end method
.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/RangeDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isOn(Ljava/util/Date;)Z
.registers 4
invoke-direct {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I
move-result v1
invoke-direct {p0, v1}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;
move-result-object v0
if-eqz v0, :cond_18
iget-object v1, v0, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
if-eqz v1, :cond_18
iget-object v1, v0, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;
invoke-interface {v1, p1}, Lcom/ibm/icu/util/DateRule;->isOn(Ljava/util/Date;)Z
move-result v1
if-eqz v1, :cond_18
const/4 v1, 0x1
:goto_17
return v1
:cond_18
const/4 v1, 0x0
goto :goto_17
.end method