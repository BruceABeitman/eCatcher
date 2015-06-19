.class public final Lorg/codehaus/jackson/io/NumberOutput;
.super Ljava/lang/Object;
.field private static BILLION:I
.field static final FULL_TRIPLETS:[C
.field static final LEADING_TRIPLETS:[C
.field private static MAX_INT_AS_LONG:J
.field private static MILLION:I
.field private static MIN_INT_AS_LONG:J
.field private static final NULL_CHAR:C
.field static final SMALLEST_LONG:Ljava/lang/String;
.field private static TEN_BILLION_L:J
.field private static THOUSAND_L:J
.field static final sSmallIntStrs:[Ljava/lang/String;
.field static final sSmallIntStrs2:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 16
const/4 v15, 0x3
const/4 v14, 0x2
const/4 v13, 0x1
const/16 v12, 0xa
const/4 v11, 0x0
const v0, 0xf4240
sput v0, Lorg/codehaus/jackson/io/NumberOutput;->MILLION:I
const v0, 0x3b9aca00
sput v0, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I
const-wide v0, 0x2540be400L
sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->TEN_BILLION_L:J
const-wide/16 v0, 0x3e8
sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->THOUSAND_L:J
const-wide/32 v0, -0x80000000
sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->MIN_INT_AS_LONG:J
const-wide/32 v0, 0x7fffffff
sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->MAX_INT_AS_LONG:J
const-wide/high16 v0, -0x8000
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;
const/16 v0, 0xfa0
new-array v0, v0, [C
sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
const/16 v0, 0xfa0
new-array v0, v0, [C
sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
move v0, v11
move v1, v11
:goto_3b
if-ge v0, v12, :cond_87
add-int/lit8 v2, v0, 0x30
int-to-char v2, v2
if-nez v0, :cond_7b
move v3, v11
:goto_43
move v4, v1
move v1, v11
:goto_45
if-ge v1, v12, :cond_83
add-int/lit8 v5, v1, 0x30
int-to-char v5, v5
if-nez v0, :cond_7d
if-nez v1, :cond_7d
move v6, v11
:goto_4f
move v7, v4
move v4, v11
:goto_51
if-ge v4, v12, :cond_7f
add-int/lit8 v8, v4, 0x30
int-to-char v8, v8
sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
aput-char v3, v9, v7
sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
add-int/lit8 v10, v7, 0x1
aput-char v6, v9, v10
sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
add-int/lit8 v10, v7, 0x2
aput-char v8, v9, v10
sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
aput-char v2, v9, v7
sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
add-int/lit8 v10, v7, 0x1
aput-char v5, v9, v10
sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
add-int/lit8 v10, v7, 0x2
aput-char v8, v9, v10
add-int/lit8 v7, v7, 0x4
add-int/lit8 v4, v4, 0x1
goto :goto_51
:cond_7b
move v3, v2
goto :goto_43
:cond_7d
move v6, v5
goto :goto_4f
:cond_7f
add-int/lit8 v1, v1, 0x1
move v4, v7
goto :goto_45
:cond_83
add-int/lit8 v0, v0, 0x1
move v1, v4
goto :goto_3b
:cond_87
const/16 v0, 0xb
new-array v0, v0, [Ljava/lang/String;
const-string v1, "0"
aput-object v1, v0, v11
const-string v1, "1"
aput-object v1, v0, v13
const-string v1, "2"
aput-object v1, v0, v14
const-string v1, "3"
aput-object v1, v0, v15
const/4 v1, 0x4
const-string v2, "4"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "5"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "6"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "7"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "8"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "9"
aput-object v2, v0, v1
const-string v1, "10"
aput-object v1, v0, v12
sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;
new-array v0, v12, [Ljava/lang/String;
const-string v1, "-1"
aput-object v1, v0, v11
const-string v1, "-2"
aput-object v1, v0, v13
const-string v1, "-3"
aput-object v1, v0, v14
const-string v1, "-4"
aput-object v1, v0, v15
const/4 v1, 0x4
const-string v2, "-5"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "-6"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "-7"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "-8"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "-9"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "-10"
aput-object v2, v0, v1
sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static calcLongStrLength(J)I
.registers 10
const/16 v0, 0xa
sget-wide v1, Lorg/codehaus/jackson/io/NumberOutput;->TEN_BILLION_L:J
move-wide v6, v1
move v2, v0
move-wide v0, v6
:goto_7
cmp-long v3, p0, v0
if-ltz v3, :cond_f
const/16 v3, 0x13
if-ne v2, v3, :cond_10
:cond_f
return v2
:cond_10
add-int/lit8 v2, v2, 0x1
const/4 v3, 0x3
shl-long v3, v0, v3
const/4 v5, 0x1
shl-long/2addr v0, v5
add-long/2addr v0, v3
goto :goto_7
.end method
.method private static outputFullTriplet(I[CI)I
.registers 8
shl-int/lit8 v0, p0, 0x2
add-int/lit8 v1, p2, 0x1
sget-object v2, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
add-int/lit8 v3, v0, 0x1
aget-char v0, v2, v0
aput-char v0, p1, p2
add-int/lit8 v0, v1, 0x1
sget-object v2, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
add-int/lit8 v4, v3, 0x1
aget-char v2, v2, v3
aput-char v2, p1, v1
add-int/lit8 v1, v0, 0x1
sget-object v2, Lorg/codehaus/jackson/io/NumberOutput;->FULL_TRIPLETS:[C
aget-char v2, v2, v4
aput-char v2, p1, v0
return v1
.end method
.method public static outputInt(I[CI)I
.registers 9
if-gez p0, :cond_7b
const/high16 v0, -0x8000
if-ne p0, v0, :cond_c
int-to-long v0, p0
invoke-static {v0, v1, p1, p2}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I
move-result v0
:goto_b
return v0
:cond_c
add-int/lit8 v0, p2, 0x1
const/16 v1, 0x2d
aput-char v1, p1, p2
neg-int v1, p0
:goto_13
sget v2, Lorg/codehaus/jackson/io/NumberOutput;->MILLION:I
if-ge v1, v2, :cond_3b
const/16 v2, 0x3e8
if-ge v1, v2, :cond_2d
const/16 v2, 0xa
if-ge v1, v2, :cond_28
add-int/lit8 v2, v0, 0x1
add-int/lit8 v1, v1, 0x30
int-to-char v1, v1
aput-char v1, p1, v0
move v0, v2
goto :goto_b
:cond_28
invoke-static {v1, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I
move-result v0
goto :goto_b
:cond_2d
div-int/lit16 v2, v1, 0x3e8
mul-int/lit16 v3, v2, 0x3e8
sub-int/2addr v1, v3
invoke-static {v2, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I
move-result v0
invoke-static {v1, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I
move-result v0
goto :goto_b
:cond_3b
sget v2, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I
if-lt v1, v2, :cond_6c
const/4 v2, 0x1
:goto_40
if-eqz v2, :cond_53
sget v3, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I
sub-int/2addr v1, v3
sget v3, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I
if-lt v1, v3, :cond_6e
sget v3, Lorg/codehaus/jackson/io/NumberOutput;->BILLION:I
sub-int/2addr v1, v3
add-int/lit8 v3, v0, 0x1
const/16 v4, 0x32
aput-char v4, p1, v0
move v0, v3
:goto_53
:cond_53
div-int/lit16 v3, v1, 0x3e8
mul-int/lit16 v4, v3, 0x3e8
sub-int/2addr v1, v4
div-int/lit16 v4, v3, 0x3e8
mul-int/lit16 v5, v4, 0x3e8
sub-int/2addr v3, v5
if-eqz v2, :cond_76
invoke-static {v4, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I
move-result v0
:goto_63
invoke-static {v3, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I
move-result v0
invoke-static {v1, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I
move-result v0
goto :goto_b
:cond_6c
const/4 v2, 0x0
goto :goto_40
:cond_6e
add-int/lit8 v3, v0, 0x1
const/16 v4, 0x31
aput-char v4, p1, v0
move v0, v3
goto :goto_53
:cond_76
invoke-static {v4, p1, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I
move-result v0
goto :goto_63
:cond_7b
move v0, p2
move v1, p0
goto :goto_13
.end method
.method private static outputLeadingTriplet(I[CI)I
.registers 7
shl-int/lit8 v0, p0, 0x2
sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
add-int/lit8 v2, v0, 0x1
aget-char v0, v1, v0
if-eqz v0, :cond_25
add-int/lit8 v1, p2, 0x1
aput-char v0, p1, p2
move v0, v1
:goto_f
sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
add-int/lit8 v3, v2, 0x1
aget-char v1, v1, v2
if-eqz v1, :cond_1c
add-int/lit8 v2, v0, 0x1
aput-char v1, p1, v0
move v0, v2
:cond_1c
add-int/lit8 v1, v0, 0x1
sget-object v2, Lorg/codehaus/jackson/io/NumberOutput;->LEADING_TRIPLETS:[C
aget-char v2, v2, v3
aput-char v2, p1, v0
return v1
:cond_25
move v0, p2
goto :goto_f
.end method
.method public static outputLong(J[CI)I
.registers 15
const-wide/16 v0, 0x0
cmp-long v0, p0, v0
if-gez v0, :cond_4a
sget-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->MIN_INT_AS_LONG:J
cmp-long v0, p0, v0
if-lez v0, :cond_12
long-to-int v0, p0
invoke-static {v0, p2, p3}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I
move-result v0
:goto_11
return v0
:cond_12
const-wide/high16 v0, -0x8000
cmp-long v0, p0, v0
if-nez v0, :cond_26
sget-object v0, Lorg/codehaus/jackson/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {v1, v2, v0, p2, p3}, Ljava/lang/String;->getChars(II[CI)V
add-int/2addr v0, p3
goto :goto_11
:cond_26
add-int/lit8 v0, p3, 0x1
const/16 v1, 0x2d
aput-char v1, p2, p3
neg-long v1, p0
:goto_2d
invoke-static {v1, v2}, Lorg/codehaus/jackson/io/NumberOutput;->calcLongStrLength(J)I
move-result v3
add-int/2addr v3, v0
move-wide v4, v1
move v1, v3
:goto_34
sget-wide v6, Lorg/codehaus/jackson/io/NumberOutput;->MAX_INT_AS_LONG:J
cmp-long v2, v4, v6
if-lez v2, :cond_56
add-int/lit8 v1, v1, -0x3
sget-wide v6, Lorg/codehaus/jackson/io/NumberOutput;->THOUSAND_L:J
div-long v6, v4, v6
sget-wide v8, Lorg/codehaus/jackson/io/NumberOutput;->THOUSAND_L:J
mul-long/2addr v8, v6
sub-long/2addr v4, v8
long-to-int v2, v4
invoke-static {v2, p2, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I
move-wide v4, v6
goto :goto_34
:cond_4a
sget-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->MAX_INT_AS_LONG:J
cmp-long v0, p0, v0
if-gtz v0, :cond_6f
long-to-int v0, p0
invoke-static {v0, p2, p3}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I
move-result v0
goto :goto_11
:cond_56
long-to-int v2, v4
move v10, v2
move v2, v1
move v1, v10
:goto_5a
const/16 v4, 0x3e8
if-lt v1, v4, :cond_6a
add-int/lit8 v2, v2, -0x3
div-int/lit16 v4, v1, 0x3e8
mul-int/lit16 v5, v4, 0x3e8
sub-int/2addr v1, v5
invoke-static {v1, p2, v2}, Lorg/codehaus/jackson/io/NumberOutput;->outputFullTriplet(I[CI)I
move v1, v4
goto :goto_5a
:cond_6a
invoke-static {v1, p2, v0}, Lorg/codehaus/jackson/io/NumberOutput;->outputLeadingTriplet(I[CI)I
move v0, v3
goto :goto_11
:cond_6f
move v0, p3
move-wide v1, p0
goto :goto_2d
.end method
.method public static toString(D)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(I)Ljava/lang/String;
.registers 3
sget-object v0, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;
array-length v0, v0
if-ge p0, v0, :cond_19
if-ltz p0, :cond_c
sget-object v0, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;
aget-object v0, v0, p0
:goto_b
return-object v0
:cond_c
neg-int v0, p0
const/4 v1, 0x1
sub-int/2addr v0, v1
sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_19
sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;
aget-object v0, v1, v0
goto :goto_b
:cond_19
invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method public static toString(J)Ljava/lang/String;
.registers 4
const-wide/32 v0, 0x7fffffff
cmp-long v0, p0, v0
if-gtz v0, :cond_14
const-wide/32 v0, -0x80000000
cmp-long v0, p0, v0
if-ltz v0, :cond_14
long-to-int v0, p0
invoke-static {v0}, Lorg/codehaus/jackson/io/NumberOutput;->toString(I)Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
goto :goto_13
.end method