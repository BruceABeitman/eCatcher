.class abstract Lcom/beetstra/jutf7/UTF7StyleCharset;
.super Ljava/nio/charset/Charset;
.source "UTF7StyleCharset.java"
.field private static final CONTAINED:Ljava/util/List;
.field  base64:Lcom/beetstra/jutf7/Base64Util;
.field final strict:Z
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "US-ASCII"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "ISO-8859-1"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "UTF-8"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "UTF-16"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "UTF-16LE"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "UTF-16BE"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/beetstra/jutf7/UTF7StyleCharset;->CONTAINED:Ljava/util/List;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
new-instance v0, Lcom/beetstra/jutf7/Base64Util;
invoke-direct {v0, p3}, Lcom/beetstra/jutf7/Base64Util;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->base64:Lcom/beetstra/jutf7/Base64Util;
iput-boolean p4, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->strict:Z
return-void
.end method
.method abstract canEncodeDirectly(C)Z
.end method
.method public contains(Ljava/nio/charset/Charset;)Z
.registers 4
sget-object v0, Lcom/beetstra/jutf7/UTF7StyleCharset;->CONTAINED:Ljava/util/List;
invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
.registers 4
new-instance v0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;
iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->base64:Lcom/beetstra/jutf7/Base64Util;
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->strict:Z
invoke-direct {v0, p0, v1, v2}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;-><init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
return-object v0
.end method
.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
.registers 4
new-instance v0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;
iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->base64:Lcom/beetstra/jutf7/Base64Util;
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->strict:Z
invoke-direct {v0, p0, v1, v2}, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;-><init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
return-object v0
.end method
.method abstract shift()B
.end method
.method abstract unshift()B
.end method