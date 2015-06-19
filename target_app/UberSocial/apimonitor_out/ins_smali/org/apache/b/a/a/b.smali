.class public Lorg/apache/b/a/a/b;
.super Ljava/io/InputStream;
.source "SourceFile"
.field static a:Ljava/lang/Class;
.field private static b:Lorg/apache/commons/logging/Log;
.field private static g:[B
.field private final c:Ljava/io/InputStream;
.field private final d:Lorg/apache/b/a/a/d;
.field private e:Z
.field private f:Z
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/b/a/a/b;->a:Ljava/lang/Class;
if-nez v0, :cond_1c
const-string v0, "org.apache.b.a.a.b"
invoke-static {v0}, Lorg/apache/b/a/a/b;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/a/b;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/b/a/a/b;->b:Lorg/apache/commons/logging/Log;
const/16 v0, 0x100
new-array v0, v0, [B
fill-array-data v0, :array_20
sput-object v0, Lorg/apache/b/a/a/b;->g:[B
return-void
:cond_1c
sget-object v0, Lorg/apache/b/a/a/b;->a:Ljava/lang/Class;
goto :goto_c
nop
:array_20
.array-data 0x1
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0x3et
0xfft
0xfft
0xfft
0x3ft
0x34t
0x35t
0x36t
0x37t
0x38t
0x39t
0x3at
0x3bt
0x3ct
0x3dt
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0x0t
0x1t
0x2t
0x3t
0x4t
0x5t
0x6t
0x7t
0x8t
0x9t
0xat
0xbt
0xct
0xdt
0xet
0xft
0x10t
0x11t
0x12t
0x13t
0x14t
0x15t
0x16t
0x17t
0x18t
0x19t
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0x1at
0x1bt
0x1ct
0x1dt
0x1et
0x1ft
0x20t
0x21t
0x22t
0x23t
0x24t
0x25t
0x26t
0x27t
0x28t
0x29t
0x2at
0x2bt
0x2ct
0x2dt
0x2et
0x2ft
0x30t
0x31t
0x32t
0x33t
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
.end array-data
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
new-instance v0, Lorg/apache/b/a/a/d;
const/4 v1, 0x3
invoke-direct {v0, v1}, Lorg/apache/b/a/a/d;-><init>(I)V
iput-object v0, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
iput-boolean v2, p0, Lorg/apache/b/a/a/b;->e:Z
iput-boolean v2, p0, Lorg/apache/b/a/a/b;->f:Z
iput-object p1, p0, Lorg/apache/b/a/a/b;->c:Ljava/io/InputStream;
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method private a()V
.registers 5
const/4 v0, 0x4
new-array v2, v0, [B
const/4 v0, 0x0
:goto_4
:cond_4
iget-boolean v1, p0, Lorg/apache/b/a/a/b;->e:Z
if-nez v1, :cond_21
iget-object v1, p0, Lorg/apache/b/a/a/b;->c:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v1
sparse-switch v1, :sswitch_data_4c
sget-object v3, Lorg/apache/b/a/a/b;->g:[B
aget-byte v3, v3, v1
if-ltz v3, :cond_4
add-int/lit8 v1, v0, 0x1
aput-byte v3, v2, v0
array-length v0, v2
if-ne v1, v0, :cond_4a
invoke-direct {p0, v2, v1}, Lorg/apache/b/a/a/b;->a([BI)V
:goto_21
:cond_21
return-void
:sswitch_22
if-lez v0, :cond_21
sget-object v1, Lorg/apache/b/a/a/b;->b:Lorg/apache/commons/logging/Log;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Unexpected EOF in MIME parser, dropping "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " sextets"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
goto :goto_21
:sswitch_43
invoke-direct {p0, v2, v0}, Lorg/apache/b/a/a/b;->a([BI)V
const/4 v1, 0x1
iput-boolean v1, p0, Lorg/apache/b/a/a/b;->e:Z
goto :goto_4
:cond_4a
move v0, v1
goto :goto_4
:sswitch_data_4c
.sparse-switch
-0x1 -> :sswitch_22
0x3d -> :sswitch_43
.end sparse-switch
.end method
.method private a([BI)V
.registers 8
const/4 v4, 0x3
const/4 v3, 0x2
const/4 v1, 0x0
aget-byte v0, p1, v1
shl-int/lit8 v0, v0, 0x12
or-int/2addr v0, v1
const/4 v1, 0x1
aget-byte v1, p1, v1
shl-int/lit8 v1, v1, 0xc
or-int/2addr v0, v1
aget-byte v1, p1, v3
shl-int/lit8 v1, v1, 0x6
or-int/2addr v0, v1
aget-byte v1, p1, v4
or-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x10
int-to-byte v1, v1
iget-object v2, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
invoke-virtual {v2, v1}, Lorg/apache/b/a/a/d;->a(B)V
if-le p2, v3, :cond_34
ushr-int/lit8 v1, v0, 0x8
and-int/lit16 v1, v1, 0xff
int-to-byte v1, v1
iget-object v2, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
invoke-virtual {v2, v1}, Lorg/apache/b/a/a/d;->a(B)V
if-le p2, v4, :cond_34
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
iget-object v1, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
invoke-virtual {v1, v0}, Lorg/apache/b/a/a/d;->a(B)V
:cond_34
return-void
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/b/a/a/b;->f:Z
return-void
.end method
.method public read()I
.registers 3
iget-boolean v0, p0, Lorg/apache/b/a/a/b;->f:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Base64InputStream has been closed"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
invoke-virtual {v0}, Lorg/apache/b/a/a/d;->b()I
move-result v0
if-nez v0, :cond_21
invoke-direct {p0}, Lorg/apache/b/a/a/b;->a()V
iget-object v0, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
invoke-virtual {v0}, Lorg/apache/b/a/a/d;->b()I
move-result v0
if-nez v0, :cond_21
const/4 v0, -0x1
:cond_20
:goto_20
return v0
:cond_21
iget-object v0, p0, Lorg/apache/b/a/a/b;->d:Lorg/apache/b/a/a/d;
invoke-virtual {v0}, Lorg/apache/b/a/a/d;->a()B
move-result v0
if-gez v0, :cond_20
and-int/lit16 v0, v0, 0xff
goto :goto_20
.end method