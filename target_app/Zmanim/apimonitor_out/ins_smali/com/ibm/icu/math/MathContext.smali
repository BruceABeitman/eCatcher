.class public final Lcom/ibm/icu/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"
.implements Ljava/io/Serializable;
.field public static final DEFAULT:Lcom/ibm/icu/math/MathContext; = null
.field private static final DEFAULT_DIGITS:I = 0x9
.field private static final DEFAULT_FORM:I = 0x1
.field private static final DEFAULT_LOSTDIGITS:Z = false
.field private static final DEFAULT_ROUNDINGMODE:I = 0x4
.field public static final ENGINEERING:I = 0x2
.field private static final MAX_DIGITS:I = 0x3b9ac9ff
.field private static final MIN_DIGITS:I = 0x0
.field public static final PLAIN:I = 0x0
.field private static final ROUNDS:[I = null
.field private static final ROUNDWORDS:[Ljava/lang/String; = null
.field public static final ROUND_CEILING:I = 0x2
.field public static final ROUND_DOWN:I = 0x1
.field public static final ROUND_FLOOR:I = 0x3
.field public static final ROUND_HALF_DOWN:I = 0x5
.field public static final ROUND_HALF_EVEN:I = 0x6
.field public static final ROUND_HALF_UP:I = 0x4
.field public static final ROUND_UNNECESSARY:I = 0x7
.field public static final ROUND_UP:I = 0x0
.field public static final SCIENTIFIC:I = 0x1
.field private static final serialVersionUID:J = 0x63696d6d63313030L
.field  digits:I
.field  form:I
.field  lostDigits:Z
.field  roundingMode:I
.method static constructor <clinit>()V
.registers 6
const/16 v1, 0x8
const/4 v5, 0x4
const/4 v4, 0x1
const/4 v3, 0x0
new-array v0, v1, [I
fill-array-data v0, :array_40
sput-object v0, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I
new-array v0, v1, [Ljava/lang/String;
const-string v1, "ROUND_HALF_UP"
aput-object v1, v0, v3
const-string v1, "ROUND_UNNECESSARY"
aput-object v1, v0, v4
const/4 v1, 0x2
const-string v2, "ROUND_CEILING"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "ROUND_DOWN"
aput-object v2, v0, v1
const-string v1, "ROUND_FLOOR"
aput-object v1, v0, v5
const/4 v1, 0x5
const-string v2, "ROUND_HALF_DOWN"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "ROUND_HALF_EVEN"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "ROUND_UP"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;
new-instance v0, Lcom/ibm/icu/math/MathContext;
const/16 v1, 0x9
invoke-direct {v0, v1, v4, v3, v5}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
sput-object v0, Lcom/ibm/icu/math/MathContext;->DEFAULT:Lcom/ibm/icu/math/MathContext;
return-void
nop
:array_40
.array-data 0x4
0x4t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(I)V
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x4
invoke-direct {p0, p1, v0, v1, v2}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
return-void
.end method
.method public constructor <init>(II)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x4
invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
return-void
.end method
.method public constructor <init>(IIZ)V
.registers 5
const/4 v0, 0x4
invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
return-void
.end method
.method public constructor <init>(IIZI)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x9
if-eq p1, v0, :cond_40
if-gez p1, :cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Digits too small: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
const v0, 0x3b9ac9ff
if-le p1, v0, :cond_40
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Digits too large: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_40
const/4 v0, 0x1
if-ne p2, v0, :cond_62
:cond_43
invoke-static {p4}, Lcom/ibm/icu/math/MathContext;->isValidRound(I)Z
move-result v0
if-nez v0, :cond_80
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad roundingMode value: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_62
const/4 v0, 0x2
if-eq p2, v0, :cond_43
if-eqz p2, :cond_43
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad form value: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_80
iput p1, p0, Lcom/ibm/icu/math/MathContext;->digits:I
iput p2, p0, Lcom/ibm/icu/math/MathContext;->form:I
iput-boolean p3, p0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
iput p4, p0, Lcom/ibm/icu/math/MathContext;->roundingMode:I
return-void
.end method
.method private static isValidRound(I)Z
.registers 4
const/4 v1, 0x0
sget-object v2, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I
array-length v0, v2
const/4 v1, 0x0
:goto_5
if-lez v0, :cond_14
sget-object v2, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I
aget v2, v2, v1
if-ne p0, v2, :cond_f
const/4 v2, 0x1
:goto_e
return v2
:cond_f
add-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_14
const/4 v2, 0x0
goto :goto_e
.end method
.method public getDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/math/MathContext;->digits:I
return v0
.end method
.method public getForm()I
.registers 2
iget v0, p0, Lcom/ibm/icu/math/MathContext;->form:I
return v0
.end method
.method public getLostDigits()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
return v0
.end method
.method public getRoundingMode()I
.registers 2
iget v0, p0, Lcom/ibm/icu/math/MathContext;->roundingMode:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
iget v4, p0, Lcom/ibm/icu/math/MathContext;->form:I
const/4 v5, 0x1
if-ne v4, v5, :cond_68
const-string v1, "SCIENTIFIC"
:goto_a
sget-object v4, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I
array-length v0, v4
const/4 v2, 0x0
:goto_e
if-lez v0, :cond_1c
iget v4, p0, Lcom/ibm/icu/math/MathContext;->roundingMode:I
sget-object v5, Lcom/ibm/icu/math/MathContext;->ROUNDS:[I
aget v5, v5, v2
if-ne v4, v5, :cond_73
sget-object v4, Lcom/ibm/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;
aget-object v3, v4, v2
:cond_1c
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "digits="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p0, Lcom/ibm/icu/math/MathContext;->digits:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "form="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "lostDigits="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-boolean v5, p0, Lcom/ibm/icu/math/MathContext;->lostDigits:Z
if-eqz v5, :cond_78
const-string v5, "1"
:goto_4f
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "roundingMode="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:cond_68
iget v4, p0, Lcom/ibm/icu/math/MathContext;->form:I
const/4 v5, 0x2
if-ne v4, v5, :cond_70
const-string v1, "ENGINEERING"
goto :goto_a
:cond_70
const-string v1, "PLAIN"
goto :goto_a
:cond_73
add-int/lit8 v0, v0, -0x1
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_78
const-string v5, "0"
goto :goto_4f
.end method