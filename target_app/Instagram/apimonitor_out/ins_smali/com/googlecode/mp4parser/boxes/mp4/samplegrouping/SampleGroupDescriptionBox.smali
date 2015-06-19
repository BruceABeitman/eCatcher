.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleGroupDescriptionBox.java"
.field public static final TYPE:Ljava/lang/String; = "sgpd"
.field private defaultLength:I
.field private descriptionLength:I
.field private groupEntries:Ljava/util/List;
.field private groupingType:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "sgpd"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
return-void
.end method
.method private parseGroupEntry(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.registers 4
const-string v0, "roll"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;
invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;-><init>()V
:goto_d
invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->a(Ljava/nio/ByteBuffer;)V
return-object v0
:cond_11
const-string v0, "rash"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;
invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;-><init>()V
goto :goto_d
:cond_1f
const-string v0, "seig"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;
invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;-><init>()V
goto :goto_d
:cond_2d
const-string v0, "rap "
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3b
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/i;
invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/i;-><init>()V
goto :goto_d
:cond_3b
const-string v0, "tele"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_49
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;
invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;-><init>()V
goto :goto_d
:cond_49
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;
invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;-><init>()V
goto :goto_d
.end method
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 9
const/4 v6, 0x1
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v0
if-eq v0, v6, :cond_12
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "SampleGroupDescriptionBox are only supported in version 1"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v0
if-ne v0, v6, :cond_28
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
:cond_28
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
:goto_2c
const-wide/16 v2, 0x1
sub-long v2, v0, v2
const-wide/16 v4, 0x0
cmp-long v0, v0, v4
if-lez v0, :cond_72
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v1
if-ne v1, v6, :cond_6a
iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
if-nez v1, :cond_4e
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->descriptionLength:I
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->descriptionLength:I
:cond_4e
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v1
add-int/2addr v1, v0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
invoke-direct {p0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->parseGroupEntry(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
move-result-object v4
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
move-wide v0, v2
goto :goto_2c
:cond_6a
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "This should be implemented"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_72
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
if-eqz v2, :cond_2d
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_31
:cond_2b
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
if-nez v2, :cond_2b
:cond_31
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
if-eqz v2, :cond_41
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_3f
move v0, v1
goto :goto_4
:cond_41
iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_3f
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
const/4 v4, 0x1
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v0
if-ne v0, v4, :cond_19
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:cond_19
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_29
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v2
if-ne v2, v4, :cond_4b
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
if-nez v2, :cond_4b
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->a()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I
move-result v2
int-to-long v2, v2
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:cond_4b
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->a()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
goto :goto_29
:cond_53
return-void
.end method
.method protected getContentSize()J
.registers 10
const-wide/16 v7, 0x4
const/4 v6, 0x1
const-wide/16 v0, 0x8
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v2
if-ne v2, v6, :cond_d
const-wide/16 v0, 0xc
:cond_d
add-long/2addr v0, v7
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_15
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getVersion()I
move-result v4
if-ne v4, v6, :cond_2c
iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
if-nez v4, :cond_2c
add-long/2addr v1, v7
:cond_2c
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->b()I
move-result v0
int-to-long v4, v0
add-long v0, v1, v4
move-wide v1, v0
goto :goto_15
:cond_35
return-wide v1
.end method
.method public getDefaultLength()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
return v0
.end method
.method public getGroupEntries()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
return-object v0
.end method
.method public getGroupingType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
if-eqz v2, :cond_1c
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
:cond_1c
add-int/2addr v0, v1
return v0
:cond_1e
move v0, v1
goto :goto_b
.end method
.method public setDefaultLength(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
return-void
.end method
.method public setGroupEntries(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
return-void
.end method
.method public setGroupingType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SampleGroupDescriptionBox{groupingType=\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupingType:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", defaultLength="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->defaultLength:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", groupEntries="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->groupEntries:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method