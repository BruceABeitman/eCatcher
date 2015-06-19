.class final Lcom/a/a/ai;
.super Ljava/lang/Object;
.source "VCardUtils.java"
.field private static a:B
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x3d
sput-byte v0, Lcom/a/a/ai;->a:B
return-void
.end method
.method public static final a([B)[B
.registers 7
const/4 v5, -0x1
if-nez p0, :cond_5
const/4 v0, 0x0
:goto_4
return-object v0
:cond_5
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/4 v0, 0x0
:goto_b
array-length v2, p0
if-ge v0, v2, :cond_4d
aget-byte v2, p0, v0
sget-byte v3, Lcom/a/a/ai;->a:B
if-ne v2, v3, :cond_49
add-int/lit8 v0, v0, 0x1
:try_start_16
aget-byte v2, p0, v0
int-to-char v2, v2
const/16 v3, 0x10
invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I
move-result v2
add-int/lit8 v0, v0, 0x1
aget-byte v3, p0, v0
int-to-char v3, v3
const/16 v4, 0x10
invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I
move-result v3
if-eq v2, v5, :cond_2e
if-ne v3, v5, :cond_3f
:cond_2e
new-instance v0, Lcom/a/a/ah;
const-string v1, "Invalid quoted-printable encoding"
invoke-direct {v0, v1}, Lcom/a/a/ah;-><init>(Ljava/lang/String;)V
throw v0
:catch_36
:try_end_36
.catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_36} :catch_36
move-exception v0
new-instance v0, Lcom/a/a/ah;
const-string v1, "Invalid quoted-printable encoding"
invoke-direct {v0, v1}, Lcom/a/a/ah;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
shl-int/lit8 v2, v2, 0x4
add-int/2addr v2, v3
int-to-char v2, v2
:try_start_43
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
:try_end_46
.catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_43 .. :try_end_46} :catch_36
:goto_46
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_49
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
goto :goto_46
:cond_4d
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
goto :goto_4
.end method