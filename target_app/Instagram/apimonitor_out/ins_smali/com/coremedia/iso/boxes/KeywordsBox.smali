.class public Lcom/coremedia/iso/boxes/KeywordsBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "KeywordsBox.java"
.field public static final TYPE:Ljava/lang/String; = "kywd"
.field private keywords:[Ljava/lang/String;
.field private language:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "kywd"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 6
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/KeywordsBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->k(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v1
new-array v0, v1, [Ljava/lang/String;
iput-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
const/4 v0, 0x0
:goto_12
if-ge v0, v1, :cond_22
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
iget-object v2, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_22
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/KeywordsBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
array-length v0, v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
array-length v2, v1
const/4 v0, 0x0
:goto_12
if-ge v0, v2, :cond_29
aget-object v3, v1, v0
invoke-static {v3}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v4
add-int/lit8 v4, v4, 0x1
invoke-static {p1, v4}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
invoke-static {v3}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v3
invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_29
return-void
.end method
.method protected getContentSize()J
.registers 8
const-wide/16 v1, 0x7
iget-object v3, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
array-length v4, v3
const/4 v0, 0x0
:goto_6
if-ge v0, v4, :cond_17
aget-object v5, v3, v0
invoke-static {v5}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I
move-result v5
add-int/lit8 v5, v5, 0x1
add-int/lit8 v5, v5, 0x1
int-to-long v5, v5
add-long/2addr v1, v5
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_17
return-wide v1
.end method
.method public getKeywords()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
return-object v0
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;
return-object v0
.end method
.method public setKeywords([Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
return-void
.end method
.method public setLanguage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v0, "KeywordsBox[language="
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/KeywordsBox;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v0, 0x0
:goto_13
iget-object v2, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_32
const-string v2, ";keyword"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "="
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_32
const-string v0, "]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method