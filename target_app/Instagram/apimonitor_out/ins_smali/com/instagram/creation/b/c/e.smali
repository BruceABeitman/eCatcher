.class final Lcom/instagram/creation/b/c/e;
.super Ljava/lang/Object;
.source "VideoUploader.java"
.field private static a:Ljava/util/Comparator;
.field private final b:Lcom/instagram/creation/b/c/d;
.field private final c:Lcom/instagram/common/a/b/a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/creation/b/c/f;
invoke-direct {v0}, Lcom/instagram/creation/b/c/f;-><init>()V
sput-object v0, Lcom/instagram/creation/b/c/e;->a:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>(Lcom/instagram/common/a/b/a;Lcom/instagram/creation/b/c/d;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/creation/b/c/e;->c:Lcom/instagram/common/a/b/a;
iput-object p2, p0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;
return-void
.end method
.method private static a(Ljava/lang/String;)Lcom/instagram/creation/b/c/a/d;
.registers 11
const/4 v9, 0x1
const/4 v3, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v2, -0x1
const-string v0, ","
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v5, v4
move v0, v3
:goto_10
if-ge v0, v5, :cond_44
aget-object v2, v4, v0
const-string v6, "(/|-)"
invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
new-instance v6, Lcom/instagram/creation/b/c/a/d;
aget-object v7, v2, v3
invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v7
aget-object v8, v2, v9
invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
move-result v8
invoke-direct {v6, v7, v8}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V
invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v6, 0x2
aget-object v2, v2, v6
invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_44
sget-object v0, Lcom/instagram/creation/b/c/e;->a:Ljava/util/Comparator;
invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/c/a/d;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
if-le v4, v9, :cond_70
invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/creation/b/c/a/d;
:goto_5b
iget v4, v0, Lcom/instagram/creation/b/c/a/d;->a:I
if-nez v4, :cond_72
iget v0, v0, Lcom/instagram/creation/b/c/a/d;->b:I
add-int/lit8 v3, v0, 0x1
if-eqz v1, :cond_76
iget v0, v1, Lcom/instagram/creation/b/c/a/d;->a:I
move v1, v3
:goto_68
new-instance v2, Lcom/instagram/creation/b/c/a/d;
add-int/lit8 v0, v0, -0x1
invoke-direct {v2, v1, v0}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V
return-object v2
:cond_70
const/4 v1, 0x0
goto :goto_5b
:cond_72
iget v0, v0, Lcom/instagram/creation/b/c/a/d;->a:I
move v1, v3
goto :goto_68
:cond_76
move v0, v2
move v1, v3
goto :goto_68
.end method
.method private static a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
.registers 4
const/4 v0, 0x0
if-eqz p0, :cond_14
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v1
if-eqz v1, :cond_14
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v1
if-ne p1, v1, :cond_14
const/4 v0, 0x1
:cond_14
return v0
.end method
.method public final a(Lcom/instagram/creation/b/a/b;)I
.registers 23
const/4 v7, 0x0
const/4 v5, 0x0
const/4 v3, 0x0
new-instance v6, Ljava/io/File;
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;
move-result-object v4
invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_27
const-string v3, "VideoUploader"
const-string v4, "Could not open pending media for reading"
invoke-static {v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;
const-string v4, "Rendered video doesn\'t exist"
move-object/from16 v0, p1
invoke-virtual {v3, v0, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
sget v3, Lcom/instagram/creation/b/c/h;->c:I
:goto_26
:cond_26
return v3
:cond_27
new-instance v8, Ljava/util/LinkedList;
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;
move-result-object v4
invoke-direct {v8, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;
move-result-object v9
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, "-"
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->hashCode()I
move-result v9
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v6}, Ljava/io/File;->length()J
move-result-wide v14
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v16
move v8, v7
move-object v7, v5
:goto_5d
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_289
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/instagram/creation/b/a/i;
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Trying server: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/instagram/creation/b/a/i;->c()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v9, v3, 0x1
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;
move-result-object v3
invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;
move-result-object v3
const/4 v10, 0x0
invoke-interface {v3, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
const/4 v10, 0x1
new-instance v3, Lcom/instagram/creation/b/c/a/d;
const/4 v11, 0x0
const-wide/32 v12, 0x32000
invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J
move-result-wide v12
long-to-int v12, v12
add-int/lit8 v12, v12, -0x1
invoke-direct {v3, v11, v12}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V
move-object v12, v3
move v11, v8
move v3, v10
move-object v10, v7
:goto_9d
if-eqz v3, :cond_284
const/4 v13, 0x0
iget v3, v12, Lcom/instagram/creation/b/c/a/d;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
iget v3, v12, Lcom/instagram/creation/b/c/a/d;->b:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
:try_start_ad
new-instance v3, Lcom/instagram/creation/b/c/a/f;
iget v7, v12, Lcom/instagram/creation/b/c/a/d;->a:I
invoke-virtual {v12}, Lcom/instagram/creation/b/c/a/d;->a()I
move-result v8
invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/b/c/a/f;-><init>(Ljava/lang/String;Lcom/instagram/creation/b/a/i;Ljava/io/File;II)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/instagram/creation/b/c/e;->c:Lcom/instagram/common/a/b/a;
move-object/from16 v17, v0
new-instance v18, Lcom/instagram/creation/b/c/g;
move-object/from16 v0, v18
move-object/from16 v1, p0
move-object/from16 v2, p1
invoke-direct {v0, v1, v2}, Lcom/instagram/creation/b/c/g;-><init>(Lcom/instagram/creation/b/c/e;Lcom/instagram/creation/b/a/b;)V
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v3, v1}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v17
sub-long v7, v17, v7
new-instance v3, Ljava/lang/StringBuilder;
const-string v17, "Time to upload "
move-object/from16 v0, v17
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
long-to-double v0, v7
move-wide/from16 v17, v0
const-wide v19, 0x408f400000000000L
div-double v17, v17, v19
move-wide/from16 v0, v17
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string v17, "s"
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0xc8
invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
move-result v3
if-eqz v3, :cond_13d
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v3
invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;
move-result-object v4
const-class v5, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v4, v3, v5}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;
const-string v4, "result"
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v3
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->h(Ljava/lang/String;)V
sget-object v3, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V
sget v3, Lcom/instagram/creation/b/c/h;->a:I
:try_end_12f
.catchall {:try_start_ad .. :try_end_12f} :catchall_275
if-eqz v10, :cond_26
:try_start_131
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_138
.catch Ljava/io/IOException; {:try_start_131 .. :try_end_138} :catch_13a
goto/16 :goto_26
:catch_13a
move-exception v4
goto/16 :goto_26
:cond_13d
const/16 v3, 0xc9
:try_start_13f
invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
move-result v3
if-eqz v3, :cond_19b
invoke-virtual {v12}, Lcom/instagram/creation/b/c/a/d;->a()I
move-result v3
int-to-double v12, v3
const-wide/high16 v17, 0x3ff0
mul-double v12, v12, v17
long-to-double v7, v7
div-double v7, v12, v7
const-wide v12, 0x40c47a8000000000L
invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(DD)D
move-result-wide v7
const-wide v12, 0x40b3880000000000L
mul-double/2addr v7, v12
invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
const v3, 0x32000
double-to-int v7, v7
invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I
move-result v3
const-string v7, "Range"
invoke-interface {v10, v7}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v7
invoke-interface {v7}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/instagram/creation/b/c/e;->a(Ljava/lang/String;)Lcom/instagram/creation/b/c/a/d;
move-result-object v7
invoke-virtual {v7}, Lcom/instagram/creation/b/c/a/d;->a()I
move-result v8
invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I
move-result v8
new-instance v3, Lcom/instagram/creation/b/c/a/d;
iget v12, v7, Lcom/instagram/creation/b/c/a/d;->a:I
iget v7, v7, Lcom/instagram/creation/b/c/a/d;->a:I
add-int/2addr v7, v8
add-int/lit8 v7, v7, -0x1
invoke-direct {v3, v12, v7}, Lcom/instagram/creation/b/c/a/d;-><init>(II)V
:try_end_18d
.catchall {:try_start_13f .. :try_end_18d} :catchall_275
const/4 v7, 0x1
:goto_18e
if-eqz v10, :cond_280
:try_start_190
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v8
invoke-static {v8}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_197
.catch Ljava/io/IOException; {:try_start_190 .. :try_end_197} :catch_270
move-object v12, v3
move v3, v7
goto/16 :goto_9d
:cond_19b
const/16 v3, 0x1a6
:try_start_19d
invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
move-result v3
if-eqz v3, :cond_1c5
move-object/from16 v0, p0
iget-object v3, v0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;
const-string v4, "Video is corrupt"
move-object/from16 v0, p1
invoke-virtual {v3, v0, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;
move-result-object v3
invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
sget v3, Lcom/instagram/creation/b/c/h;->c:I
:try_end_1b7
.catchall {:try_start_19d .. :try_end_1b7} :catchall_275
if-eqz v10, :cond_26
:try_start_1b9
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_1c0
.catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1c0} :catch_1c2
goto/16 :goto_26
:catch_1c2
move-exception v4
goto/16 :goto_26
:cond_1c5
const/16 v3, 0x193
:try_start_1c7
invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
move-result v3
if-eqz v3, :cond_1ea
const/4 v3, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V
sget-object v3, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V
sget v3, Lcom/instagram/creation/b/c/h;->b:I
:try_end_1dc
.catchall {:try_start_1c7 .. :try_end_1dc} :catchall_275
if-eqz v10, :cond_26
:try_start_1de
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_1e5
.catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e5} :catch_1e7
goto/16 :goto_26
:catch_1e7
move-exception v4
goto/16 :goto_26
:cond_1ea
const/16 v3, 0x1f7
:try_start_1ec
invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
move-result v3
if-nez v3, :cond_1fa
const/16 v3, 0x1f4
invoke-static {v10, v3}, Lcom/instagram/creation/b/c/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;I)Z
move-result v3
if-eqz v3, :cond_22a
:cond_1fa
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v3
invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-virtual/range {p1 .. p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;
move-result-object v3
invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
const/4 v3, 0x2
if-ne v9, v3, :cond_22a
move-object/from16 v0, p0
iget-object v3, v0, Lcom/instagram/creation/b/c/e;->b:Lcom/instagram/creation/b/c/d;
const-string v4, "Transient server error"
move-object/from16 v0, p1
invoke-virtual {v3, v0, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
sget v3, Lcom/instagram/creation/b/c/h;->c:I
:try_end_21c
.catchall {:try_start_1ec .. :try_end_21c} :catchall_275
if-eqz v10, :cond_26
:try_start_21e
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_225
.catch Ljava/io/IOException; {:try_start_21e .. :try_end_225} :catch_227
goto/16 :goto_26
:catch_227
move-exception v4
goto/16 :goto_26
:cond_22a
if-nez v11, :cond_265
:try_start_22c
new-instance v3, Lcom/instagram/creation/b/c/a/a;
invoke-direct {v3}, Lcom/instagram/creation/b/c/a/a;-><init>()V
move-object/from16 v0, p0
iget-object v7, v0, Lcom/instagram/creation/b/c/e;->c:Lcom/instagram/common/a/b/a;
invoke-virtual {v7, v3}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v3
if-eqz v3, :cond_24d
invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v7
if-eqz v7, :cond_24d
invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v3
invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v3
const/16 v7, 0xc8
if-eq v3, v7, :cond_264
:cond_24d
const-string v3, "VideoUploader"
const-string v4, "No connectivity, failing."
invoke-static {v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
sget v3, Lcom/instagram/creation/b/c/h;->c:I
:try_end_256
.catchall {:try_start_22c .. :try_end_256} :catchall_275
if-eqz v10, :cond_26
:try_start_258
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_25f
.catch Ljava/io/IOException; {:try_start_258 .. :try_end_25f} :catch_261
goto/16 :goto_26
:catch_261
move-exception v4
goto/16 :goto_26
:cond_264
const/4 v11, 0x1
:try_start_265
:cond_265
const-string v3, "VideoUploader"
const-string v7, "Have connectivity, trying next server"
invoke-static {v3, v7}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_26c
.catchall {:try_start_265 .. :try_end_26c} :catchall_275
move-object v3, v12
move v7, v13
goto/16 :goto_18e
:catch_270
move-exception v8
move-object v12, v3
move v3, v7
goto/16 :goto_9d
:catchall_275
move-exception v3
if-eqz v10, :cond_27f
:try_start_278
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_27f
:try_end_27f
.catch Ljava/io/IOException; {:try_start_278 .. :try_end_27f} :catch_29a
:goto_27f
throw v3
:cond_280
move-object v12, v3
move v3, v7
goto/16 :goto_9d
:cond_284
move v3, v9
move-object v7, v10
move v8, v11
goto/16 :goto_5d
:cond_289
const/4 v3, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V
sget-object v3, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V
sget v3, Lcom/instagram/creation/b/c/h;->c:I
goto/16 :goto_26
:catch_29a
move-exception v4
goto :goto_27f
.end method