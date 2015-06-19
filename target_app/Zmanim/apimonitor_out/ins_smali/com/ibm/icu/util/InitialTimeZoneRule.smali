.class public Lcom/ibm/icu/util/InitialTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source "InitialTimeZoneRule.java"
.field private static final serialVersionUID:J = 0x1a0b01341cdc0206L
.method public constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V
return-void
.end method
.method public getFinalStart(II)Ljava/util/Date;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getFirstStart(II)Ljava/util/Date;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getNextStart(JIIZ)Ljava/util/Date;
.registers 7
const/4 v0, 0x0
return-object v0
.end method
.method public getPreviousStart(JIIZ)Ljava/util/Date;
.registers 7
const/4 v0, 0x0
return-object v0
.end method
.method public isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z
.registers 3
instance-of v0, p1, Lcom/ibm/icu/util/InitialTimeZoneRule;
if-eqz v0, :cond_9
invoke-super {p0, p1}, Lcom/ibm/icu/util/TimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public isTransitionRule()Z
.registers 2
const/4 v0, 0x0
return v0
.end method