.class public final Lcom/c/a/bu;
.super Lcom/c/a/bq;
.field private static final f:[Ljava/lang/String;
.field private final a:Lcom/c/bp;
.field private final b:Ljava/lang/String;
.field private c:Ljava/nio/ByteBuffer;
.field private d:Ljava/util/ArrayList;
.field private final e:Ljava/io/RandomAccessFile;
.method static constructor <clinit>()V
.registers 15
const/16 v8, 0x2a
const/16 v7, 0x26
const/16 v9, 0x24
const/4 v13, 0x1
const/4 v3, 0x0
const/4 v0, 0x4
new-array v10, v0, [Ljava/lang/String;
const-string v0, "q\u0014y\u0016"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_10c
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_110
const/16 v6, 0x38
:goto_23
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1a
:cond_2f
move v1, v0
move-object v0, v4
:goto_31
if-gt v1, v2, :cond_15
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "g\u0014\nHWI/_T\u0018@%CH]BdLKJ\u0006"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_109
move v2, v3
:cond_48
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4d
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_11c
const/16 v6, 0x38
:goto_56
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_62
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4d
:cond_62
move v1, v0
move-object v0, v4
:goto_64
if-gt v1, v2, :cond_48
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "\u0006-D\u0004KJ%H\u0004"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_107
move v2, v3
:cond_7c
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_81
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_128
const/16 v6, 0x38
:goto_8a
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_96
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_81
:cond_96
move v1, v0
move-object v0, v4
:goto_98
if-gt v1, v2, :cond_7c
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v6, 0x3
const-string v0, "E+_H\\Hc^\u0004[J+YA\u0018@-FA"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_cb
:cond_af
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_b4
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_134
const/16 v5, 0x38
:goto_bd
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_c9
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_b4
:cond_c9
move v1, v0
move-object v0, v2
:cond_cb
if-gt v1, v3, :cond_af
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/a/bu;->f:[Ljava/lang/String;
return-void
:pswitch_db
move v6, v7
goto/16 :goto_23
:pswitch_de
const/16 v6, 0x44
goto/16 :goto_23
:pswitch_e2
move v6, v8
goto/16 :goto_23
:pswitch_e5
move v6, v9
goto/16 :goto_23
:pswitch_e8
move v6, v7
goto/16 :goto_56
:pswitch_eb
const/16 v6, 0x44
goto/16 :goto_56
:pswitch_ef
move v6, v8
goto/16 :goto_56
:pswitch_f2
move v6, v9
goto/16 :goto_56
:pswitch_f5
move v6, v7
goto :goto_8a
:pswitch_f7
const/16 v6, 0x44
goto :goto_8a
:pswitch_fa
move v6, v8
goto :goto_8a
:pswitch_fc
move v6, v9
goto :goto_8a
:pswitch_fe
move v5, v7
goto :goto_bd
:pswitch_100
const/16 v5, 0x44
goto :goto_bd
:pswitch_103
move v5, v8
goto :goto_bd
:pswitch_105
move v5, v9
goto :goto_bd
:cond_107
move v2, v3
goto :goto_98
:cond_109
move v2, v3
goto/16 :goto_64
:cond_10c
move v2, v3
goto/16 :goto_31
nop
:pswitch_data_110
.packed-switch 0x0
:pswitch_db
:pswitch_de
:pswitch_e2
:pswitch_e5
.end packed-switch
:pswitch_data_134
.packed-switch 0x0
:pswitch_fe
:pswitch_100
:pswitch_103
:pswitch_105
.end packed-switch
:pswitch_data_128
.packed-switch 0x0
:pswitch_f5
:pswitch_f7
:pswitch_fa
:pswitch_fc
.end packed-switch
:pswitch_data_11c
.packed-switch 0x0
:pswitch_e8
:pswitch_eb
:pswitch_ef
:pswitch_f2
.end packed-switch
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 18
sget-boolean v7, Lcom/c/a/be;->b:Z
invoke-direct {p0}, Lcom/c/a/bq;-><init>()V
const-class v1, Lcom/c/a/bu;
invoke-static {v1}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v1
iput-object v1, p0, Lcom/c/a/bu;->a:Lcom/c/bp;
move-object/from16 v0, p1
iput-object v0, p0, Lcom/c/a/bu;->b:Ljava/lang/String;
new-instance v1, Ljava/io/RandomAccessFile;
new-instance v2, Ljava/io/File;
move-object/from16 v0, p2
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string v3, "r"
invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v1, p0, Lcom/c/a/bu;->e:Ljava/io/RandomAccessFile;
iget-object v1, p0, Lcom/c/a/bu;->e:Ljava/io/RandomAccessFile;
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v1
sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
const-wide/16 v3, 0x0
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J
move-result-wide v5
long-to-int v5, v5
int-to-long v5, v5
invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
move-result-object v1
iput-object v1, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-direct {p0}, Lcom/c/a/bu;->a()V
iget-object v1, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v1, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I
move-result v1
add-int/lit8 v1, v1, -0x10
const/4 v2, 0x2
if-ge v1, v2, :cond_50
new-instance v1, Lcom/c/a/ae;
invoke-direct {v1}, Lcom/c/a/ae;-><init>()V
throw v1
:cond_50
add-int/lit8 v2, v1, -0x2
const/4 v3, 0x2
invoke-direct {p0, v2, v3}, Lcom/c/a/bu;->a(II)Lcom/c/a/u;
move-result-object v2
const/16 v3, 0x10
invoke-virtual {v2, v3}, Lcom/c/a/u;->b(I)I
move-result v4
mul-int/lit8 v2, v4, 0x4
add-int/lit8 v1, v1, -0x2
sub-int/2addr v1, v2
invoke-direct {p0, v1, v2}, Lcom/c/a/bu;->a(II)Lcom/c/a/u;
move-result-object v5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/c/a/bu;->d:Ljava/util/ArrayList;
sget-object v1, Lcom/c/a/bu;->f:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
int-to-long v2, v1
const/4 v1, 0x0
:cond_78
if-ge v1, v4, :cond_9a
const/16 v6, 0x20
invoke-virtual {v5, v6}, Lcom/c/a/u;->c(I)J
move-result-wide v8
iget-object v6, p0, Lcom/c/a/bu;->d:Ljava/util/ArrayList;
new-instance v10, Lcom/c/a/by;
new-instance v11, Lcom/c/a/z;
iget-object v12, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
long-to-int v13, v2
long-to-int v14, v8
invoke-direct {v11, v12, v13, v14}, Lcom/c/a/z;-><init>(Ljava/nio/ByteBuffer;II)V
iget-object v12, p0, Lcom/c/a/bu;->b:Ljava/lang/String;
invoke-direct {v10, v11, v12, v1}, Lcom/c/a/by;-><init>(Lcom/c/a/z;Ljava/lang/String;I)V
invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-long/2addr v2, v8
add-int/lit8 v1, v1, 0x1
if-eqz v7, :cond_78
:cond_9a
return-void
.end method
.method private a(II)Lcom/c/a/u;
.registers 6
new-instance v0, Lcom/c/a/u;
new-instance v1, Lcom/c/a/z;
iget-object v2, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-direct {v1, v2, p1, p2}, Lcom/c/a/z;-><init>(Ljava/nio/ByteBuffer;II)V
invoke-direct {v0, v1}, Lcom/c/a/u;-><init>(Lcom/c/a/z;)V
return-object v0
.end method
.method private a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I
move-result v0
sget-object v1, Lcom/c/a/bu;->f:[Ljava/lang/String;
aget-object v1, v1, v3
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, 0x10
if-ge v0, v1, :cond_19
new-instance v0, Lcom/c/a/ae;
invoke-direct {v0, p0}, Lcom/c/a/ae;-><init>(Lcom/c/a/bq;)V
throw v0
:cond_19
const/4 v0, 0x4
new-array v0, v0, [B
iget-object v1, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
aget-byte v1, v0, v3
const/16 v2, 0x57
if-ne v1, v2, :cond_3c
const/4 v1, 0x1
aget-byte v1, v0, v1
const/16 v2, 0x50
if-ne v1, v2, :cond_3c
const/4 v1, 0x2
aget-byte v1, v0, v1
const/16 v2, 0x53
if-ne v1, v2, :cond_3c
const/4 v1, 0x3
aget-byte v0, v0, v1
const/16 v1, 0x32
if-eq v0, v1, :cond_42
:cond_3c
new-instance v0, Lcom/c/a/ae;
invoke-direct {v0, p0}, Lcom/c/a/ae;-><init>(Lcom/c/a/bq;)V
throw v0
:cond_42
new-instance v0, Lcom/c/a/au;
invoke-direct {v0}, Lcom/c/a/au;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/a/bu;->f:[Ljava/lang/String;
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/c/a/bu;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/a/au;->a([B)V
invoke-virtual {v0}, Lcom/c/a/au;->a()[B
move-result-object v0
const/16 v1, 0x10
new-array v1, v1, [B
iget-object v2, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
iget-object v3, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I
move-result v3
add-int/lit8 v3, v3, -0x10
invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
iget-object v2, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
move-result v0
if-nez v0, :cond_8b
new-instance v0, Lcom/c/a/ae;
invoke-direct {v0, p0}, Lcom/c/a/ae;-><init>(Lcom/c/a/bq;)V
throw v0
:cond_8b
return-void
.end method
.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/bq;
.registers 4
new-instance v0, Lcom/c/a/bu;
invoke-direct {v0, p1, p2}, Lcom/c/a/bu;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public a(Lcom/c/bq;)Lcom/c/a/cc;
.registers 8
sget-boolean v1, Lcom/c/a/be;->b:Z
iget-object v0, p0, Lcom/c/a/bu;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_50
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/by;
:try_start_14
invoke-virtual {v0, p1}, Lcom/c/a/by;->a(Lcom/c/bq;)Lcom/c/a/cc;
:try_end_17
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1b
move-result-object v0
if-eqz v0, :cond_4e
:goto_1a
return-object v0
:catch_1b
move-exception v1
iget-object v2, p0, Lcom/c/a/bu;->a:Lcom/c/bp;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/a/bu;->f:[Ljava/lang/String;
const/4 v5, 0x1
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/c/a/bu;->f:[Ljava/lang/String;
const/4 v5, 0x2
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/c/a/by;->a()I
move-result v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0, v1}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Lcom/c/a/ae;
invoke-direct {v0, p0}, Lcom/c/a/ae;-><init>(Lcom/c/a/bq;)V
throw v0
:cond_4e
if-eqz v1, :cond_8
:cond_50
const/4 v0, 0x0
goto :goto_1a
.end method
.method public close()V
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/c/a/bu;->e:Ljava/io/RandomAccessFile;
if-nez v0, :cond_6
:goto_5
return-void
:try_start_6
:cond_6
iget-object v0, p0, Lcom/c/a/bu;->e:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:goto_b
:try_end_b
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_10
iput-object v4, p0, Lcom/c/a/bu;->c:Ljava/nio/ByteBuffer;
iput-object v4, p0, Lcom/c/a/bu;->d:Ljava/util/ArrayList;
goto :goto_5
:catch_10
move-exception v0
iget-object v1, p0, Lcom/c/a/bu;->a:Lcom/c/bp;
sget-object v2, Lcom/c/a/bu;->f:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_b
.end method