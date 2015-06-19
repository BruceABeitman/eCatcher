.class  Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
.super Ljava/lang/Object;
.source "ZoneStringFormat.java"
.field private commonlyUsed:Z
.field private genericPartialLocationStrings:[[Ljava/lang/String;
.field private strings:[Ljava/lang/String;
.method private constructor <init>([Ljava/lang/String;Z[[Ljava/lang/String;)V
.registers 9
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_23
const/4 v1, -0x1
const/4 v0, 0x0
:goto_8
array-length v2, p1
if-ge v0, v2, :cond_13
aget-object v2, p1, v0
if-eqz v2, :cond_10
move v1, v0
:cond_10
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_13
const/4 v2, -0x1
if-eq v1, v2, :cond_23
add-int/lit8 v2, v1, 0x1
new-array v2, v2, [Ljava/lang/String;
iput-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->strings:[Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->strings:[Ljava/lang/String;
add-int/lit8 v3, v1, 0x1
invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_23
iput-boolean p2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->commonlyUsed:Z
iput-object p3, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>([Ljava/lang/String;Z[[Ljava/lang/String;Lcom/ibm/icu/impl/ZoneStringFormat$1;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;-><init>([Ljava/lang/String;Z[[Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;)Z
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->isShortFormatCommonlyUsed()Z
move-result v0
return v0
.end method
.method static synthetic access$400(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;Ljava/lang/String;ZZ)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getGenericPartialLocationString(Ljava/lang/String;ZZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getGenericPartialLocationString(Ljava/lang/String;ZZ)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
if-eqz v2, :cond_2c
const/4 v0, 0x0
:goto_6
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_2c
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
aget-object v2, v2, v0
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
if-eqz p2, :cond_2d
if-eqz p3, :cond_25
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
aget-object v2, v2, v0
const/4 v3, 0x3
aget-object v2, v2, v3
if-eqz v2, :cond_2c
:cond_25
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
aget-object v2, v2, v0
const/4 v3, 0x2
aget-object v1, v2, v3
:goto_2c
:cond_2c
return-object v1
:cond_2d
iget-object v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->genericPartialLocationStrings:[[Ljava/lang/String;
aget-object v2, v2, v0
const/4 v3, 0x1
aget-object v1, v2, v3
goto :goto_2c
:cond_35
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method private getString(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->strings:[Ljava/lang/String;
if-eqz v0, :cond_10
if-ltz p1, :cond_10
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->strings:[Ljava/lang/String;
array-length v0, v0
if-ge p1, v0, :cond_10
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->strings:[Ljava/lang/String;
aget-object v0, v0, p1
:goto_f
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method private isShortFormatCommonlyUsed()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->commonlyUsed:Z
return v0
.end method