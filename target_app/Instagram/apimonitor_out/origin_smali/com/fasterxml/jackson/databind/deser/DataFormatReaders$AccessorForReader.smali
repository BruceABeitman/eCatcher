.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
.super Lcom/fasterxml/jackson/a/b/c;
.source "DataFormatReaders.java"


# instance fields
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;Ljava/io/InputStream;[B)V
    .registers 4

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/a/b/c;-><init>(Ljava/io/InputStream;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[B)V
    .registers 3

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/a/b/c;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[BII)V
    .registers 5

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->this$0:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    invoke-direct {p0, p2, p3, p4}, Lcom/fasterxml/jackson/a/b/c;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public createMatcher$edb45c1(Lcom/fasterxml/jackson/databind/ObjectReader;I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .registers 10

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_buffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I

    sub-int/2addr v4, v5

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;I)V

    return-object v0
.end method
