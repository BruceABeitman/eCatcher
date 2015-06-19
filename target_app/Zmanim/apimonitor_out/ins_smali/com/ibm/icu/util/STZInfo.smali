.class final Lcom/ibm/icu/util/STZInfo;
.super Ljava/lang/Object;
.source "STZInfo.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x6cef6c8f34397e78L
.field  ea:Z
.field  edm:I
.field  edw:I
.field  edwm:I
.field  em:I
.field  et:I
.field  sa:Z
.field  sdm:I
.field  sdw:I
.field  sdwm:I
.field  sm:I
.field  st:I
.field  sy:I
.method constructor <init>()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/ibm/icu/util/STZInfo;->sy:I
iput v0, p0, Lcom/ibm/icu/util/STZInfo;->sm:I
iput v0, p0, Lcom/ibm/icu/util/STZInfo;->em:I
return-void
.end method
.method  applyTo(Lcom/ibm/icu/util/SimpleTimeZone;)V
.registers 9
const/4 v6, -0x1
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sy:I
if-eq v0, v6, :cond_a
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sy:I
invoke-virtual {p1, v0}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartYear(I)V
:cond_a
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sm:I
if-eq v0, v6, :cond_1d
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sdm:I
if-ne v0, v6, :cond_31
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sm:I
iget v1, p0, Lcom/ibm/icu/util/STZInfo;->sdwm:I
iget v2, p0, Lcom/ibm/icu/util/STZInfo;->sdw:I
iget v3, p0, Lcom/ibm/icu/util/STZInfo;->st:I
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIII)V
:goto_1d
:cond_1d
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->em:I
if-eq v0, v6, :cond_30
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->edm:I
if-ne v0, v6, :cond_4e
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->em:I
iget v1, p0, Lcom/ibm/icu/util/STZInfo;->edwm:I
iget v2, p0, Lcom/ibm/icu/util/STZInfo;->edw:I
iget v3, p0, Lcom/ibm/icu/util/STZInfo;->et:I
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIII)V
:goto_30
:cond_30
return-void
:cond_31
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sdw:I
if-ne v0, v6, :cond_3f
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->sm:I
iget v1, p0, Lcom/ibm/icu/util/STZInfo;->sdm:I
iget v2, p0, Lcom/ibm/icu/util/STZInfo;->st:I
invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(III)V
goto :goto_1d
:cond_3f
iget v1, p0, Lcom/ibm/icu/util/STZInfo;->sm:I
iget v2, p0, Lcom/ibm/icu/util/STZInfo;->sdm:I
iget v3, p0, Lcom/ibm/icu/util/STZInfo;->sdw:I
iget v4, p0, Lcom/ibm/icu/util/STZInfo;->st:I
iget-boolean v5, p0, Lcom/ibm/icu/util/STZInfo;->sa:Z
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIIZ)V
goto :goto_1d
:cond_4e
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->edw:I
if-ne v0, v6, :cond_5c
iget v0, p0, Lcom/ibm/icu/util/STZInfo;->em:I
iget v1, p0, Lcom/ibm/icu/util/STZInfo;->edm:I
iget v2, p0, Lcom/ibm/icu/util/STZInfo;->et:I
invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(III)V
goto :goto_30
:cond_5c
iget v1, p0, Lcom/ibm/icu/util/STZInfo;->em:I
iget v2, p0, Lcom/ibm/icu/util/STZInfo;->edm:I
iget v3, p0, Lcom/ibm/icu/util/STZInfo;->edw:I
iget v4, p0, Lcom/ibm/icu/util/STZInfo;->et:I
iget-boolean v5, p0, Lcom/ibm/icu/util/STZInfo;->ea:Z
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIIZ)V
goto :goto_30
.end method
.method  setEnd(IIIIIZ)V
.registers 7
iput p1, p0, Lcom/ibm/icu/util/STZInfo;->em:I
iput p2, p0, Lcom/ibm/icu/util/STZInfo;->edwm:I
iput p3, p0, Lcom/ibm/icu/util/STZInfo;->edw:I
iput p4, p0, Lcom/ibm/icu/util/STZInfo;->et:I
iput p5, p0, Lcom/ibm/icu/util/STZInfo;->edm:I
iput-boolean p6, p0, Lcom/ibm/icu/util/STZInfo;->ea:Z
return-void
.end method
.method  setStart(IIIIIZ)V
.registers 7
iput p1, p0, Lcom/ibm/icu/util/STZInfo;->sm:I
iput p2, p0, Lcom/ibm/icu/util/STZInfo;->sdwm:I
iput p3, p0, Lcom/ibm/icu/util/STZInfo;->sdw:I
iput p4, p0, Lcom/ibm/icu/util/STZInfo;->st:I
iput p5, p0, Lcom/ibm/icu/util/STZInfo;->sdm:I
iput-boolean p6, p0, Lcom/ibm/icu/util/STZInfo;->sa:Z
return-void
.end method