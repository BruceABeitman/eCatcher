.class  Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
.super Ljava/lang/Object;
.source "ReversedLinesFileReader.java"
.field private currentLastBytePos:I
.field private final data:[B
.field private leftOver:[B
.field private final no:J
.field final synthetic this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
.method private constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
.registers 16
const/4 v5, 0x0
iput-object p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J
if-eqz p5, :cond_3d
array-length v4, p5
:goto_b
add-int v1, p4, v4
new-array v4, v1, [B
iput-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
const-wide/16 v6, 0x1
sub-long v6, p2, v6
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I
invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
move-result v4
int-to-long v8, v4
mul-long v2, v6, v8
const-wide/16 v6, 0x0
cmp-long v4, p2, v6
if-lez v4, :cond_3f
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;
invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;
move-result-object v4
invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;
invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;
move-result-object v4
iget-object v6, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
invoke-virtual {v4, v6, v5, p4}, Ljava/io/RandomAccessFile;->read([BII)I
move-result v0
if-eq v0, p4, :cond_3f
new-instance v4, Ljava/lang/IllegalStateException;
const-string v5, "Count of requested bytes and actually read bytes don\'t match"
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
:cond_3d
move v4, v5
goto :goto_b
:cond_3f
if-eqz p5, :cond_47
iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
array-length v6, p5
invoke-static {p5, v5, v4, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_47
iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
array-length v4, v4
add-int/lit8 v4, v4, -0x1
iput v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
const/4 v4, 0x0
iput-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
return-void
.end method
.method synthetic constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V
.registers 7
invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
return-void
.end method
.method static synthetic access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
move-result-object v0
return-object v0
.end method
.method private createLeftOver()V
.registers 5
const/4 v3, 0x0
iget v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
add-int/lit8 v0, v1, 0x1
if-lez v0, :cond_16
new-array v1, v0, [B
iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_12
const/4 v1, -0x1
iput v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
return-void
:cond_16
const/4 v1, 0x0
iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
goto :goto_12
.end method
.method private getNewLineMatchByteCount([BI)I
.registers 13
const/4 v8, 0x0
iget-object v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B
invoke-static {v7}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B
move-result-object v0
array-length v4, v0
const/4 v1, 0x0
:goto_9
if-ge v1, v4, :cond_2c
aget-object v6, v0, v1
const/4 v5, 0x1
array-length v7, v6
add-int/lit8 v2, v7, -0x1
:goto_11
if-ltz v2, :cond_29
add-int v7, p2, v2
array-length v9, v6
add-int/lit8 v9, v9, -0x1
sub-int v3, v7, v9
if-ltz v3, :cond_27
aget-byte v7, p1, v3
aget-byte v9, v6, v2
if-ne v7, v9, :cond_27
const/4 v7, 0x1
:goto_23
and-int/2addr v5, v7
add-int/lit8 v2, v2, -0x1
goto :goto_11
:cond_27
move v7, v8
goto :goto_23
:cond_29
if-eqz v5, :cond_2d
array-length v8, v6
:cond_2c
return v8
:cond_2d
add-int/lit8 v1, v1, 0x1
goto :goto_9
.end method
.method private readLine()Ljava/lang/String;
.registers 13
const/4 v7, 0x0
const/4 v2, 0x0
iget-wide v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J
const-wide/16 v10, 0x1
cmp-long v8, v8, v10
if-nez v8, :cond_34
const/4 v1, 0x1
:goto_b
iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
:cond_d
const/4 v8, -0x1
if-le v0, v8, :cond_1d
if-nez v1, :cond_36
iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I
invoke-static {v8}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$600(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
move-result v8
if-ge v0, v8, :cond_36
invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V
:goto_1d
:cond_1d
if-eqz v1, :cond_33
iget-object v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
if-eqz v7, :cond_33
new-instance v2, Ljava/lang/String;
iget-object v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;
invoke-static {v8}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
move-result-object v8
invoke-direct {v2, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
const/4 v7, 0x0
iput-object v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
:cond_33
return-object v2
:cond_34
move v1, v7
goto :goto_b
:cond_36
iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
invoke-direct {p0, v8, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->getNewLineMatchByteCount([BI)I
move-result v6
if-lez v6, :cond_77
add-int/lit8 v5, v0, 0x1
iget v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
sub-int/2addr v8, v5
add-int/lit8 v4, v8, 0x1
if-gez v4, :cond_60
new-instance v7, Ljava/lang/IllegalStateException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Unexpected negative line length="
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v7
:cond_60
new-array v3, v4, [B
iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B
invoke-static {v8, v5, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
new-instance v2, Ljava/lang/String;
iget-object v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;
invoke-static {v7}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
move-result-object v7
invoke-direct {v2, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
sub-int v7, v0, v6
iput v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
goto :goto_1d
:cond_77
iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I
invoke-static {v8}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
move-result v8
sub-int/2addr v0, v8
if-gez v0, :cond_d
invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V
goto :goto_1d
.end method
.method private rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
.registers 7
const-wide/16 v4, 0x1
iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
const/4 v1, -0x1
if-le v0, v1, :cond_22
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J
cmp-long v0, v0, v4
if-lez v0, :cond_3b
new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
iget-wide v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J
sub-long/2addr v2, v4
iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I
invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
move-result v4
iget-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
:goto_3a
return-object v0
:cond_3b
iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
if-eqz v0, :cond_65
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected leftover of the last block: leftOverOfThisFilePart="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
new-instance v2, Ljava/lang/String;
iget-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B
iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;
#getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;
invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
move-result-object v4
invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_65
const/4 v0, 0x0
goto :goto_3a
.end method