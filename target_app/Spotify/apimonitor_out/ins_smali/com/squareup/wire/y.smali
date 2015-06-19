.class final Lcom/squareup/wire/y;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final b:Ljava/nio/charset/Charset;
.field public a:I
.field private final c:Lokio/c;
.field private d:I
.field private e:I
.field private f:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/squareup/wire/y;->b:Ljava/nio/charset/Charset;
return-void
.end method
.method private constructor <init>(Lokio/c;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/squareup/wire/y;->d:I
const v0, 0x7fffffff
iput v0, p0, Lcom/squareup/wire/y;->e:I
iput-object p1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
return-void
.end method
.method public static a(J)J
.registers 6
const/4 v0, 0x1
ushr-long v0, p0, v0
const-wide/16 v2, 0x1
and-long/2addr v2, p0
neg-long v2, v2
xor-long/2addr v0, v2
return-wide v0
.end method
.method public static a([B)Lcom/squareup/wire/y;
.registers 5
new-instance v0, Lcom/squareup/wire/y;
new-instance v1, Lokio/a;
invoke-direct {v1}, Lokio/a;-><init>()V
if-nez p0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "source == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
const/4 v2, 0x0
array-length v3, p0
invoke-virtual {v1, p0, v2, v3}, Lokio/a;->a([BII)Lokio/a;
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/wire/y;-><init>(Lokio/c;)V
return-object v0
.end method
.method public static c(I)I
.registers 3
ushr-int/lit8 v0, p0, 0x1
and-int/lit8 v1, p0, 0x1
neg-int v1, v1
xor-int/2addr v0, v1
return v0
.end method
.method public final a()I
.registers 6
const/4 v0, 0x0
iget v1, p0, Lcom/squareup/wire/y;->d:I
int-to-long v1, v1
iget v3, p0, Lcom/squareup/wire/y;->e:I
int-to-long v3, v3
cmp-long v1, v1, v3
if-nez v1, :cond_11
const/4 v1, 0x1
:goto_c
if-eqz v1, :cond_18
iput v0, p0, Lcom/squareup/wire/y;->f:I
:goto_10
return v0
:cond_11
iget-object v1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v1}, Lokio/c;->a()Z
move-result v1
goto :goto_c
:cond_18
invoke-virtual {p0}, Lcom/squareup/wire/y;->c()I
move-result v0
iput v0, p0, Lcom/squareup/wire/y;->f:I
iget v0, p0, Lcom/squareup/wire/y;->f:I
if-nez v0, :cond_2a
new-instance v0, Ljava/io/IOException;
const-string v1, "Protocol message contained an invalid tag (zero)."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
iget v0, p0, Lcom/squareup/wire/y;->f:I
goto :goto_10
.end method
.method public final a(I)V
.registers 4
iget v0, p0, Lcom/squareup/wire/y;->f:I
if-eq v0, p1, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Protocol message end-group tag did not match expected tag."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/squareup/wire/y;->c()I
move-result v0
iget v1, p0, Lcom/squareup/wire/y;->d:I
add-int/2addr v1, v0
iput v1, p0, Lcom/squareup/wire/y;->d:I
iget-object v1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
int-to-long v2, v0
sget-object v0, Lcom/squareup/wire/y;->b:Ljava/nio/charset/Charset;
invoke-interface {v1, v2, v3, v0}, Lokio/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b(I)Lokio/ByteString;
.registers 5
iget v0, p0, Lcom/squareup/wire/y;->d:I
add-int/2addr v0, p1
iput v0, p0, Lcom/squareup/wire/y;->d:I
iget-object v0, p0, Lcom/squareup/wire/y;->c:Lokio/c;
int-to-long v1, p1
invoke-interface {v0, v1, v2}, Lokio/c;->a(J)Lokio/ByteString;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 4
iget v0, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/wire/y;->d:I
iget-object v0, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v0}, Lokio/c;->b()B
move-result v0
if-ltz v0, :cond_f
:cond_e
:goto_e
return v0
:cond_f
and-int/lit8 v0, v0, 0x7f
iget v1, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/wire/y;->d:I
iget-object v1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v1}, Lokio/c;->b()B
move-result v1
if-ltz v1, :cond_23
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
goto :goto_e
:cond_23
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
iget v1, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/wire/y;->d:I
iget-object v1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v1}, Lokio/c;->b()B
move-result v1
if-ltz v1, :cond_3a
shl-int/lit8 v1, v1, 0xe
or-int/2addr v0, v1
goto :goto_e
:cond_3a
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0xe
or-int/2addr v0, v1
iget v1, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/wire/y;->d:I
iget-object v1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v1}, Lokio/c;->b()B
move-result v1
if-ltz v1, :cond_51
shl-int/lit8 v1, v1, 0x15
or-int/2addr v0, v1
goto :goto_e
:cond_51
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0x15
or-int/2addr v0, v1
iget v1, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/wire/y;->d:I
iget-object v1, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v1}, Lokio/c;->b()B
move-result v1
shl-int/lit8 v2, v1, 0x1c
or-int/2addr v0, v2
if-gez v1, :cond_e
const/4 v1, 0x0
:goto_68
const/4 v2, 0x5
if-ge v1, v2, :cond_7c
iget v2, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/squareup/wire/y;->d:I
iget-object v2, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v2}, Lokio/c;->b()B
move-result v2
if-gez v2, :cond_e
add-int/lit8 v1, v1, 0x1
goto :goto_68
:cond_7c
new-instance v0, Ljava/io/IOException;
const-string v1, "WireInput encountered a malformed varint."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final d(I)I
.registers 4
if-gez p1, :cond_a
new-instance v0, Ljava/io/IOException;
const-string v1, "Encountered a negative size"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget v0, p0, Lcom/squareup/wire/y;->d:I
add-int/2addr v0, p1
iget v1, p0, Lcom/squareup/wire/y;->e:I
if-le v0, v1, :cond_19
new-instance v0, Ljava/io/EOFException;
const-string v1, "The input ended unexpectedly in the middle of a field"
invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
iput v0, p0, Lcom/squareup/wire/y;->e:I
return v1
.end method
.method public final d()J
.registers 7
const/4 v2, 0x0
const-wide/16 v0, 0x0
:goto_3
const/16 v3, 0x40
if-ge v2, v3, :cond_20
iget v3, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/squareup/wire/y;->d:I
iget-object v3, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v3}, Lokio/c;->b()B
move-result v3
and-int/lit8 v4, v3, 0x7f
int-to-long v4, v4
shl-long/2addr v4, v2
or-long/2addr v0, v4
and-int/lit16 v3, v3, 0x80
if-nez v3, :cond_1d
return-wide v0
:cond_1d
add-int/lit8 v2, v2, 0x7
goto :goto_3
:cond_20
new-instance v0, Ljava/io/IOException;
const-string v1, "WireInput encountered a malformed varint."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/squareup/wire/y;->d:I
iget-object v0, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v0}, Lokio/c;->c()I
move-result v0
return v0
.end method
.method public final e(I)V
.registers 2
iput p1, p0, Lcom/squareup/wire/y;->e:I
return-void
.end method
.method public final f()J
.registers 3
iget v0, p0, Lcom/squareup/wire/y;->d:I
add-int/lit8 v0, v0, 0x8
iput v0, p0, Lcom/squareup/wire/y;->d:I
iget-object v0, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v0}, Lokio/c;->d()J
move-result-wide v0
return-wide v0
.end method
.method public final g()J
.registers 3
iget v0, p0, Lcom/squareup/wire/y;->d:I
int-to-long v0, v0
return-wide v0
.end method
.method public final h()V
.registers 7
const/4 v1, 0x0
:cond_1
invoke-virtual {p0}, Lcom/squareup/wire/y;->a()I
move-result v0
if-eqz v0, :cond_22
sget-object v2, Lcom/squareup/wire/y$1;->a:[I
invoke-static {v0}, Lcom/squareup/wire/WireType;->a(I)Lcom/squareup/wire/WireType;
move-result-object v3
invoke-virtual {v3}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_54
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_1c
invoke-virtual {p0}, Lcom/squareup/wire/y;->d()J
move v0, v1
:goto_20
if-eqz v0, :cond_1
:cond_22
return-void
:pswitch_23
invoke-virtual {p0}, Lcom/squareup/wire/y;->e()I
move v0, v1
goto :goto_20
:pswitch_28
invoke-virtual {p0}, Lcom/squareup/wire/y;->f()J
move v0, v1
goto :goto_20
:pswitch_2d
invoke-virtual {p0}, Lcom/squareup/wire/y;->c()I
move-result v0
int-to-long v2, v0
iget v0, p0, Lcom/squareup/wire/y;->d:I
int-to-long v4, v0
add-long/2addr v4, v2
long-to-int v0, v4
iput v0, p0, Lcom/squareup/wire/y;->d:I
iget-object v0, p0, Lcom/squareup/wire/y;->c:Lokio/c;
invoke-interface {v0, v2, v3}, Lokio/c;->b(J)V
move v0, v1
goto :goto_20
:pswitch_40
invoke-virtual {p0}, Lcom/squareup/wire/y;->h()V
and-int/lit8 v0, v0, -0x8
sget-object v2, Lcom/squareup/wire/WireType;->e:Lcom/squareup/wire/WireType;
invoke-virtual {v2}, Lcom/squareup/wire/WireType;->a()I
move-result v2
or-int/2addr v0, v2
invoke-virtual {p0, v0}, Lcom/squareup/wire/y;->a(I)V
move v0, v1
goto :goto_20
:pswitch_51
const/4 v0, 0x1
goto :goto_20
nop
:pswitch_data_54
.packed-switch 0x1
:pswitch_1c
:pswitch_23
:pswitch_28
:pswitch_2d
:pswitch_40
:pswitch_51
.end packed-switch
.end method