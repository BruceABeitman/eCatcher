.class public final Lcom/fasterxml/jackson/a/a;
.super Ljava/lang/Object;
.source "Base64Variant.java"
.implements Ljava/io/Serializable;
.field protected final a:Ljava/lang/String;
.field protected final transient b:Z
.field protected final transient c:C
.field protected final transient d:I
.field private final transient e:[I
.field private final transient f:[C
.field private final transient g:[B
.method public constructor <init>(Lcom/fasterxml/jackson/a/a;Ljava/lang/String;)V
.registers 9
iget-boolean v3, p1, Lcom/fasterxml/jackson/a/a;->b:Z
iget-char v4, p1, Lcom/fasterxml/jackson/a/a;->c:C
const v5, 0x7fffffff
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/a;-><init>(Lcom/fasterxml/jackson/a/a;Ljava/lang/String;ZCI)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/a/a;Ljava/lang/String;ZCI)V
.registers 10
const/16 v1, 0x40
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x80
new-array v0, v0, [I
iput-object v0, p0, Lcom/fasterxml/jackson/a/a;->e:[I
new-array v0, v1, [C
iput-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
new-array v0, v1, [B
iput-object v0, p0, Lcom/fasterxml/jackson/a/a;->g:[B
iput-object p2, p0, Lcom/fasterxml/jackson/a/a;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/fasterxml/jackson/a/a;->g:[B
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->g:[B
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p1, Lcom/fasterxml/jackson/a/a;->f:[C
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->f:[C
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p1, Lcom/fasterxml/jackson/a/a;->e:[I
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->e:[I
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean p3, p0, Lcom/fasterxml/jackson/a/a;->b:Z
iput-char p4, p0, Lcom/fasterxml/jackson/a/a;->c:C
iput p5, p0, Lcom/fasterxml/jackson/a/a;->d:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
.registers 11
const/16 v2, 0x40
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v1, 0x80
new-array v1, v1, [I
iput-object v1, p0, Lcom/fasterxml/jackson/a/a;->e:[I
new-array v1, v2, [C
iput-object v1, p0, Lcom/fasterxml/jackson/a/a;->f:[C
new-array v1, v2, [B
iput-object v1, p0, Lcom/fasterxml/jackson/a/a;->g:[B
iput-object p1, p0, Lcom/fasterxml/jackson/a/a;->a:Ljava/lang/String;
iput-boolean p3, p0, Lcom/fasterxml/jackson/a/a;->b:Z
iput-char p4, p0, Lcom/fasterxml/jackson/a/a;->c:C
iput p5, p0, Lcom/fasterxml/jackson/a/a;->d:I
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-eq v1, v2, :cond_3d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Base64Alphabet length must be exactly 64 (was "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3d
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
invoke-virtual {p2, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->e:[I
const/4 v3, -0x1
invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V
:goto_48
if-ge v0, v1, :cond_5a
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
aget-char v2, v2, v0
iget-object v3, p0, Lcom/fasterxml/jackson/a/a;->g:[B
int-to-byte v4, v2
aput-byte v4, v3, v0
iget-object v3, p0, Lcom/fasterxml/jackson/a/a;->e:[I
aput v0, v3, v2
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_5a
if-eqz p3, :cond_61
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->e:[I
const/4 v1, -0x2
aput v1, v0, p4
:cond_61
return-void
.end method
.method private a(CILjava/lang/String;)V
.registers 6
const/16 v0, 0x20
if-gt p1, v0, :cond_48
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal white space character (code 0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") as character #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, p2, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of 4-char base64 unit: can only used between units"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_29
if-eqz p3, :cond_42
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_42
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_48
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a;->a(C)Z
move-result v0
if-eqz v0, :cond_74
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unexpected padding character (\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->b()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\') as character #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, p2, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_29
:cond_74
invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z
move-result v0
if-eqz v0, :cond_80
invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z
move-result v0
if-eqz v0, :cond_9a
:cond_80
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character (code 0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in base64 content"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_29
:cond_9a
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character \'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' (code 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in base64 content"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_29
.end method
.method private a(Ljava/lang/StringBuilder;I)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0x12
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0xc
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0x6
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
and-int/lit8 v1, p2, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-void
.end method
.method private a(Ljava/lang/StringBuilder;II)V
.registers 7
const/4 v2, 0x2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0x12
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0xc
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a;->b:Z
if-eqz v0, :cond_31
if-ne p3, v2, :cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0x6
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
:goto_25
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2d
:cond_2d
return-void
:cond_2e
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
goto :goto_25
:cond_31
if-ne p3, v2, :cond_2d
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v1, p2, 0x6
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2d
.end method
.method private static d()V
.registers 2
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Unexpected end-of-String in base64 content"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a(II[BI)I
.registers 10
const/4 v4, 0x2
add-int/lit8 v0, p4, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-byte v1, v1, v2
aput-byte v1, p3, p4
add-int/lit8 v2, v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-byte v1, v1, v3
aput-byte v1, p3, v0
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a;->b:Z
if-eqz v0, :cond_35
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
int-to-byte v1, v0
add-int/lit8 v3, v2, 0x1
if-ne p2, v4, :cond_33
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v4, p1, 0x6
and-int/lit8 v4, v4, 0x3f
aget-byte v0, v0, v4
:goto_2c
aput-byte v0, p3, v2
add-int/lit8 v0, v3, 0x1
aput-byte v1, p3, v3
:goto_32
return v0
:cond_33
move v0, v1
goto :goto_2c
:cond_35
if-ne p2, v4, :cond_44
add-int/lit8 v0, v2, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-byte v1, v1, v3
aput-byte v1, p3, v2
goto :goto_32
:cond_44
move v0, v2
goto :goto_32
.end method
.method public final a(II[CI)I
.registers 10
const/4 v4, 0x2
add-int/lit8 v0, p4, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-char v1, v1, v2
aput-char v1, p3, p4
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p3, v0
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a;->b:Z
if-eqz v0, :cond_35
add-int/lit8 v2, v1, 0x1
if-ne p2, v4, :cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-char v0, v0, v3
:goto_29
aput-char v0, p3, v1
add-int/lit8 v0, v2, 0x1
iget-char v1, p0, Lcom/fasterxml/jackson/a/a;->c:C
aput-char v1, p3, v2
:goto_31
return v0
:cond_32
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
goto :goto_29
:cond_35
if-ne p2, v4, :cond_44
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p3, v1
goto :goto_31
:cond_44
move v0, v1
goto :goto_31
.end method
.method public final a(I[BI)I
.registers 8
add-int/lit8 v0, p3, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-byte v1, v1, v2
aput-byte v1, p2, p3
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p2, v0
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->g:[B
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p2, v1
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->g:[B
and-int/lit8 v3, p1, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p2, v0
return v1
.end method
.method public final a(I[CI)I
.registers 8
add-int/lit8 v0, p3, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-char v1, v1, v2
aput-char v1, p2, p3
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p2, v0
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p2, v1
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a;->f:[C
and-int/lit8 v3, p1, 0x3f
aget-char v2, v2, v3
aput-char v2, p2, v0
return v1
.end method
.method public final a([BZ)Ljava/lang/String;
.registers 11
const/16 v7, 0x22
array-length v3, p1
shr-int/lit8 v0, v3, 0x2
add-int/2addr v0, v3
shr-int/lit8 v1, v3, 0x3
add-int/2addr v0, v1
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V
if-eqz p2, :cond_13
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_13
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v0
shr-int/lit8 v1, v0, 0x2
const/4 v0, 0x0
add-int/lit8 v5, v3, -0x3
move v2, v1
:goto_1d
if-gt v0, v5, :cond_4f
add-int/lit8 v1, v0, 0x1
aget-byte v0, p1, v0
shl-int/lit8 v0, v0, 0x8
add-int/lit8 v6, v1, 0x1
aget-byte v1, p1, v1
and-int/lit16 v1, v1, 0xff
or-int/2addr v0, v1
shl-int/lit8 v0, v0, 0x8
add-int/lit8 v1, v6, 0x1
aget-byte v6, p1, v6
and-int/lit16 v6, v6, 0xff
or-int/2addr v0, v6
invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/a/a;->a(Ljava/lang/StringBuilder;I)V
add-int/lit8 v0, v2, -0x1
if-gtz v0, :cond_4c
const/16 v0, 0x5c
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v0, 0x6e
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v0
shr-int/lit8 v0, v0, 0x2
:cond_4c
move v2, v0
move v0, v1
goto :goto_1d
:cond_4f
sub-int v1, v3, v0
if-lez v1, :cond_66
add-int/lit8 v2, v0, 0x1
aget-byte v0, p1, v0
shl-int/lit8 v0, v0, 0x10
const/4 v3, 0x2
if-ne v1, v3, :cond_63
aget-byte v2, p1, v2
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
or-int/2addr v0, v2
:cond_63
invoke-direct {p0, v4, v0, v1}, Lcom/fasterxml/jackson/a/a;->a(Ljava/lang/StringBuilder;II)V
:cond_66
if-eqz p2, :cond_6b
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_6b
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;)V
.registers 13
const/4 v9, 0x3
const/4 v2, 0x0
const/4 v8, -0x2
const/4 v7, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
move v0, v2
:goto_9
if-ge v0, v3, :cond_45
:goto_b
add-int/lit8 v1, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
if-ge v1, v3, :cond_45
const/16 v4, 0x20
if-le v0, v4, :cond_c4
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a;->b(C)I
move-result v4
if-gez v4, :cond_20
invoke-direct {p0, v0, v2, v7}, Lcom/fasterxml/jackson/a/a;->a(CILjava/lang/String;)V
:cond_20
if-lt v1, v3, :cond_25
invoke-static {}, Lcom/fasterxml/jackson/a/a;->d()V
:cond_25
add-int/lit8 v0, v1, 0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/a;->b(C)I
move-result v5
if-gez v5, :cond_35
const/4 v6, 0x1
invoke-direct {p0, v1, v6, v7}, Lcom/fasterxml/jackson/a/a;->a(CILjava/lang/String;)V
:cond_35
shl-int/lit8 v1, v4, 0x6
or-int/2addr v1, v5
if-lt v0, v3, :cond_49
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->a()Z
move-result v4
if-nez v4, :cond_46
shr-int/lit8 v0, v1, 0x4
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V
:cond_45
:goto_45
return-void
:cond_46
invoke-static {}, Lcom/fasterxml/jackson/a/a;->d()V
:cond_49
add-int/lit8 v4, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a;->b(C)I
move-result v5
if-gez v5, :cond_8f
if-eq v5, v8, :cond_5b
const/4 v5, 0x2
invoke-direct {p0, v0, v5, v7}, Lcom/fasterxml/jackson/a/a;->a(CILjava/lang/String;)V
:cond_5b
if-lt v4, v3, :cond_60
invoke-static {}, Lcom/fasterxml/jackson/a/a;->d()V
:cond_60
add-int/lit8 v0, v4, 0x1
invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/a/a;->a(C)Z
move-result v5
if-nez v5, :cond_88
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "expected padding character \'"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->b()C
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {p0, v4, v9, v5}, Lcom/fasterxml/jackson/a/a;->a(CILjava/lang/String;)V
:cond_88
shr-int/lit8 v1, v1, 0x4
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/a/g/d;->a(I)V
goto/16 :goto_9
:cond_8f
shl-int/lit8 v0, v1, 0x6
or-int v1, v0, v5
if-lt v4, v3, :cond_a4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->a()Z
move-result v0
if-nez v0, :cond_a1
shr-int/lit8 v0, v1, 0x2
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/g/d;->b(I)V
goto :goto_45
:cond_a1
invoke-static {}, Lcom/fasterxml/jackson/a/a;->d()V
:cond_a4
add-int/lit8 v0, v4, 0x1
invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/a/a;->b(C)I
move-result v5
if-gez v5, :cond_bc
if-eq v5, v8, :cond_b5
invoke-direct {p0, v4, v9, v7}, Lcom/fasterxml/jackson/a/a;->a(CILjava/lang/String;)V
:cond_b5
shr-int/lit8 v1, v1, 0x2
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/a/g/d;->b(I)V
goto/16 :goto_9
:cond_bc
shl-int/lit8 v1, v1, 0x6
or-int/2addr v1, v5
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/a/g/d;->c(I)V
goto/16 :goto_9
:cond_c4
move v0, v1
goto/16 :goto_b
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a;->b:Z
return v0
.end method
.method public final a(C)Z
.registers 3
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final a(I)Z
.registers 3
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final b()C
.registers 2
iget-char v0, p0, Lcom/fasterxml/jackson/a/a;->c:C
return v0
.end method
.method public final b(C)I
.registers 3
const/16 v0, 0x7f
if-gt p1, v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->e:[I
aget v0, v0, p1
:goto_8
return v0
:cond_9
const/4 v0, -0x1
goto :goto_8
.end method
.method public final b(I)I
.registers 3
const/16 v0, 0x7f
if-gt p1, v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->e:[I
aget v0, v0, p1
:goto_8
return v0
:cond_9
const/4 v0, -0x1
goto :goto_8
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/a/a;->d:I
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a;->a:Ljava/lang/String;
return-object v0
.end method