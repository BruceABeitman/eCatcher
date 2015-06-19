.class public final Lcom/bbm/f/as;
.super Ljava/lang/Object;
.source "StreamAssembler.java"
.field private static d:[B
.field final a:Ljava/util/List;
.field  b:I
.field  c:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/f/as;->a:Ljava/util/List;
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/f/as;->b:I
return-void
.end method
.method static a([BI)I
.registers 4
:goto_0
array-length v0, p0
if-ge p1, v0, :cond_d
aget-byte v0, p0, p1
const/16 v1, 0x20
if-eq v0, v1, :cond_a
:goto_9
return p1
:cond_a
add-int/lit8 p1, p1, 0x1
goto :goto_0
:cond_d
array-length p1, p0
goto :goto_9
.end method
.method public static a([B)Z
.registers 3
sget-object v0, Lcom/bbm/f/as;->d:[B
if-nez v0, :cond_e
:try_start_4
const-string v0, "{\"stream"
const-string v1, "UTF-8"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
sput-object v0, Lcom/bbm/f/as;->d:[B
:try_end_e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_e} :catch_1a
:cond_e
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/bbm/f/as;->a([BI)I
move-result v0
sget-object v1, Lcom/bbm/f/as;->d:[B
invoke-static {p0, v0, v1}, Lcom/bbm/f/as;->a([BI[B)Z
move-result v0
return v0
:catch_1a
move-exception v0
new-instance v0, Ljava/lang/Error;
const-string v1, "Unrecoverable error: utf-8 is not supported!"
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static a([BI[B)Z
.registers 7
const/4 v1, 0x0
array-length v0, p0
array-length v2, p2
if-ge v0, v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move v0, v1
:goto_7
array-length v2, p2
if-ge v0, v2, :cond_15
add-int v2, v0, p1
aget-byte v2, p0, v2
aget-byte v3, p2, v0
if-ne v2, v3, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_15
const/4 v1, 0x1
goto :goto_5
.end method
.method static synthetic b([BI)I
.registers 4
:goto_0
array-length v0, p0
if-ge p1, v0, :cond_f
aget-byte v0, p0, p1
const/16 v1, 0x22
if-ne v0, v1, :cond_c
add-int/lit8 v0, p1, 0x1
:goto_b
return v0
:cond_c
add-int/lit8 p1, p1, 0x1
goto :goto_0
:cond_f
array-length v0, p0
goto :goto_b
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/bbm/f/as;->c:Z
iget-object v0, p0, Lcom/bbm/f/as;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/at;
invoke-virtual {v0}, Lcom/bbm/f/at;->a()V
goto :goto_9
:cond_19
iput v2, p0, Lcom/bbm/f/as;->b:I
return-void
.end method