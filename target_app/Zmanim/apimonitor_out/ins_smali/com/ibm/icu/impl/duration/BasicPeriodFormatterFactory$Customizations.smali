.class  Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"
.field  countVariant:B
.field  displayDirection:Z
.field  displayLimit:Z
.field  separatorVariant:B
.field  unitVariant:B
.method constructor <init>()V
.registers 3
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z
iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z
const/4 v0, 0x2
iput-byte v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B
iput-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B
iput-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B
return-void
.end method
.method public copy()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
.registers 3
new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
invoke-direct {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V
iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z
iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z
iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z
iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B
iput-byte v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B
iput-byte v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B
iput-byte v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B
return-object v0
.end method