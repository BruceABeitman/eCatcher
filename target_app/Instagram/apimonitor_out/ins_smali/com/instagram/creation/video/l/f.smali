.class public final Lcom/instagram/creation/video/l/f;
.super Ljava/lang/Object;
.source "VideoEditUtil.java"
.method public static varargs a([Ljava/io/File;)F
.registers 15
const-wide/16 v12, 0x0
const/4 v1, 0x0
array-length v0, p0
add-int/lit8 v3, v0, -0x1
const/4 v2, 0x0
:try_start_7
new-array v4, v3, [Ljava/nio/channels/FileChannel;
move v0, v1
:goto_a
if-ge v0, v3, :cond_2c
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "working with file: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v6, p0, v0
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v5, Ljava/io/FileInputStream;
aget-object v6, p0, v0
invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_2c
new-array v5, v3, [Lcom/googlecode/mp4parser/a/c;
move v0, v1
:goto_2f
if-ge v0, v3, :cond_3c
aget-object v6, v4, v0
invoke-static {v6}, Lcom/googlecode/mp4parser/a/b/a/a;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/a/c;
move-result-object v6
aput-object v6, v5, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2f
:cond_3c
new-instance v4, Ljava/util/LinkedList;
invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
new-instance v6, Ljava/util/LinkedList;
invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V
array-length v7, v5
move v3, v1
:goto_48
if-ge v3, v7, :cond_9f
aget-object v0, v5, v3
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_54
:cond_54
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9b
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;
move-result-object v9
const-string v10, "soun"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_6f
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_6f
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;
move-result-object v9
const-string v10, "vide"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_54
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7e} :catch_7f
goto :goto_54
:catch_7f
move-exception v0
move-object v1, v0
move v0, v2
:goto_82
const-string v2, "VideoEditUtils"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Exception: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_9a
return v0
:cond_9b
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_48
:try_start_9f
:cond_9f
new-instance v5, Lcom/googlecode/mp4parser/a/c;
invoke-direct {v5}, Lcom/googlecode/mp4parser/a/c;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
move v3, v1
:goto_aa
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v0
if-ge v3, v0, :cond_d5
invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/googlecode/mp4parser/a/e;
invoke-static {v1}, Lcom/instagram/creation/video/l/f;->b(Lcom/googlecode/mp4parser/a/e;)D
move-result-wide v8
const-wide/high16 v10, 0x3ff0
cmpl-double v8, v8, v10
if-lez v8, :cond_d1
invoke-static {v1, v0}, Lcom/instagram/creation/video/l/f;->a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/e;)Lcom/googlecode/mp4parser/a/c/b;
move-result-object v0
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_cd
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_aa
:cond_d1
invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_cd
:cond_d5
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_ef
new-instance v1, Lcom/googlecode/mp4parser/a/c/a;
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/googlecode/mp4parser/a/e;
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/googlecode/mp4parser/a/e;
invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/a/c/a;-><init>([Lcom/googlecode/mp4parser/a/e;)V
invoke-virtual {v5, v1}, Lcom/googlecode/mp4parser/a/c;->a(Lcom/googlecode/mp4parser/a/e;)V
:cond_ef
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_109
new-instance v1, Lcom/googlecode/mp4parser/a/c/a;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lcom/googlecode/mp4parser/a/e;
invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/googlecode/mp4parser/a/e;
invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/a/c/a;-><init>([Lcom/googlecode/mp4parser/a/e;)V
invoke-virtual {v5, v1}, Lcom/googlecode/mp4parser/a/c;->a(Lcom/googlecode/mp4parser/a/e;)V
:cond_109
new-instance v0, Lcom/googlecode/mp4parser/a/a/a;
invoke-direct {v0}, Lcom/googlecode/mp4parser/a/a/a;-><init>()V
invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/c;)Lcom/coremedia/iso/IsoFile;
move-result-object v1
invoke-virtual {v1}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;
move-result-object v0
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MovieBox;->getMovieHeaderBox()Lcom/coremedia/iso/boxes/MovieHeaderBox;
move-result-object v0
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getDuration()J
move-result-wide v3
invoke-virtual {v1}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;
move-result-object v0
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MovieBox;->getMovieHeaderBox()Lcom/coremedia/iso/boxes/MovieHeaderBox;
move-result-object v0
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getTimescale()J
:try_end_129
.catch Ljava/lang/Exception; {:try_start_9f .. :try_end_129} :catch_7f
move-result-wide v5
cmp-long v0, v3, v12
if-lez v0, :cond_157
cmp-long v0, v5, v12
if-lez v0, :cond_157
long-to-float v0, v3
long-to-float v2, v5
div-float v2, v0, v2
move v0, v2
:try_start_137
:goto_137
array-length v2, p0
add-int/lit8 v2, v2, -0x1
aget-object v2, p0, v2
new-instance v3, Ljava/io/RandomAccessFile;
const-string v4, "rw"
invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v2
const-wide/16 v3, 0x0
invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
invoke-virtual {v1, v2}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V
invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
:try_end_152
.catch Ljava/lang/Exception; {:try_start_137 .. :try_end_152} :catch_154
goto/16 :goto_9a
:catch_154
move-exception v1
goto/16 :goto_82
:cond_157
move v0, v2
goto :goto_137
.end method
.method private static a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/e;)Lcom/googlecode/mp4parser/a/c/b;
.registers 31
const-wide/16 v8, 0x0
const-wide/16 v6, 0x0
const-wide/16 v4, -0x1
const-wide/16 v2, 0x0
invoke-static/range {p1 .. p1}, Lcom/instagram/creation/video/l/f;->b(Lcom/googlecode/mp4parser/a/e;)D
move-result-wide v15
const/4 v10, 0x0
move v11, v10
move-wide/from16 v21, v4
move-wide/from16 v23, v6
move-wide/from16 v5, v21
move-wide/from16 v25, v8
move-wide/from16 v9, v25
move-wide/from16 v7, v23
move-wide/from16 v27, v2
move-wide/from16 v3, v27
:goto_1e
invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-ge v11, v2, :cond_81
invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v2
invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/coremedia/iso/boxes/k;
const/4 v12, 0x0
:goto_33
int-to-long v13, v12
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v17
cmp-long v13, v13, v17
if-gez v13, :cond_7d
cmpg-double v13, v7, v15
if-gtz v13, :cond_9d
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v5
long-to-double v5, v5
invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v13
invoke-virtual {v13}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v13
long-to-double v13, v13
div-double/2addr v5, v13
add-double v13, v7, v5
move-wide v6, v9
:goto_52
const-wide/16 v17, 0x1
add-long v9, v9, v17
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v17
move-wide/from16 v0, v17
long-to-double v0, v0
move-wide/from16 v17, v0
invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v5
invoke-virtual {v5}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v19
move-wide/from16 v0, v19
long-to-double v0, v0
move-wide/from16 v19, v0
div-double v17, v17, v19
add-double v4, v3, v17
add-int/lit8 v3, v12, 0x1
move v12, v3
move-wide/from16 v21, v4
move-wide/from16 v3, v21
move-wide/from16 v23, v6
move-wide/from16 v5, v23
move-wide v7, v13
goto :goto_33
:cond_7d
add-int/lit8 v2, v11, 0x1
move v11, v2
goto :goto_1e
:cond_81
new-instance v2, Ljava/lang/StringBuilder;
const-string v9, "Cropped audio to "
invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v2
const-string v7, " out of "
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
new-instance v2, Lcom/googlecode/mp4parser/a/c/b;
move-object/from16 v0, p0
invoke-direct {v2, v0, v5, v6}, Lcom/googlecode/mp4parser/a/c/b;-><init>(Lcom/googlecode/mp4parser/a/e;J)V
return-object v2
:cond_9d
move-wide v13, v7
move-wide/from16 v21, v5
move-wide/from16 v6, v21
goto :goto_52
.end method
.method public static a(Lcom/googlecode/mp4parser/a/e;)[D
.registers 16
const/4 v2, 0x0
const-wide/16 v13, 0x1
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v0
array-length v0, v0
new-array v10, v0, [D
const-wide/16 v3, 0x0
const-wide/16 v0, 0x0
move-wide v5, v3
move-wide v3, v0
move v1, v2
:goto_11
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_61
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
move v7, v2
:goto_26
int-to-long v8, v7
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v11
cmp-long v8, v8, v11
if-gez v8, :cond_5d
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v8
add-long v11, v5, v13
invoke-static {v8, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I
move-result v8
if-ltz v8, :cond_47
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v8
add-long v11, v5, v13
invoke-static {v8, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I
move-result v8
aput-wide v3, v10, v8
:cond_47
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v8
long-to-double v8, v8
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v11
invoke-virtual {v11}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v11
long-to-double v11, v11
div-double/2addr v8, v11
add-double/2addr v8, v3
add-long/2addr v5, v13
add-int/lit8 v3, v7, 0x1
move v7, v3
move-wide v3, v8
goto :goto_26
:cond_5d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_11
:cond_61
return-object v10
.end method
.method private static b(Lcom/googlecode/mp4parser/a/e;)D
.registers 11
const-wide/16 v1, 0x0
const/4 v0, 0x0
move-wide v8, v1
move-wide v2, v8
move v1, v0
:goto_6
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_33
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v4
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v6
mul-long/2addr v4, v6
long-to-double v4, v4
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v6
long-to-double v6, v6
div-double/2addr v4, v6
add-double/2addr v2, v4
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_33
return-wide v2
.end method