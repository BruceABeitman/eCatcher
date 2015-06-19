.class final Lcom/squareup/okhttp/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:[C
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "RFC2253"
invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
return-void
.end method
.method private a(I)I
.registers 10
const/16 v7, 0x61
const/16 v6, 0x46
const/16 v5, 0x41
const/16 v4, 0x39
const/16 v3, 0x30
add-int/lit8 v0, p1, 0x1
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-lt v0, v1, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Malformed DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
aget-char v0, v0, p1
if-lt v0, v3, :cond_41
if-gt v0, v4, :cond_41
add-int/lit8 v0, v0, -0x30
:goto_31
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
add-int/lit8 v2, p1, 0x1
aget-char v1, v1, v2
if-lt v1, v3, :cond_68
if-gt v1, v4, :cond_68
add-int/lit8 v1, v1, -0x30
:goto_3d
shl-int/lit8 v0, v0, 0x4
add-int/2addr v0, v1
return v0
:cond_41
if-lt v0, v7, :cond_4a
const/16 v1, 0x66
if-gt v0, v1, :cond_4a
add-int/lit8 v0, v0, -0x57
goto :goto_31
:cond_4a
if-lt v0, v5, :cond_51
if-gt v0, v6, :cond_51
add-int/lit8 v0, v0, -0x37
goto :goto_31
:cond_51
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Malformed DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_68
if-lt v1, v7, :cond_71
const/16 v2, 0x66
if-gt v1, v2, :cond_71
add-int/lit8 v1, v1, -0x57
goto :goto_3d
:cond_71
if-lt v1, v5, :cond_78
if-gt v1, v6, :cond_78
add-int/lit8 v1, v1, -0x37
goto :goto_3d
:cond_78
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Malformed DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private a()Ljava/lang/String;
.registers 6
const/16 v3, 0x3d
const/16 v2, 0x20
:goto_4
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v0, v1, :cond_19
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v2, :cond_19
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_4
:cond_19
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ne v0, v1, :cond_21
const/4 v0, 0x0
:goto_20
return-object v0
:cond_21
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
:goto_2b
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v0, v1, :cond_48
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-eq v0, v3, :cond_48
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-eq v0, v2, :cond_48
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_2b
:cond_48
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-lt v0, v1, :cond_65
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected end of DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_65
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v2, :cond_b3
:goto_71
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v0, v1, :cond_8e
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-eq v0, v3, :cond_8e
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v2, :cond_8e
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_71
:cond_8e
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v3, :cond_9c
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ne v0, v1, :cond_b3
:cond_9c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected end of DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b3
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v0, v1, :cond_c7
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-eq v0, v2, :cond_b3
:cond_c7
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int/2addr v0, v1
const/4 v1, 0x4
if-le v0, v1, :cond_125
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v1, v1, 0x3
aget-char v0, v0, v1
const/16 v1, 0x2e
if-ne v0, v1, :cond_125
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
aget-char v0, v0, v1
const/16 v1, 0x4f
if-eq v0, v1, :cond_ef
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
aget-char v0, v0, v1
const/16 v1, 0x6f
if-ne v0, v1, :cond_125
:cond_ef
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v1, v1, 0x1
aget-char v0, v0, v1
const/16 v1, 0x49
if-eq v0, v1, :cond_107
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v1, v1, 0x1
aget-char v0, v0, v1
const/16 v1, 0x69
if-ne v0, v1, :cond_125
:cond_107
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v1, v1, 0x2
aget-char v0, v0, v1
const/16 v1, 0x44
if-eq v0, v1, :cond_11f
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v1, v1, 0x2
aget-char v0, v0, v1
const/16 v1, 0x64
if-ne v0, v1, :cond_125
:cond_11f
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
:cond_125
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v2, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int/2addr v3, v4
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_20
.end method
.method private b()Ljava/lang/String;
.registers 6
const/16 v3, 0x20
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-lt v0, v1, :cond_21
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected end of DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
:goto_2b
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-eq v0, v1, :cond_4f
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x2b
if-eq v0, v1, :cond_4f
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x2c
if-eq v0, v1, :cond_4f
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x3b
if-ne v0, v1, :cond_77
:cond_4f
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
:cond_53
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int v2, v0, v1
const/4 v0, 0x5
if-lt v2, v0, :cond_60
and-int/lit8 v0, v2, 0x1
if-nez v0, :cond_c5
:cond_60
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected end of DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_77
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v3, :cond_9e
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
:goto_89
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v0, v1, :cond_53
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v3, :cond_53
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_89
:cond_9e
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x41
if-lt v0, v1, :cond_bd
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x46
if-gt v0, v1, :cond_bd
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v2, v0, v1
add-int/lit8 v2, v2, 0x20
int-to-char v2, v2
aput-char v2, v0, v1
:cond_bd
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto/16 :goto_2b
:cond_c5
div-int/lit8 v0, v2, 0x2
new-array v3, v0, [B
const/4 v1, 0x0
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
add-int/lit8 v0, v0, 0x1
:goto_ce
array-length v4, v3
if-ge v1, v4, :cond_dd
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/b/a;->a(I)I
move-result v4
int-to-byte v4, v4
aput-byte v4, v3, v1
add-int/lit8 v0, v0, 0x2
add-int/lit8 v1, v1, 0x1
goto :goto_ce
:cond_dd
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V
return-object v0
.end method
.method private c()Ljava/lang/String;
.registers 6
const/16 v4, 0x20
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
:cond_a
:goto_a
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-lt v0, v1, :cond_1f
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v2, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int/2addr v3, v4
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
:goto_1e
return-object v0
:cond_1f
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
sparse-switch v0, :sswitch_data_ca
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v2, v2, v3
aput-char v2, v0, v1
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_a
:sswitch_3f
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v2, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int/2addr v3, v4
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
goto :goto_1e
:sswitch_4e
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->d()C
move-result v2
aput-char v2, v0, v1
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_a
:sswitch_63
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->f:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
aput-char v4, v0, v1
:goto_77
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v0, v1, :cond_96
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
if-ne v0, v4, :cond_96
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
aput-char v4, v0, v1
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_77
:cond_96
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-eq v0, v1, :cond_ba
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x2c
if-eq v0, v1, :cond_ba
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x2b
if-eq v0, v1, :cond_ba
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x3b
if-ne v0, v1, :cond_a
:cond_ba
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v2, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->f:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int/2addr v3, v4
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_1e
:sswitch_data_ca
.sparse-switch
0x20 -> :sswitch_63
0x2b -> :sswitch_3f
0x2c -> :sswitch_3f
0x3b -> :sswitch_3f
0x5c -> :sswitch_4e
.end sparse-switch
.end method
.method private d()C
.registers 4
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ne v0, v1, :cond_23
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected end of DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
sparse-switch v0, :sswitch_data_38
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->e()C
move-result v0
:goto_30
return v0
:sswitch_31
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
goto :goto_30
:sswitch_data_38
.sparse-switch
0x20 -> :sswitch_31
0x22 -> :sswitch_31
0x23 -> :sswitch_31
0x25 -> :sswitch_31
0x2a -> :sswitch_31
0x2b -> :sswitch_31
0x2c -> :sswitch_31
0x3b -> :sswitch_31
0x3c -> :sswitch_31
0x3d -> :sswitch_31
0x3e -> :sswitch_31
0x5c -> :sswitch_31
0x5f -> :sswitch_31
.end sparse-switch
.end method
.method private e()C
.registers 9
const/16 v6, 0x80
const/16 v2, 0x3f
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/b/a;->a(I)I
move-result v1
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
if-ge v1, v6, :cond_14
int-to-char v0, v1
:goto_13
return v0
:cond_14
const/16 v0, 0xc0
if-lt v1, v0, :cond_6f
const/16 v0, 0xf7
if-gt v1, v0, :cond_6f
const/16 v0, 0xdf
if-gt v1, v0, :cond_41
const/4 v0, 0x1
and-int/lit8 v1, v1, 0x1f
:goto_23
const/4 v3, 0x0
move v7, v3
move v3, v1
move v1, v7
:goto_27
if-ge v1, v0, :cond_6d
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v5, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-eq v4, v5, :cond_3f
iget-object v4, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v5, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v4, v4, v5
const/16 v5, 0x5c
if-eq v4, v5, :cond_4d
:cond_3f
move v0, v2
goto :goto_13
:cond_41
const/16 v0, 0xef
if-gt v1, v0, :cond_49
const/4 v0, 0x2
and-int/lit8 v1, v1, 0xf
goto :goto_23
:cond_49
const/4 v0, 0x3
and-int/lit8 v1, v1, 0x7
goto :goto_23
:cond_4d
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/b/a;->a(I)I
move-result v4
iget v5, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
and-int/lit16 v5, v4, 0xc0
if-eq v5, v6, :cond_65
move v0, v2
goto :goto_13
:cond_65
shl-int/lit8 v3, v3, 0x6
and-int/lit8 v4, v4, 0x3f
add-int/2addr v3, v4
add-int/lit8 v1, v1, 0x1
goto :goto_27
:cond_6d
int-to-char v0, v3
goto :goto_13
:cond_6f
move v0, v2
goto :goto_13
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->f:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a
move-object v1, v2
:cond_19
:goto_19
return-object v1
:cond_1a
const-string v1, ""
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ne v3, v4, :cond_24
move-object v1, v2
goto :goto_19
:cond_24
iget-object v3, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v3, v3, v4
sparse-switch v3, :sswitch_data_12e
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->c()Ljava/lang/String;
move-result-object v1
:goto_31
:sswitch_31
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-lt v0, v1, :cond_d5
move-object v1, v2
goto :goto_19
:sswitch_3f
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
:goto_4d
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ne v1, v3, :cond_6a
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected end of DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6a
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v1, v1, v3
const/16 v3, 0x22
if-ne v1, v3, :cond_91
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
:goto_7a
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->b:I
if-ge v1, v3, :cond_bf
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v1, v1, v3
const/16 v3, 0x20
if-ne v1, v3, :cond_bf
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
goto :goto_7a
:cond_91
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v1, v1, v3
const/16 v3, 0x5c
if-ne v1, v3, :cond_b2
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->d()C
move-result v4
aput-char v4, v1, v3
:goto_a5
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
goto :goto_4d
:cond_b2
iget-object v1, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v3, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget-object v4, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v5, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v4, v4, v5
aput-char v4, v1, v3
goto :goto_a5
:cond_bf
new-instance v1, Ljava/lang/String;
iget-object v3, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v4, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
iget v5, p0, Lcom/squareup/okhttp/internal/b/a;->e:I
iget v6, p0, Lcom/squareup/okhttp/internal/b/a;->d:I
sub-int/2addr v5, v6
invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_31
:sswitch_cf
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->b()Ljava/lang/String;
move-result-object v1
goto/16 :goto_31
:cond_d5
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x2c
if-eq v0, v1, :cond_10a
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x3b
if-eq v0, v1, :cond_10a
iget-object v0, p0, Lcom/squareup/okhttp/internal/b/a;->g:[C
iget v1, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
aget-char v0, v0, v1
const/16 v1, 0x2b
if-eq v0, v1, :cond_10a
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Malformed DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10a
iget v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/b/a;->c:I
invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/a;->a()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Malformed DN: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/b/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
nop
:sswitch_data_12e
.sparse-switch
0x22 -> :sswitch_3f
0x23 -> :sswitch_cf
0x2b -> :sswitch_31
0x2c -> :sswitch_31
0x3b -> :sswitch_31
.end sparse-switch
.end method