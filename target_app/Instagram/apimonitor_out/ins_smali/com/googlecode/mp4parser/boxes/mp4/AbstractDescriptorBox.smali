.class public Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AbstractDescriptorBox.java"
.field private static log:Ljava/util/logging/Logger;
.field public data:Ljava/nio/ByteBuffer;
.field public descriptor:Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->log:Ljava/util/logging/Logger;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 6
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
:try_start_15
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
const/4 v0, -0x1
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/a/b;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->descriptor:Lcom/googlecode/mp4parser/boxes/mp4/a/b;
:goto_23
:try_end_23
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_24
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_23} :catch_2f
return-void
:catch_24
move-exception v0
sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->log:Ljava/util/logging/Logger;
sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
const-string v3, "Error parsing ObjectDescriptor"
invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_23
:catch_2f
move-exception v0
sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->log:Ljava/util/logging/Logger;
sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
const-string v3, "Error parsing ObjectDescriptor"
invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_23
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
add-int/lit8 v0, v0, 0x4
int-to-long v0, v0
return-wide v0
.end method
.method public getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->descriptor:Lcom/googlecode/mp4parser/boxes/mp4/a/b;
return-object v0
.end method
.method public getDescriptorAsString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->descriptor:Lcom/googlecode/mp4parser/boxes/mp4/a/b;
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public setData(Ljava/nio/ByteBuffer;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->data:Ljava/nio/ByteBuffer;
return-void
.end method