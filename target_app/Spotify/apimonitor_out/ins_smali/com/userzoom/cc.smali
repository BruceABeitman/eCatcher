.class public final Lcom/userzoom/cc;
.super Ljava/lang/Object;
.field private static final a:[C
.field private static final b:[B
.field private static c:[I
.field private static d:[I
.field private static e:[I
.field private static f:[I
.field private static g:[I
.field private static h:[I
.method static constructor <clinit>()V
.registers 9
const/16 v8, 0xa
const/4 v1, -0x1
const/16 v7, 0x100
const/16 v4, 0x80
const/4 v2, 0x0
const-string v0, "0123456789ABCDEF"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/userzoom/cc;->a:[C
array-length v3, v0
new-array v0, v3, [B
sput-object v0, Lcom/userzoom/cc;->b:[B
move v0, v2
:goto_16
if-ge v0, v3, :cond_24
sget-object v5, Lcom/userzoom/cc;->b:[B
sget-object v6, Lcom/userzoom/cc;->a:[C
aget-char v6, v6, v0
int-to-byte v6, v6
aput-byte v6, v5, v0
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_24
new-array v3, v7, [I
move v0, v2
:goto_27
const/16 v5, 0x20
if-ge v0, v5, :cond_30
aput v1, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_30
const/16 v0, 0x22
const/4 v5, 0x1
aput v5, v3, v0
const/16 v0, 0x5c
const/4 v5, 0x1
aput v5, v3, v0
sput-object v3, Lcom/userzoom/cc;->c:[I
new-array v5, v7, [I
sget-object v0, Lcom/userzoom/cc;->c:[I
sget-object v3, Lcom/userzoom/cc;->c:[I
array-length v3, v3
invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move v3, v4
:goto_47
if-ge v3, v7, :cond_68
and-int/lit16 v0, v3, 0xe0
const/16 v6, 0xc0
if-ne v0, v6, :cond_56
const/4 v0, 0x2
:goto_50
aput v0, v5, v3
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_47
:cond_56
and-int/lit16 v0, v3, 0xf0
const/16 v6, 0xe0
if-ne v0, v6, :cond_5e
const/4 v0, 0x3
goto :goto_50
:cond_5e
and-int/lit16 v0, v3, 0xf8
const/16 v6, 0xf0
if-ne v0, v6, :cond_66
const/4 v0, 0x4
goto :goto_50
:cond_66
move v0, v1
goto :goto_50
:cond_68
sput-object v5, Lcom/userzoom/cc;->d:[I
new-array v3, v7, [I
invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V
const/16 v0, 0x21
:goto_71
if-ge v0, v7, :cond_7f
int-to-char v5, v0
invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
move-result v5
if-eqz v5, :cond_7c
aput v2, v3, v0
:cond_7c
add-int/lit8 v0, v0, 0x1
goto :goto_71
:cond_7f
const/16 v0, 0x40
aput v2, v3, v0
const/16 v0, 0x23
aput v2, v3, v0
const/16 v0, 0x2a
aput v2, v3, v0
const/16 v0, 0x2d
aput v2, v3, v0
const/16 v0, 0x2b
aput v2, v3, v0
sput-object v3, Lcom/userzoom/cc;->e:[I
new-array v0, v7, [I
sget-object v3, Lcom/userzoom/cc;->e:[I
sget-object v5, Lcom/userzoom/cc;->e:[I
array-length v5, v5
invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v0, v4, v4, v2}, Ljava/util/Arrays;->fill([IIII)V
new-array v0, v7, [I
sput-object v0, Lcom/userzoom/cc;->f:[I
sget-object v0, Lcom/userzoom/cc;->d:[I
sget-object v3, Lcom/userzoom/cc;->f:[I
invoke-static {v0, v4, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sget-object v0, Lcom/userzoom/cc;->f:[I
const/16 v3, 0x20
invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V
sget-object v0, Lcom/userzoom/cc;->f:[I
const/16 v3, 0x9
aput v2, v0, v3
sget-object v0, Lcom/userzoom/cc;->f:[I
aput v8, v0, v8
sget-object v0, Lcom/userzoom/cc;->f:[I
const/16 v3, 0xd
const/16 v5, 0xd
aput v5, v0, v3
sget-object v0, Lcom/userzoom/cc;->f:[I
const/16 v3, 0x2a
const/16 v5, 0x2a
aput v5, v0, v3
new-array v3, v4, [I
move v0, v2
:goto_d1
const/16 v5, 0x20
if-ge v0, v5, :cond_da
aput v1, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_d1
:cond_da
const/16 v0, 0x22
const/16 v5, 0x22
aput v5, v3, v0
const/16 v0, 0x5c
const/16 v5, 0x5c
aput v5, v3, v0
const/16 v0, 0x8
const/16 v5, 0x62
aput v5, v3, v0
const/16 v0, 0x9
const/16 v5, 0x74
aput v5, v3, v0
const/16 v0, 0xc
const/16 v5, 0x66
aput v5, v3, v0
const/16 v0, 0x6e
aput v0, v3, v8
const/16 v0, 0xd
const/16 v5, 0x72
aput v5, v3, v0
sput-object v3, Lcom/userzoom/cc;->g:[I
new-array v0, v4, [I
sput-object v0, Lcom/userzoom/cc;->h:[I
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
move v0, v2
:goto_10c
if-ge v0, v8, :cond_117
sget-object v1, Lcom/userzoom/cc;->h:[I
add-int/lit8 v3, v0, 0x30
aput v0, v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_10c
:cond_117
move v0, v2
:goto_118
const/4 v1, 0x6
if-ge v0, v1, :cond_12e
sget-object v1, Lcom/userzoom/cc;->h:[I
add-int/lit8 v2, v0, 0x61
add-int/lit8 v3, v0, 0xa
aput v3, v1, v2
sget-object v1, Lcom/userzoom/cc;->h:[I
add-int/lit8 v2, v0, 0x41
add-int/lit8 v3, v0, 0xa
aput v3, v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_118
:cond_12e
return-void
.end method
.method public static a()[I
.registers 1
sget-object v0, Lcom/userzoom/cc;->g:[I
return-object v0
.end method
.method public static b()[C
.registers 1
sget-object v0, Lcom/userzoom/cc;->a:[C
invoke-virtual {v0}, [C->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [C
return-object v0
.end method
.method public static c()[B
.registers 1
sget-object v0, Lcom/userzoom/cc;->b:[B
invoke-virtual {v0}, [B->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
return-object v0
.end method