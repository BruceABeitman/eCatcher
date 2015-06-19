.class public final Lcom/userzoom/cf;
.super Ljava/lang/Object;
.field private static a:I
.field private static b:I
.field private static c:J
.field private static d:J
.field private static e:J
.field private static f:J
.field private static g:Ljava/lang/String;
.field private static h:[C
.field private static i:[C
.field private static j:[B
.method static constructor <clinit>()V
.registers 16
const/4 v15, 0x2
const/4 v14, 0x1
const/16 v13, 0xfa0
const/16 v12, 0xa
const/4 v1, 0x0
const v0, 0xf4240
sput v0, Lcom/userzoom/cf;->a:I
const v0, 0x3b9aca00
sput v0, Lcom/userzoom/cf;->b:I
const-wide v2, 0x2540be400L
sput-wide v2, Lcom/userzoom/cf;->c:J
const-wide/16 v2, 0x3e8
sput-wide v2, Lcom/userzoom/cf;->d:J
const-wide/32 v2, -0x80000000
sput-wide v2, Lcom/userzoom/cf;->e:J
const-wide/32 v2, 0x7fffffff
sput-wide v2, Lcom/userzoom/cf;->f:J
const-string v0, "-9223372036854775808"
sput-object v0, Lcom/userzoom/cf;->g:Ljava/lang/String;
new-array v0, v13, [C
sput-object v0, Lcom/userzoom/cf;->h:[C
new-array v0, v13, [C
sput-object v0, Lcom/userzoom/cf;->i:[C
move v8, v1
move v5, v1
:goto_34
if-ge v8, v12, :cond_80
add-int/lit8 v0, v8, 0x30
int-to-char v2, v0
if-nez v8, :cond_73
move v0, v1
:goto_3c
move v7, v1
:goto_3d
if-ge v7, v12, :cond_7c
add-int/lit8 v3, v7, 0x30
int-to-char v4, v3
if-nez v8, :cond_75
if-nez v7, :cond_75
move v3, v1
:goto_47
move v6, v5
move v5, v1
:goto_49
if-ge v5, v12, :cond_77
add-int/lit8 v9, v5, 0x30
int-to-char v9, v9
sget-object v10, Lcom/userzoom/cf;->h:[C
aput-char v0, v10, v6
sget-object v10, Lcom/userzoom/cf;->h:[C
add-int/lit8 v11, v6, 0x1
aput-char v3, v10, v11
sget-object v10, Lcom/userzoom/cf;->h:[C
add-int/lit8 v11, v6, 0x2
aput-char v9, v10, v11
sget-object v10, Lcom/userzoom/cf;->i:[C
aput-char v2, v10, v6
sget-object v10, Lcom/userzoom/cf;->i:[C
add-int/lit8 v11, v6, 0x1
aput-char v4, v10, v11
sget-object v10, Lcom/userzoom/cf;->i:[C
add-int/lit8 v11, v6, 0x2
aput-char v9, v10, v11
add-int/lit8 v6, v6, 0x4
add-int/lit8 v5, v5, 0x1
goto :goto_49
:cond_73
move v0, v2
goto :goto_3c
:cond_75
move v3, v4
goto :goto_47
:cond_77
add-int/lit8 v3, v7, 0x1
move v7, v3
move v5, v6
goto :goto_3d
:cond_7c
add-int/lit8 v0, v8, 0x1
move v8, v0
goto :goto_34
:cond_80
new-array v0, v13, [B
sput-object v0, Lcom/userzoom/cf;->j:[B
move v0, v1
:goto_85
if-ge v0, v13, :cond_93
sget-object v2, Lcom/userzoom/cf;->j:[B
sget-object v3, Lcom/userzoom/cf;->i:[C
aget-char v3, v3, v0
int-to-byte v3, v3
aput-byte v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_85
:cond_93
const/16 v0, 0xb
new-array v0, v0, [Ljava/lang/String;
const-string v2, "0"
aput-object v2, v0, v1
const-string v2, "1"
aput-object v2, v0, v14
const-string v2, "2"
aput-object v2, v0, v15
const/4 v2, 0x3
const-string v3, "3"
aput-object v3, v0, v2
const/4 v2, 0x4
const-string v3, "4"
aput-object v3, v0, v2
const/4 v2, 0x5
const-string v3, "5"
aput-object v3, v0, v2
const/4 v2, 0x6
const-string v3, "6"
aput-object v3, v0, v2
const/4 v2, 0x7
const-string v3, "7"
aput-object v3, v0, v2
const/16 v2, 0x8
const-string v3, "8"
aput-object v3, v0, v2
const/16 v2, 0x9
const-string v3, "9"
aput-object v3, v0, v2
const-string v2, "10"
aput-object v2, v0, v12
new-array v0, v12, [Ljava/lang/String;
const-string v2, "-1"
aput-object v2, v0, v1
const-string v1, "-2"
aput-object v1, v0, v14
const-string v1, "-3"
aput-object v1, v0, v15
const/4 v1, 0x3
const-string v2, "-4"
aput-object v2, v0, v1
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
return-void
.end method
.method public static a(I[BI)I
.registers 13
const/16 v9, 0x3e8
const/16 v6, 0x2d
const/4 v2, 0x0
move v3, p2
move v1, p0
:goto_7
if-gez v1, :cond_ec
const/high16 v0, -0x8000
if-ne v1, v0, :cond_78
int-to-long v0, v1
const-wide/16 v4, 0x0
cmp-long v4, v0, v4
if-gez v4, :cond_5d
sget-wide v4, Lcom/userzoom/cf;->e:J
cmp-long v4, v0, v4
if-lez v4, :cond_1c
long-to-int v1, v0
goto :goto_7
:cond_1c
const-wide/high16 v4, -0x8000
cmp-long v4, v0, v4
if-nez v4, :cond_3a
sget-object v0, Lcom/userzoom/cf;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
move v5, v3
:goto_29
if-ge v2, v0, :cond_77
add-int/lit8 v3, v5, 0x1
sget-object v1, Lcom/userzoom/cf;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
int-to-byte v1, v1
aput-byte v1, p1, v5
add-int/lit8 v2, v2, 0x1
move v5, v3
goto :goto_29
:cond_3a
add-int/lit8 v2, v3, 0x1
aput-byte v6, p1, v3
neg-long v0, v0
:goto_3f
invoke-static {v0, v1}, Lcom/userzoom/cf;->a(J)I
move-result v3
add-int v5, v2, v3
move v3, v5
:goto_46
sget-wide v6, Lcom/userzoom/cf;->f:J
cmp-long v4, v0, v6
if-lez v4, :cond_65
add-int/lit8 v6, v3, -0x3
sget-wide v3, Lcom/userzoom/cf;->d:J
div-long v3, v0, v3
sget-wide v7, Lcom/userzoom/cf;->d:J
mul-long/2addr v7, v3
sub-long/2addr v0, v7
long-to-int v0, v0
invoke-static {v0, p1, v6}, Lcom/userzoom/cf;->c(I[BI)I
move-wide v0, v3
move v3, v6
goto :goto_46
:cond_5d
sget-wide v4, Lcom/userzoom/cf;->f:J
cmp-long v4, v0, v4
if-gtz v4, :cond_e9
long-to-int v1, v0
goto :goto_7
:cond_65
long-to-int v0, v0
:goto_66
if-lt v0, v9, :cond_74
add-int/lit8 v3, v3, -0x3
div-int/lit16 v1, v0, 0x3e8
mul-int/lit16 v4, v1, 0x3e8
sub-int/2addr v0, v4
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->c(I[BI)I
move v0, v1
goto :goto_66
:cond_74
invoke-static {v0, p1, v2}, Lcom/userzoom/cf;->b(I[BI)I
:goto_77
:cond_77
return v5
:cond_78
add-int/lit8 v0, v3, 0x1
aput-byte v6, p1, v3
neg-int v1, v1
move v3, v0
move v0, v1
:goto_7f
sget v1, Lcom/userzoom/cf;->a:I
if-ge v0, v1, :cond_a6
if-ge v0, v9, :cond_98
const/16 v1, 0xa
if-ge v0, v1, :cond_93
add-int/lit8 v1, v3, 0x1
add-int/lit8 v0, v0, 0x30
int-to-byte v0, v0
aput-byte v0, p1, v3
move v0, v1
:goto_91
move v5, v0
goto :goto_77
:cond_93
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->b(I[BI)I
move-result v0
goto :goto_91
:cond_98
div-int/lit16 v1, v0, 0x3e8
mul-int/lit16 v2, v1, 0x3e8
sub-int/2addr v0, v2
invoke-static {v1, p1, v3}, Lcom/userzoom/cf;->b(I[BI)I
move-result v1
invoke-static {v0, p1, v1}, Lcom/userzoom/cf;->c(I[BI)I
move-result v0
goto :goto_91
:cond_a6
sget v1, Lcom/userzoom/cf;->b:I
if-lt v0, v1, :cond_ac
const/4 v1, 0x1
move v2, v1
:cond_ac
if-eqz v2, :cond_c1
sget v1, Lcom/userzoom/cf;->b:I
sub-int v1, v0, v1
sget v0, Lcom/userzoom/cf;->b:I
if-lt v1, v0, :cond_db
sget v0, Lcom/userzoom/cf;->b:I
sub-int/2addr v1, v0
add-int/lit8 v0, v3, 0x1
const/16 v4, 0x32
aput-byte v4, p1, v3
move v3, v0
move v0, v1
:goto_c1
:cond_c1
div-int/lit16 v1, v0, 0x3e8
mul-int/lit16 v4, v1, 0x3e8
sub-int v4, v0, v4
div-int/lit16 v0, v1, 0x3e8
mul-int/lit16 v5, v0, 0x3e8
sub-int/2addr v1, v5
if-eqz v2, :cond_e4
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->c(I[BI)I
move-result v0
:goto_d2
invoke-static {v1, p1, v0}, Lcom/userzoom/cf;->c(I[BI)I
move-result v0
invoke-static {v4, p1, v0}, Lcom/userzoom/cf;->c(I[BI)I
move-result v5
goto :goto_77
:cond_db
add-int/lit8 v0, v3, 0x1
const/16 v4, 0x31
aput-byte v4, p1, v3
move v3, v0
move v0, v1
goto :goto_c1
:cond_e4
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->b(I[BI)I
move-result v0
goto :goto_d2
:cond_e9
move v2, v3
goto/16 :goto_3f
:cond_ec
move v0, v1
goto :goto_7f
.end method
.method public static a(I[CI)I
.registers 13
const/16 v9, 0x3e8
const/16 v6, 0x2d
const/4 v2, 0x0
move v3, p2
move v1, p0
:goto_7
if-gez v1, :cond_e3
const/high16 v0, -0x8000
if-ne v1, v0, :cond_6e
int-to-long v0, v1
const-wide/16 v4, 0x0
cmp-long v4, v0, v4
if-gez v4, :cond_53
sget-wide v4, Lcom/userzoom/cf;->e:J
cmp-long v4, v0, v4
if-lez v4, :cond_1c
long-to-int v1, v0
goto :goto_7
:cond_1c
const-wide/high16 v4, -0x8000
cmp-long v4, v0, v4
if-nez v4, :cond_30
sget-object v0, Lcom/userzoom/cf;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
sget-object v1, Lcom/userzoom/cf;->g:Ljava/lang/String;
invoke-virtual {v1, v2, v0, p1, v3}, Ljava/lang/String;->getChars(II[CI)V
add-int v5, v3, v0
:goto_2f
return v5
:cond_30
add-int/lit8 v2, v3, 0x1
aput-char v6, p1, v3
neg-long v0, v0
:goto_35
invoke-static {v0, v1}, Lcom/userzoom/cf;->a(J)I
move-result v3
add-int v5, v2, v3
move v3, v5
:goto_3c
sget-wide v6, Lcom/userzoom/cf;->f:J
cmp-long v4, v0, v6
if-lez v4, :cond_5b
add-int/lit8 v6, v3, -0x3
sget-wide v3, Lcom/userzoom/cf;->d:J
div-long v3, v0, v3
sget-wide v7, Lcom/userzoom/cf;->d:J
mul-long/2addr v7, v3
sub-long/2addr v0, v7
long-to-int v0, v0
invoke-static {v0, p1, v6}, Lcom/userzoom/cf;->c(I[CI)I
move-wide v0, v3
move v3, v6
goto :goto_3c
:cond_53
sget-wide v4, Lcom/userzoom/cf;->f:J
cmp-long v4, v0, v4
if-gtz v4, :cond_e0
long-to-int v1, v0
goto :goto_7
:cond_5b
long-to-int v0, v0
:goto_5c
if-lt v0, v9, :cond_6a
add-int/lit8 v3, v3, -0x3
div-int/lit16 v1, v0, 0x3e8
mul-int/lit16 v4, v1, 0x3e8
sub-int/2addr v0, v4
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->c(I[CI)I
move v0, v1
goto :goto_5c
:cond_6a
invoke-static {v0, p1, v2}, Lcom/userzoom/cf;->b(I[CI)I
goto :goto_2f
:cond_6e
add-int/lit8 v0, v3, 0x1
aput-char v6, p1, v3
neg-int v1, v1
move v3, v0
move v0, v1
:goto_75
sget v1, Lcom/userzoom/cf;->a:I
if-ge v0, v1, :cond_9c
if-ge v0, v9, :cond_8e
const/16 v1, 0xa
if-ge v0, v1, :cond_89
add-int/lit8 v1, v3, 0x1
add-int/lit8 v0, v0, 0x30
int-to-char v0, v0
aput-char v0, p1, v3
move v0, v1
:goto_87
move v5, v0
goto :goto_2f
:cond_89
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->b(I[CI)I
move-result v0
goto :goto_87
:cond_8e
div-int/lit16 v1, v0, 0x3e8
mul-int/lit16 v2, v1, 0x3e8
sub-int/2addr v0, v2
invoke-static {v1, p1, v3}, Lcom/userzoom/cf;->b(I[CI)I
move-result v1
invoke-static {v0, p1, v1}, Lcom/userzoom/cf;->c(I[CI)I
move-result v0
goto :goto_87
:cond_9c
sget v1, Lcom/userzoom/cf;->b:I
if-lt v0, v1, :cond_a2
const/4 v1, 0x1
move v2, v1
:cond_a2
if-eqz v2, :cond_b7
sget v1, Lcom/userzoom/cf;->b:I
sub-int v1, v0, v1
sget v0, Lcom/userzoom/cf;->b:I
if-lt v1, v0, :cond_d2
sget v0, Lcom/userzoom/cf;->b:I
sub-int/2addr v1, v0
add-int/lit8 v0, v3, 0x1
const/16 v4, 0x32
aput-char v4, p1, v3
move v3, v0
move v0, v1
:goto_b7
:cond_b7
div-int/lit16 v1, v0, 0x3e8
mul-int/lit16 v4, v1, 0x3e8
sub-int v4, v0, v4
div-int/lit16 v0, v1, 0x3e8
mul-int/lit16 v5, v0, 0x3e8
sub-int/2addr v1, v5
if-eqz v2, :cond_db
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->c(I[CI)I
move-result v0
:goto_c8
invoke-static {v1, p1, v0}, Lcom/userzoom/cf;->c(I[CI)I
move-result v0
invoke-static {v4, p1, v0}, Lcom/userzoom/cf;->c(I[CI)I
move-result v5
goto/16 :goto_2f
:cond_d2
add-int/lit8 v0, v3, 0x1
const/16 v4, 0x31
aput-char v4, p1, v3
move v3, v0
move v0, v1
goto :goto_b7
:cond_db
invoke-static {v0, p1, v3}, Lcom/userzoom/cf;->b(I[CI)I
move-result v0
goto :goto_c8
:cond_e0
move v2, v3
goto/16 :goto_35
:cond_e3
move v0, v1
goto :goto_75
.end method
.method private static a(J)I
.registers 8
const/16 v2, 0xa
sget-wide v0, Lcom/userzoom/cf;->c:J
:goto_4
cmp-long v3, p0, v0
if-ltz v3, :cond_15
const/16 v3, 0x13
if-eq v2, v3, :cond_15
add-int/lit8 v2, v2, 0x1
const/4 v3, 0x3
shl-long v3, v0, v3
const/4 v5, 0x1
shl-long/2addr v0, v5
add-long/2addr v0, v3
goto :goto_4
:cond_15
return v2
.end method
.method private static b(I[BI)I
.registers 6
shl-int/lit8 v0, p0, 0x2
sget-object v1, Lcom/userzoom/cf;->h:[C
add-int/lit8 v2, v0, 0x1
aget-char v1, v1, v0
if-eqz v1, :cond_10
add-int/lit8 v0, p2, 0x1
int-to-byte v1, v1
aput-byte v1, p1, p2
move p2, v0
:cond_10
sget-object v0, Lcom/userzoom/cf;->h:[C
add-int/lit8 v1, v2, 0x1
aget-char v2, v0, v2
if-eqz v2, :cond_1e
add-int/lit8 v0, p2, 0x1
int-to-byte v2, v2
aput-byte v2, p1, p2
move p2, v0
:cond_1e
add-int/lit8 v0, p2, 0x1
sget-object v2, Lcom/userzoom/cf;->h:[C
aget-char v1, v2, v1
int-to-byte v1, v1
aput-byte v1, p1, p2
return v0
.end method
.method private static b(I[CI)I
.registers 6
shl-int/lit8 v0, p0, 0x2
sget-object v1, Lcom/userzoom/cf;->h:[C
add-int/lit8 v2, v0, 0x1
aget-char v1, v1, v0
if-eqz v1, :cond_f
add-int/lit8 v0, p2, 0x1
aput-char v1, p1, p2
move p2, v0
:cond_f
sget-object v0, Lcom/userzoom/cf;->h:[C
add-int/lit8 v1, v2, 0x1
aget-char v2, v0, v2
if-eqz v2, :cond_1c
add-int/lit8 v0, p2, 0x1
aput-char v2, p1, p2
move p2, v0
:cond_1c
add-int/lit8 v0, p2, 0x1
sget-object v2, Lcom/userzoom/cf;->h:[C
aget-char v1, v2, v1
aput-char v1, p1, p2
return v0
.end method
.method private static c(I[BI)I
.registers 8
shl-int/lit8 v0, p0, 0x2
add-int/lit8 v1, p2, 0x1
sget-object v2, Lcom/userzoom/cf;->j:[B
add-int/lit8 v3, v0, 0x1
aget-byte v0, v2, v0
aput-byte v0, p1, p2
add-int/lit8 v0, v1, 0x1
sget-object v2, Lcom/userzoom/cf;->j:[B
add-int/lit8 v4, v3, 0x1
aget-byte v2, v2, v3
aput-byte v2, p1, v1
add-int/lit8 v1, v0, 0x1
sget-object v2, Lcom/userzoom/cf;->j:[B
aget-byte v2, v2, v4
aput-byte v2, p1, v0
return v1
.end method
.method private static c(I[CI)I
.registers 8
shl-int/lit8 v0, p0, 0x2
add-int/lit8 v1, p2, 0x1
sget-object v2, Lcom/userzoom/cf;->i:[C
add-int/lit8 v3, v0, 0x1
aget-char v0, v2, v0
aput-char v0, p1, p2
add-int/lit8 v0, v1, 0x1
sget-object v2, Lcom/userzoom/cf;->i:[C
add-int/lit8 v4, v3, 0x1
aget-char v2, v2, v3
aput-char v2, p1, v1
add-int/lit8 v1, v0, 0x1
sget-object v2, Lcom/userzoom/cf;->i:[C
aget-char v2, v2, v4
aput-char v2, p1, v0
return v1
.end method