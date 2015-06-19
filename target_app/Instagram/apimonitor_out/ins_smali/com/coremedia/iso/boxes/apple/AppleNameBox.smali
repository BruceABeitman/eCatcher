.class public final Lcom/coremedia/iso/boxes/apple/AppleNameBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleNameBox.java"
.field public static final TYPE:Ljava/lang/String; = "name"
.field private name:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "name"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;
return-void
.end method
.method protected final getContent(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected final getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;
invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
array-length v0, v0
add-int/lit8 v0, v0, 0x4
int-to-long v0, v0
return-wide v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;
return-object v0
.end method
.method public final setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;
return-void
.end method