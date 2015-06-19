.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;
.source "SourceFile"
.field public end:I
.field public start:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I
iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I
return-void
.end method
.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
.registers 6
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
const/4 v0, 0x0
:goto_6
array-length v2, p0
if-lt v0, v2, :cond_13
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/MessageSet;
invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_13
new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;
invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V
aget v3, p0, v0
iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I
add-int/lit8 v0, v0, 0x1
:goto_1e
array-length v3, p0
if-lt v0, v3, :cond_2f
:cond_21
add-int/lit8 v3, v0, -0x1
aget v3, p0, v3
iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I
invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, -0x1
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_2f
aget v3, p0, v0
add-int/lit8 v4, v0, -0x1
aget v4, p0, v4
add-int/lit8 v4, v4, 0x1
if-ne v3, v4, :cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_1e
.end method
.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
return v0
:cond_4
move v1, v0
:goto_5
array-length v2, p0
if-lt v0, v2, :cond_a
move v0, v1
goto :goto_3
:cond_a
aget-object v2, p0, v0
invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I
move-result v2
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_5
array-length v0, p0
if-nez v0, :cond_7
:cond_5
const/4 v0, 0x0
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
array-length v2, p0
:goto_e
aget-object v3, p0, v0
iget v3, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I
aget-object v4, p0, v0
iget v4, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I
if-le v4, v3, :cond_2e
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v3
const/16 v5, 0x3a
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
:goto_25
add-int/lit8 v0, v0, 0x1
if-lt v0, v2, :cond_32
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
:cond_2e
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
goto :goto_25
:cond_32
const/16 v3, 0x2c
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_e
.end method
.method public size()I
.registers 3
iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I
iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I
sub-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
return v0
.end method