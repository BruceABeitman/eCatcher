.class public final Lcom/loopj/android/http/j;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"
.field private static e:[B
.field private final a:Lcom/loopj/android/http/h;
.field private final b:I
.field private c:[B
.field private d:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [B
sput-object v0, Lcom/loopj/android/http/j;->e:[B
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/loopj/android/http/j;-><init>(Ljava/io/OutputStream;B)V
return-void
.end method
.method private constructor <init>(Ljava/io/OutputStream;B)V
.registers 4
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/loopj/android/http/j;->c:[B
const/4 v0, 0x0
iput v0, p0, Lcom/loopj/android/http/j;->d:I
const/16 v0, 0x12
iput v0, p0, Lcom/loopj/android/http/j;->b:I
new-instance v0, Lcom/loopj/android/http/i;
invoke-direct {v0}, Lcom/loopj/android/http/i;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
return-void
.end method
.method private a()V
.registers 4
const/4 v2, 0x0
iget v0, p0, Lcom/loopj/android/http/j;->d:I
if-lez v0, :cond_e
iget-object v0, p0, Lcom/loopj/android/http/j;->c:[B
iget v1, p0, Lcom/loopj/android/http/j;->d:I
invoke-direct {p0, v0, v2, v1, v2}, Lcom/loopj/android/http/j;->a([BIIZ)V
iput v2, p0, Lcom/loopj/android/http/j;->d:I
:cond_e
return-void
.end method
.method private a([BIIZ)V
.registers 9
iget-object v1, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
iget-object v0, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
iget-object v0, v0, Lcom/loopj/android/http/h;->a:[B
iget-object v2, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
invoke-virtual {v2, p3}, Lcom/loopj/android/http/h;->a(I)I
move-result v2
if-eqz v0, :cond_11
array-length v3, v0
if-ge v3, v2, :cond_13
:cond_11
new-array v0, v2, [B
:cond_13
iput-object v0, v1, Lcom/loopj/android/http/h;->a:[B
iget-object v0, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/h;->a([BIIZ)Z
iget-object v0, p0, Lcom/loopj/android/http/j;->out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
iget-object v1, v1, Lcom/loopj/android/http/h;->a:[B
const/4 v2, 0x0
iget-object v3, p0, Lcom/loopj/android/http/j;->a:Lcom/loopj/android/http/h;
iget v3, v3, Lcom/loopj/android/http/h;->b:I
invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
return-void
.end method
.method public final close()V
.registers 6
const/4 v1, 0x0
:try_start_1
invoke-direct {p0}, Lcom/loopj/android/http/j;->a()V
sget-object v0, Lcom/loopj/android/http/j;->e:[B
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x1
invoke-direct {p0, v0, v2, v3, v4}, Lcom/loopj/android/http/j;->a([BIIZ)V
:goto_c
:try_start_c
:try_end_c
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_1b
iget v0, p0, Lcom/loopj/android/http/j;->b:I
and-int/lit8 v0, v0, 0x10
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/loopj/android/http/j;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:try_end_17
.catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_25
move-object v0, v1
:cond_18
:goto_18
if-eqz v0, :cond_2a
throw v0
:catch_1b
move-exception v0
move-object v1, v0
goto :goto_c
:try_start_1e
:cond_1e
iget-object v0, p0, Lcom/loopj/android/http/j;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:try_end_23
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_25
move-object v0, v1
goto :goto_18
:catch_25
move-exception v0
if-nez v1, :cond_18
move-object v0, v1
goto :goto_18
:cond_2a
return-void
.end method
.method public final write(I)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/loopj/android/http/j;->c:[B
if-nez v0, :cond_b
const/16 v0, 0x400
new-array v0, v0, [B
iput-object v0, p0, Lcom/loopj/android/http/j;->c:[B
:cond_b
iget v0, p0, Lcom/loopj/android/http/j;->d:I
iget-object v1, p0, Lcom/loopj/android/http/j;->c:[B
array-length v1, v1
if-lt v0, v1, :cond_1b
iget-object v0, p0, Lcom/loopj/android/http/j;->c:[B
iget v1, p0, Lcom/loopj/android/http/j;->d:I
invoke-direct {p0, v0, v2, v1, v2}, Lcom/loopj/android/http/j;->a([BIIZ)V
iput v2, p0, Lcom/loopj/android/http/j;->d:I
:cond_1b
iget-object v0, p0, Lcom/loopj/android/http/j;->c:[B
iget v1, p0, Lcom/loopj/android/http/j;->d:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/loopj/android/http/j;->d:I
int-to-byte v2, p1
aput-byte v2, v0, v1
return-void
.end method
.method public final write([BII)V
.registers 5
if-gtz p3, :cond_3
:goto_2
return-void
:cond_3
invoke-direct {p0}, Lcom/loopj/android/http/j;->a()V
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/j;->a([BIIZ)V
goto :goto_2
.end method