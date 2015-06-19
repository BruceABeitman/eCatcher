.class final Lcom/ibm/icu/text/CollationElementIterator$Backup;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollationElementIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Backup"
.end annotation


# instance fields
.field protected m_FCDLimit_:I

.field protected m_FCDStart_:I

.field protected m_bufferOffset_:I

.field protected m_buffer_:Ljava/lang/StringBuffer;

.field protected m_isCodePointHiragana_:Z

.field protected m_offset_:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator$Backup;->m_buffer_:Ljava/lang/StringBuffer;

    return-void
.end method
