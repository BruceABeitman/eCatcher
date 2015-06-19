.class public Lcom/googlecode/mp4parser/a/a/a;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"
.field static final synthetic e:Z
.field private static f:Ljava/util/logging/Logger;
.field public a:I
.field  b:Ljava/util/Set;
.field  c:Ljava/util/HashMap;
.field  d:Ljava/util/HashMap;
.field private g:Lcom/googlecode/mp4parser/a/a/c;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/a/a/a;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/googlecode/mp4parser/a/a/a;->e:Z
const-class v0, Lcom/googlecode/mp4parser/a/a/a;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
return-void
:cond_18
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x40
iput v0, p0, Lcom/googlecode/mp4parser/a/a/a;->a:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->b:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->c:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->d:Ljava/util/HashMap;
new-instance v0, Lcom/googlecode/mp4parser/a/a/d;
invoke-direct {v0}, Lcom/googlecode/mp4parser/a/a/d;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->g:Lcom/googlecode/mp4parser/a/a/c;
return-void
.end method
.method private static a(JJ)J
.registers 6
const-wide/16 v0, 0x0
cmp-long v0, p2, v0
if-nez v0, :cond_7
:goto_6
return-wide p0
:cond_7
rem-long v0, p0, p2
invoke-static {p2, p3, v0, v1}, Lcom/googlecode/mp4parser/a/a/a;->a(JJ)J
move-result-wide p0
goto :goto_6
.end method
.method private static a(Lcom/googlecode/mp4parser/a/e;)J
.registers 9
const-wide/16 v0, 0x0
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v4
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v6
mul-long/2addr v4, v6
add-long v0, v1, v4
move-wide v1, v0
goto :goto_b
:cond_24
return-wide v1
.end method
.method private static a([I)J
.registers 7
const-wide/16 v1, 0x0
array-length v3, p0
const/4 v0, 0x0
:goto_4
if-ge v0, v3, :cond_d
aget v4, p0, v0
int-to-long v4, v4
add-long/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_d
return-wide v1
.end method
.method private a(Lcom/googlecode/mp4parser/a/e;Ljava/util/List;)Ljava/util/List;
.registers 4
iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
return-object v0
.end method
.method public static a(Ljava/util/List;)Ljava/util/List;
.registers 8
new-instance v2, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c3
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/nio/ByteBuffer;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v4, v1, -0x1
if-ltz v4, :cond_81
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z
move-result v1
if-eqz v1, :cond_81
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z
move-result v1
if-eqz v1, :cond_81
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v5
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v1
if-ne v5, v1, :cond_81
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I
move-result v5
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
add-int/2addr v1, v5
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I
move-result v5
if-ne v1, v5, :cond_81
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v4
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I
move-result v5
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
add-int/2addr v0, v1
invoke-static {v4, v5, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_81
if-ltz v4, :cond_be
instance-of v1, v0, Ljava/nio/MappedByteBuffer;
if-eqz v1, :cond_be
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Ljava/nio/MappedByteBuffer;
if-eqz v1, :cond_be
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I
move-result v5
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I
move-result v1
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I
move-result v6
sub-int/2addr v1, v6
if-ne v5, v1, :cond_be
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I
move-result v4
add-int/2addr v0, v4
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
goto/16 :goto_d
:cond_be
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_d
:cond_c3
return-object v2
.end method
.method private a(Lcom/googlecode/mp4parser/a/e;[J)[J
.registers 4
iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->d:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [J
return-object v0
.end method
.method private b(Lcom/googlecode/mp4parser/a/c;)Lcom/coremedia/iso/boxes/MovieBox;
.registers 14
new-instance v5, Lcom/coremedia/iso/boxes/MovieBox;
invoke-direct {v5}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V
new-instance v6, Lcom/coremedia/iso/boxes/MovieHeaderBox;
invoke-direct {v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-static {v0}, Lcom/googlecode/mp4parser/a/b;->a(Ljava/util/Date;)J
move-result-wide v0
invoke-virtual {v6, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(J)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-static {v0}, Lcom/googlecode/mp4parser/a/b;->a(Ljava/util/Date;)J
move-result-wide v0
invoke-virtual {v6, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(J)V
invoke-static {p1}, Lcom/googlecode/mp4parser/a/a/a;->c(Lcom/googlecode/mp4parser/a/c;)J
move-result-wide v7
const-wide/16 v0, 0x0
invoke-virtual {p1}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
move-wide v1, v0
:goto_31
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-static {v0}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;)J
move-result-wide v3
mul-long/2addr v3, v7
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v10
div-long/2addr v3, v10
cmp-long v0, v3, v1
if-lez v0, :cond_d9
move-wide v0, v3
:goto_50
move-wide v1, v0
goto :goto_31
:cond_52
invoke-virtual {v6, v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V
invoke-virtual {v6, v7, v8}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V
const-wide/16 v0, 0x0
invoke-virtual {p1}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_63
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_87
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v4
invoke-virtual {v4}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v7
cmp-long v4, v1, v7
if-gez v4, :cond_85
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v0
:goto_83
move-wide v1, v0
goto :goto_63
:cond_85
move-wide v0, v1
goto :goto_83
:cond_87
const-wide/16 v3, 0x1
add-long v0, v1, v3
invoke-virtual {v6, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V
invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getCreationTime()J
move-result-wide v0
const-wide v2, 0x100000000L
cmp-long v0, v0, v2
if-gez v0, :cond_b5
invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getModificationTime()J
move-result-wide v0
const-wide v2, 0x100000000L
cmp-long v0, v0, v2
if-gez v0, :cond_b5
invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getDuration()J
move-result-wide v0
const-wide v2, 0x100000000L
cmp-long v0, v0, v2
if-ltz v0, :cond_b9
:cond_b5
const/4 v0, 0x1
invoke-virtual {v6, v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V
:cond_b9
invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-virtual {p1}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_c4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_d8
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-direct {p0, v0, p1}, Lcom/googlecode/mp4parser/a/a/a;->b(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)Lcom/coremedia/iso/boxes/TrackBox;
move-result-object v0
invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
goto :goto_c4
:cond_d8
return-object v5
:cond_d9
move-wide v0, v1
goto/16 :goto_50
.end method
.method private b(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)Lcom/coremedia/iso/boxes/TrackBox;
.registers 30
sget-object v2, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Creating Mp4TrackImpl "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
new-instance v13, Lcom/coremedia/iso/boxes/TrackBox;
invoke-direct {v13}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V
new-instance v3, Lcom/coremedia/iso/boxes/TrackHeaderBox;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V
const/4 v2, 0x0
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->a()Z
move-result v4
if-eqz v4, :cond_28
const/4 v2, 0x1
:cond_28
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->b()Z
move-result v4
if-eqz v4, :cond_30
add-int/lit8 v2, v2, 0x2
:cond_30
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->c()Z
move-result v4
if-eqz v4, :cond_38
add-int/lit8 v2, v2, 0x4
:cond_38
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->d()Z
move-result v4
if-eqz v4, :cond_40
add-int/lit8 v2, v2, 0x8
:cond_40
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->j()I
move-result v2
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->c()Ljava/util/Date;
move-result-object v2
invoke-static {v2}, Lcom/googlecode/mp4parser/a/b;->a(Ljava/util/Date;)J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(J)V
invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;)J
move-result-wide v4
invoke-static/range {p2 .. p2}, Lcom/googlecode/mp4parser/a/a/a;->c(Lcom/googlecode/mp4parser/a/c;)J
move-result-wide v6
mul-long/2addr v4, v6
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v6
div-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->f()D
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->d()D
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->h()I
move-result v2
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-static {v2}, Lcom/googlecode/mp4parser/a/b;->a(Ljava/util/Date;)J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(J)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->i()F
move-result v2
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->e()[J
move-result-object v2
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix([J)V
invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getCreationTime()J
move-result-wide v4
const-wide v6, 0x100000000L
cmp-long v2, v4, v6
if-gez v2, :cond_e7
invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getModificationTime()J
move-result-wide v4
const-wide v6, 0x100000000L
cmp-long v2, v4, v6
if-gez v2, :cond_e7
invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getDuration()J
move-result-wide v4
const-wide v6, 0x100000000L
cmp-long v2, v4, v6
if-ltz v2, :cond_eb
:cond_e7
const/4 v2, 0x1
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V
:cond_eb
invoke-virtual {v13, v3}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v14, Lcom/coremedia/iso/boxes/MediaBox;
invoke-direct {v14}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V
invoke-virtual {v13, v14}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v2, Lcom/coremedia/iso/boxes/MediaHeaderBox;
invoke-direct {v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v3
invoke-virtual {v3}, Lcom/googlecode/mp4parser/a/f;->c()Ljava/util/Date;
move-result-object v3
invoke-static {v3}, Lcom/googlecode/mp4parser/a/b;->a(Ljava/util/Date;)J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(J)V
invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;)J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v3
invoke-virtual {v3}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v3
invoke-virtual {v3}, Lcom/googlecode/mp4parser/a/f;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V
invoke-virtual {v14, v2}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v2, Lcom/coremedia/iso/boxes/HandlerBox;
invoke-direct {v2}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V
invoke-virtual {v14, v2}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V
new-instance v15, Lcom/coremedia/iso/boxes/MediaInformationBox;
invoke-direct {v15}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->m()Lcom/coremedia/iso/boxes/a;
move-result-object v2
invoke-virtual {v15, v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v2, Lcom/coremedia/iso/boxes/DataInformationBox;
invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V
new-instance v3, Lcom/coremedia/iso/boxes/DataReferenceBox;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V
invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v4, Lcom/coremedia/iso/boxes/DataEntryUrlBox;
invoke-direct {v4}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V
invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-virtual {v15, v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v16, Lcom/coremedia/iso/boxes/SampleTableBox;
invoke-direct/range {v16 .. v16}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
move-result-object v2
move-object/from16 v0, v16
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_190
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_190
new-instance v2, Lcom/coremedia/iso/boxes/TimeToSampleBox;
invoke-direct {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V
move-object/from16 v0, v16
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
:cond_190
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_1a9
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_1a9
new-instance v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;-><init>()V
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->setEntries(Ljava/util/List;)V
move-object/from16 v0, v16
invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
:cond_1a9
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v2
if-eqz v2, :cond_1bf
array-length v3, v2
if-lez v3, :cond_1bf
new-instance v3, Lcom/coremedia/iso/boxes/SyncSampleBox;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V
move-object/from16 v0, v16
invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
:cond_1bf
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_1e0
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_1e0
new-instance v2, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;-><init>()V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->setEntries(Ljava/util/List;)V
move-object/from16 v0, v16
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
:cond_1e0
new-instance v17, Ljava/util/HashMap;
invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V
invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1ed
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_207
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/googlecode/mp4parser/a/e;
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-virtual {v0, v2, v1}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)[I
move-result-object v4
move-object/from16 v0, v17
invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1ed
:cond_207
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
move-object v9, v2
check-cast v9, [I
new-instance v11, Lcom/coremedia/iso/boxes/SampleToChunkBox;
invoke-direct {v11}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-virtual {v11, v2}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V
const-wide/32 v2, -0x80000000
const/4 v4, 0x0
move v10, v4
:goto_224
array-length v4, v9
if-ge v10, v4, :cond_249
aget v4, v9, v10
int-to-long v4, v4
cmp-long v4, v2, v4
if-eqz v4, :cond_245
invoke-virtual {v11}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;
move-result-object v12
new-instance v2, Lcom/coremedia/iso/boxes/h;
add-int/lit8 v3, v10, 0x1
int-to-long v3, v3
aget v5, v9, v10
int-to-long v5, v5
const-wide/16 v7, 0x1
invoke-direct/range {v2 .. v8}, Lcom/coremedia/iso/boxes/h;-><init>(JJJ)V
invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
aget v2, v9, v10
int-to-long v2, v2
:cond_245
add-int/lit8 v4, v10, 0x1
move v10, v4
goto :goto_224
:cond_249
move-object/from16 v0, v16
invoke-virtual {v0, v11}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v3, Lcom/coremedia/iso/boxes/SampleSizeBox;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/googlecode/mp4parser/a/a/a;->d:Ljava/util/HashMap;
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, [J
invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V
move-object/from16 v0, v16
invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v18, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
invoke-direct/range {v18 .. v18}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/googlecode/mp4parser/a/a/a;->b:Ljava/util/Set;
move-object/from16 v0, v18
invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-wide/16 v2, 0x0
array-length v4, v9
new-array v0, v4, [J
move-object/from16 v19, v0
sget-object v4, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
move-result v4
if-eqz v4, :cond_2a2
sget-object v4, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Calculating chunk offsets for track_"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v6
invoke-virtual {v6}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
:cond_2a2
const/4 v4, 0x0
move v6, v4
:goto_2a4
array-length v4, v9
if-ge v6, v4, :cond_361
sget-object v4, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;
invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
move-result v4
if-eqz v4, :cond_2d7
sget-object v4, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
new-instance v5, Ljava/lang/StringBuilder;
const-string v7, "Calculating chunk offsets for track_"
invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v7
invoke-virtual {v7}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v7
invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
const-string v7, " chunk "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
:cond_2d7
invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v20
move-wide v4, v2
:goto_2e0
invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_35b
invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/googlecode/mp4parser/a/e;
sget-object v3, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;
invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
move-result v3
if-eqz v3, :cond_312
sget-object v3, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Adding offsets of track_"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v2}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v8
invoke-virtual {v8}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v10
invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
:cond_312
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, [I
const-wide/16 v7, 0x0
const/4 v10, 0x0
move v12, v10
move-wide v10, v7
:goto_31f
if-ge v12, v6, :cond_32a
aget v7, v3, v12
int-to-long v7, v7
add-long/2addr v7, v10
add-int/lit8 v10, v12, 0x1
move v12, v10
move-wide v10, v7
goto :goto_31f
:cond_32a
move-object/from16 v0, p1
if-ne v2, v0, :cond_330
aput-wide v4, v19, v6
:cond_330
invoke-static {v10, v11}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v7
move-wide/from16 v25, v4
move v5, v7
move-wide/from16 v7, v25
:goto_339
int-to-long v0, v5
move-wide/from16 v21, v0
aget v4, v3, v6
int-to-long v0, v4
move-wide/from16 v23, v0
add-long v23, v23, v10
cmp-long v4, v21, v23
if-gez v4, :cond_359
move-object/from16 v0, p0
iget-object v4, v0, Lcom/googlecode/mp4parser/a/a/a;->d:Ljava/util/HashMap;
invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, [J
aget-wide v21, v4, v5
add-long v7, v7, v21
add-int/lit8 v4, v5, 0x1
move v5, v4
goto :goto_339
:cond_359
move-wide v4, v7
goto :goto_2e0
:cond_35b
add-int/lit8 v2, v6, 0x1
move v6, v2
move-wide v2, v4
goto/16 :goto_2a4
:cond_361
invoke-virtual/range {v18 .. v19}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V
move-object/from16 v0, v16
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-virtual/range {v15 .. v16}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-virtual {v14, v15}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/a;)V
return-object v13
.end method
.method private static c(Lcom/googlecode/mp4parser/a/c;)J
.registers 7
invoke-virtual {p0}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v0
invoke-virtual {p0}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v4
invoke-static {v4, v5, v1, v2}, Lcom/googlecode/mp4parser/a/a/a;->a(JJ)J
move-result-wide v0
move-wide v1, v0
goto :goto_1f
:cond_39
return-wide v1
.end method
.method public final a(Lcom/googlecode/mp4parser/a/c;)Lcom/coremedia/iso/IsoFile;
.registers 11
const/4 v3, 0x0
sget-object v0, Lcom/googlecode/mp4parser/a/a/a;->f:Ljava/util/logging/Logger;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Creating movie "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4f
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;
move-result-object v5
invoke-direct {p0, v0, v5}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;Ljava/util/List;)Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v1
new-array v6, v1, [J
move v2, v3
:goto_37
array-length v1, v6
if-ge v2, v1, :cond_4b
invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
int-to-long v7, v1
aput-wide v7, v6, v2
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_37
:cond_4b
invoke-direct {p0, v0, v6}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;[J)[J
goto :goto_1d
:cond_4f
new-instance v1, Lcom/coremedia/iso/IsoFile;
invoke-direct {v1}, Lcom/coremedia/iso/IsoFile;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
const-string v2, "isom"
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string v2, "iso2"
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string v2, "avc1"
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v2, Lcom/coremedia/iso/boxes/FileTypeBox;
const-string v4, "isom"
const-wide/16 v5, 0x0
invoke-direct {v2, v4, v5, v6, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V
invoke-virtual {v1, v2}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/a/a/a;->b(Lcom/googlecode/mp4parser/a/c;)Lcom/coremedia/iso/boxes/MovieBox;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/a;)V
new-instance v0, Lcom/googlecode/mp4parser/a/a/b;
invoke-direct {v0, p0, p1, v3}, Lcom/googlecode/mp4parser/a/a/b;-><init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;B)V
invoke-virtual {v1, v0}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/a;)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/a/b;->a()J
move-result-wide v4
iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->b:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_8d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a9
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->getChunkOffsets()[J
move-result-object v6
move v0, v3
:goto_9e
array-length v7, v6
if-ge v0, v7, :cond_8d
aget-wide v7, v6, v0
add-long/2addr v7, v4
aput-wide v7, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_9e
:cond_a9
return-object v1
.end method
.method final a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)[I
.registers 12
const-wide/16 v7, 0x1
iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->g:Lcom/googlecode/mp4parser/a/a/c;
invoke-interface {v0, p1, p2}, Lcom/googlecode/mp4parser/a/a/c;->a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)[J
move-result-object v3
array-length v0, v3
new-array v4, v0, [I
const/4 v0, 0x0
:goto_c
array-length v1, v3
if-ge v0, v1, :cond_31
aget-wide v1, v3, v0
sub-long v5, v1, v7
array-length v1, v3
add-int/lit8 v2, v0, 0x1
if-ne v1, v2, :cond_2b
invoke-interface {p1}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
int-to-long v1, v1
:goto_21
sub-long/2addr v1, v5
invoke-static {v1, v2}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v1
aput v1, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_2b
add-int/lit8 v1, v0, 0x1
aget-wide v1, v3, v1
sub-long/2addr v1, v7
goto :goto_21
:cond_31
sget-boolean v0, Lcom/googlecode/mp4parser/a/a/a;->e:Z
if-nez v0, :cond_52
iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/a;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
invoke-static {v4}, Lcom/googlecode/mp4parser/a/a/a;->a([I)J
move-result-wide v2
cmp-long v0, v0, v2
if-eqz v0, :cond_52
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "The number of samples and the sum of all chunk lengths must be equal"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_52
return-object v4
.end method