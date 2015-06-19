.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
.super Lcom/fasterxml/jackson/core/format/InputAccessor$Std;
.source "DataFormatReaders.java"
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;Ljava/io/InputStream;[B)V
.registers 4
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[B)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
invoke-direct {p0, p2}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([B)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[BII)V
.registers 5
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
invoke-direct {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([BII)V
return-void
.end method
.method public createMatcher(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.registers 10
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_in:Ljava/io/InputStream;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_buffer:[B
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I
iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedEnd:I
iget v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I
sub-int/2addr v4, v5
move-object v5, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)V
return-object v0
.end method