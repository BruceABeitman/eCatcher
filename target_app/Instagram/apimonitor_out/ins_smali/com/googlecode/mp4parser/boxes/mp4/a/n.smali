.class public Lcom/googlecode/mp4parser/boxes/mp4/a/n;
.super Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.source "SLConfigDescriptor.java"
.field  a:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;-><init>()V
return-void
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->a:I
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
check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/a/n;
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->a:I
iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->a:I
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->a:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "SLConfigDescriptor"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{predefined="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->a:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method