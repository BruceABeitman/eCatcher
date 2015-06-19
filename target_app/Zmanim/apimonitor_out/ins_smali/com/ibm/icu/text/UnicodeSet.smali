.class public Lcom/ibm/icu/text/UnicodeSet;
.super Lcom/ibm/icu/text/UnicodeFilter;
.source "UnicodeSet.java"
.implements Lcom/ibm/icu/util/Freezable;
.field public static final ADD_CASE_MAPPINGS:I = 0x4
.field private static final ANY_ID:Ljava/lang/String; = "ANY"
.field private static final ASCII_ID:Ljava/lang/String; = "ASCII"
.field private static final ASSIGNED:Ljava/lang/String; = "Assigned"
.field public static final CASE:I = 0x2
.field public static final CASE_INSENSITIVE:I = 0x2
.field private static final GROW_EXTRA:I = 0x10
.field private static final HIGH:I = 0x110000
.field public static final IGNORE_SPACE:I = 0x1
.field private static INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet; = null
.field private static final LOW:I = 0x0
.field public static final MAX_VALUE:I = 0x10ffff
.field public static final MIN_VALUE:I = 0x0
.field static final NO_VERSION:Lcom/ibm/icu/util/VersionInfo; = null
.field private static final START_EXTRA:I = 0x10
.field private buffer:[I
.field private frozen:Z
.field private len:I
.field private list:[I
.field private pat:Ljava/lang/String;
.field private rangeList:[I
.field  strings:Ljava/util/TreeSet;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;
invoke-static {v1, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;
move-result-object v0
sput-object v0, Lcom/ibm/icu/text/UnicodeSet;->NO_VERSION:Lcom/ibm/icu/util/VersionInfo;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
const/16 v0, 0x11
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/high16 v2, 0x11
aput v2, v0, v1
return-void
.end method
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeFilter;-><init>()V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
const/4 v0, 0x1
invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)V
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)V
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
if-eqz p2, :cond_b
const/4 v0, 0x1
:goto_7
invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method private static _appendToPat(Ljava/lang/StringBuffer;IZ)V
.registers 5
const/16 v1, 0x5c
if-eqz p2, :cond_11
invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/StringBuffer;I)Z
move-result v0
if-eqz v0, :cond_11
:goto_10
return-void
:cond_11
sparse-switch p1, :sswitch_data_26
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_1d
:cond_1d
invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_10
:sswitch_21
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_1d
nop
:sswitch_data_26
.sparse-switch
0x24 -> :sswitch_21
0x26 -> :sswitch_21
0x2d -> :sswitch_21
0x3a -> :sswitch_21
0x5b -> :sswitch_21
0x5c -> :sswitch_21
0x5d -> :sswitch_21
0x5e -> :sswitch_21
0x7b -> :sswitch_21
0x7d -> :sswitch_21
.end sparse-switch
.end method
.method private static _appendToPat(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
.registers 5
const/4 v0, 0x0
:goto_1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_14
invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
invoke-static {p0, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v1
add-int/2addr v0, v1
goto :goto_1
:cond_14
return-void
.end method
.method private _toPattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
.registers 8
const/4 v4, 0x1
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
if-eqz v3, :cond_41
const/4 v0, 0x0
const/4 v2, 0x0
:goto_7
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_3f
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
invoke-static {v3, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v2, v3
if-eqz p2, :cond_33
invoke-static {v1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z
move-result v3
if-eqz v3, :cond_33
rem-int/lit8 v3, v0, 0x2
if-ne v3, v4, :cond_2e
invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v4
invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V
:cond_2e
invoke-static {p1, v1}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/StringBuffer;I)Z
const/4 v0, 0x0
goto :goto_7
:cond_33
invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
const/16 v3, 0x5c
if-ne v1, v3, :cond_3d
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_3d
const/4 v0, 0x0
goto :goto_7
:cond_3f
move-object v3, p1
:goto_40
return-object v3
:cond_41
invoke-virtual {p0, p1, p2, v4}, Lcom/ibm/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
move-result-object v3
goto :goto_40
.end method
.method private add([III)Lcom/ibm/icu/text/UnicodeSet;
.registers 15
iget v9, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/2addr v9, p2
invoke-direct {p0, v9}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v3, v2, 0x1
aget v0, v9, v2
add-int/lit8 v5, v4, 0x1
aget v1, p1, v4
move v7, v6
:goto_14
packed-switch p3, :pswitch_data_14c
move v6, v7
move v4, v5
move v2, v3
:goto_1a
move v7, v6
move v5, v4
move v3, v2
goto :goto_14
:pswitch_1e
if-ge v0, v1, :cond_4a
if-lez v7, :cond_3f
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
const/4 v10, 0x1
sub-int v10, v7, v10
aget v9, v9, v10
if-gt v0, v9, :cond_3f
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v9, v9, v3
iget-object v10, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, -0x1
aget v10, v10, v6
invoke-static {v9, v10}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I
move-result v0
:goto_39
add-int/lit8 v2, v3, 0x1
xor-int/lit8 p3, p3, 0x1
move v4, v5
goto :goto_1a
:cond_3f
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v0, v9, v3
goto :goto_39
:cond_4a
if-ge v1, v0, :cond_72
if-lez v7, :cond_69
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
const/4 v10, 0x1
sub-int v10, v7, v10
aget v9, v9, v10
if-gt v1, v9, :cond_69
aget v9, p1, v5
iget-object v10, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, -0x1
aget v10, v10, v6
invoke-static {v9, v10}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I
move-result v1
:goto_63
add-int/lit8 v4, v5, 0x1
xor-int/lit8 p3, p3, 0x2
move v2, v3
goto :goto_1a
:cond_69
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v1, v9, v7
aget v1, p1, v5
goto :goto_63
:cond_72
const/high16 v9, 0x11
if-ne v0, v9, :cond_8c
:cond_76
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
const/high16 v10, 0x11
aput v10, v9, v7
iput v6, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
iget-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
iput-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iput-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
const/4 v9, 0x0
iput-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
return-object p0
:cond_8c
if-lez v7, :cond_b1
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
const/4 v10, 0x1
sub-int v10, v7, v10
aget v9, v9, v10
if-gt v0, v9, :cond_b1
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v9, v9, v3
iget-object v10, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, -0x1
aget v10, v10, v6
invoke-static {v9, v10}, Lcom/ibm/icu/text/UnicodeSet;->max(II)I
move-result v0
:goto_a5
add-int/lit8 v2, v3, 0x1
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
goto/16 :goto_1a
:cond_b1
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v0, v9, v3
goto :goto_a5
:pswitch_bc
if-gt v1, v0, :cond_d8
const/high16 v9, 0x11
if-eq v0, v9, :cond_76
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
:goto_c8
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
goto/16 :goto_1a
:cond_d8
const/high16 v9, 0x11
if-eq v1, v9, :cond_76
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v1, v9, v7
goto :goto_c8
:pswitch_e3
if-ge v0, v1, :cond_f6
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
move v4, v5
goto/16 :goto_1a
:cond_f6
if-ge v1, v0, :cond_102
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
move v2, v3
goto/16 :goto_1a
:cond_102
const/high16 v9, 0x11
if-eq v0, v9, :cond_76
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
goto/16 :goto_1a
:pswitch_117
if-ge v1, v0, :cond_128
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v1, v9, v7
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v2, v3
goto/16 :goto_1a
:cond_128
if-ge v0, v1, :cond_136
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
move v6, v7
move v4, v5
goto/16 :goto_1a
:cond_136
const/high16 v9, 0x11
if-eq v0, v9, :cond_76
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
goto/16 :goto_1a
nop
:pswitch_data_14c
.packed-switch 0x0
:pswitch_1e
:pswitch_e3
:pswitch_117
:pswitch_bc
.end packed-switch
.end method
.method private static final addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuffer;)V
.registers 4
if-ltz p1, :cond_9
const/16 v0, 0x1f
if-le p1, v0, :cond_a
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_9
:goto_9
return-void
:cond_a
invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
const/4 v0, 0x0
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V
goto :goto_9
.end method
.method private final add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 10
const v3, 0x10ffff
const/4 v4, 0x0
const/4 v7, 0x1
if-ltz p1, :cond_9
if-le p1, v3, :cond_27
:cond_9
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Invalid code point U+"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x6
invoke-static {p1, v4}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_27
invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I
move-result v0
and-int/lit8 v2, v0, 0x1
if-eqz v2, :cond_30
:goto_2f
return-object p0
:cond_30
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v2, v2, v0
sub-int/2addr v2, v7
if-ne p1, v2, :cond_73
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aput p1, v2, v0
if-ne p1, v3, :cond_50
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v2, v2, 0x1
invoke-direct {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/high16 v4, 0x11
aput v4, v2, v3
:cond_50
if-lez v0, :cond_6f
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
sub-int v3, v0, v7
aget v2, v2, v3
if-ne p1, v2, :cond_6f
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v3, v0, 0x1
iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
sub-int v5, v0, v7
iget v6, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v6, v0
sub-int/2addr v6, v7
invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v3, 0x2
sub-int/2addr v2, v3
iput v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
:goto_6f
:cond_6f
const/4 v2, 0x0
iput-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
goto :goto_2f
:cond_73
if-lez v0, :cond_88
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
sub-int v3, v0, v7
aget v2, v2, v3
if-ne p1, v2, :cond_88
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
sub-int v3, v0, v7
aget v4, v2, v3
add-int/lit8 v4, v4, 0x1
aput v4, v2, v3
goto :goto_6f
:cond_88
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v2, v2, 0x2
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
array-length v3, v3
if-le v2, v3, :cond_bf
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v2, v2, 0x2
add-int/lit8 v2, v2, 0x10
new-array v1, v2, [I
if-eqz v0, :cond_a0
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_a0
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v3, v0, 0x2
iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v4, v0
invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
:goto_ac
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aput p1, v2, v0
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v3, v0, 0x1
add-int/lit8 v4, p1, 0x1
aput v4, v2, v3
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v2, v2, 0x2
iput v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
goto :goto_6f
:cond_bf
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v4, v0, 0x2
iget v5, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v5, v0
invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_ac
.end method
.method private add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 7
const v0, 0x10ffff
const/4 v3, 0x6
if-ltz p1, :cond_8
if-le p1, v0, :cond_25
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
if-ltz p2, :cond_29
if-le p2, v0, :cond_46
:cond_29
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p2, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_46
if-ge p1, p2, :cond_52
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I
move-result-object v0
const/4 v1, 0x2
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add([III)Lcom/ibm/icu/text/UnicodeSet;
:goto_51
:cond_51
return-object p0
:cond_52
if-ne p1, p2, :cond_51
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_51
.end method
.method private applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;
.registers 11
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
const/4 v6, -0x1
invoke-static {p2}, Lcom/ibm/icu/text/UnicodeSet;->getInclusions(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v2
invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v4
const/4 v3, 0x0
:goto_d
if-ge v3, v4, :cond_33
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v5
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v1
move v0, v5
:goto_18
if-gt v0, v1, :cond_30
invoke-interface {p1, v0}, Lcom/ibm/icu/text/UnicodeSet$Filter;->contains(I)Z
move-result v7
if-eqz v7, :cond_26
if-gez v6, :cond_23
move v6, v0
:goto_23
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_26
if-ltz v6, :cond_23
const/4 v7, 0x1
sub-int v7, v0, v7
invoke-direct {p0, v6, v7}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/4 v6, -0x1
goto :goto_23
:cond_30
add-int/lit8 v3, v3, 0x1
goto :goto_d
:cond_33
if-ltz v6, :cond_3b
const v7, 0x10ffff
invoke-direct {p0, v6, v7}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
:cond_3b
return-object p0
.end method
.method private applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
.registers 24
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v7
add-int/lit8 v5, v7, 0x5
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v6
if-le v5, v6, :cond_e
const/4 v5, 0x0
:goto_d
return-object v5
:cond_e
const/16 v17, 0x0
const/4 v15, 0x0
const/4 v14, 0x0
const-string v5, "[:"
const/4 v6, 0x0
const/4 v8, 0x2
move-object/from16 v0, p1
move v1, v7
move-object v2, v5
move v3, v6
move v4, v8
invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v5
if-eqz v5, :cond_51
const/16 v17, 0x1
add-int/lit8 v5, v7, 0x2
move-object/from16 v0, p1
move v1, v5
invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result v7
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v5
if-ge v7, v5, :cond_41
move-object/from16 v0, p1
move v1, v7
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x5e
if-ne v5, v6, :cond_41
add-int/lit8 v7, v7, 0x1
const/4 v14, 0x1
:goto_41
:cond_41
if-eqz v17, :cond_b0
const-string v5, ":]"
:goto_45
move-object/from16 v0, p1
move-object v1, v5
move v2, v7
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v12
if-gez v12, :cond_b3
const/4 v5, 0x0
goto :goto_d
:cond_51
const/4 v6, 0x1
const-string v8, "\\p"
const/4 v9, 0x0
const/4 v10, 0x2
move-object/from16 v5, p1
invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v5
if-nez v5, :cond_6e
const-string v5, "\\N"
const/4 v6, 0x0
const/4 v8, 0x2
move-object/from16 v0, p1
move v1, v7
move-object v2, v5
move v3, v6
move v4, v8
invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v5
if-eqz v5, :cond_ad
:cond_6e
add-int/lit8 v5, v7, 0x1
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v11
const/16 v5, 0x50
if-ne v11, v5, :cond_a4
const/4 v5, 0x1
move v14, v5
:goto_7d
const/16 v5, 0x4e
if-ne v11, v5, :cond_a7
const/4 v5, 0x1
move v15, v5
:goto_83
add-int/lit8 v5, v7, 0x2
move-object/from16 v0, p1
move v1, v5
invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result v7
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v5
if-eq v7, v5, :cond_a1
add-int/lit8 v16, v7, 0x1
move-object/from16 v0, p1
move v1, v7
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x7b
if-eq v5, v6, :cond_aa
move/from16 v7, v16
:cond_a1
const/4 v5, 0x0
goto/16 :goto_d
:cond_a4
const/4 v5, 0x0
move v14, v5
goto :goto_7d
:cond_a7
const/4 v5, 0x0
move v15, v5
goto :goto_83
:cond_aa
move/from16 v7, v16
goto :goto_41
:cond_ad
const/4 v5, 0x0
goto/16 :goto_d
:cond_b0
const-string v5, "}"
goto :goto_45
:cond_b3
const/16 v5, 0x3d
move-object/from16 v0, p1
move v1, v5
move v2, v7
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I
move-result v13
if-ltz v13, :cond_f3
if-ge v13, v12, :cond_f3
if-nez v15, :cond_f3
move-object/from16 v0, p1
move v1, v7
move v2, v13
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v18
add-int/lit8 v5, v13, 0x1
move-object/from16 v0, p1
move v1, v5
move v2, v12
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v19
:cond_d5
:goto_d5
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v19
move-object/from16 v3, p3
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
if-eqz v14, :cond_e5
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;
:cond_e5
if-eqz v17, :cond_104
const/4 v5, 0x2
:goto_e8
add-int/2addr v5, v12
move-object/from16 v0, p2
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v5, p0
goto/16 :goto_d
:cond_f3
move-object/from16 v0, p1
move v1, v7
move v2, v12
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v18
const-string v19, ""
if-eqz v15, :cond_d5
move-object/from16 v19, v18
const-string v18, "na"
goto :goto_d5
:cond_104
const/4 v5, 0x1
goto :goto_e8
.end method
.method private applyPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/text/SymbolTable;)V
.registers 8
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/text/ParsePosition;
invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V
invoke-direct {p0, v0, v1, p3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
if-nez v2, :cond_18
const-string v2, "Invalid property pattern"
invoke-static {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_18
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->jumpahead(I)V
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-void
.end method
.method private checkFrozen()V
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/text/UnicodeSet;->frozen:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify frozen object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method private containsAll(Ljava/lang/String;I)Z
.registers 8
const/4 v4, 0x1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-lt p2, v3, :cond_9
move v3, v4
:goto_8
return v3
:cond_9
invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v3
if-eqz v3, :cond_20
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v3, p2
invoke-direct {p0, p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_20
move v3, v4
goto :goto_8
:cond_20
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_26
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_45
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p1, v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_26
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
add-int/2addr v3, p2
invoke-direct {p0, p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_26
move v3, v4
goto :goto_8
:cond_45
const/4 v3, 0x0
goto :goto_8
.end method
.method private ensureBufferCapacity(I)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
array-length v0, v0
if-gt p1, v0, :cond_a
:goto_9
return-void
:cond_a
add-int/lit8 v0, p1, 0x10
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
goto :goto_9
.end method
.method private ensureCapacity(I)V
.registers 6
const/4 v3, 0x0
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
array-length v1, v1
if-gt p1, v1, :cond_7
:goto_6
return-void
:cond_7
add-int/lit8 v1, p1, 0x10
new-array v0, v1, [I
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
goto :goto_6
.end method
.method private final findCodePoint(I)I
.registers 9
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v3, v3, v4
if-ge p1, v3, :cond_b
move v3, v4
:goto_a
return v3
:cond_b
iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
if-lt v3, v6, :cond_1c
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v4, v6
aget v3, v3, v4
if-lt p1, v3, :cond_1c
iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v3, v5
goto :goto_a
:cond_1c
const/4 v2, 0x0
iget v3, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int v0, v3, v5
:goto_21
add-int v3, v2, v0
ushr-int/lit8 v1, v3, 0x1
if-ne v1, v2, :cond_29
move v3, v0
goto :goto_a
:cond_29
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v3, v3, v1
if-ge p1, v3, :cond_31
move v0, v1
goto :goto_21
:cond_31
move v2, v1
goto :goto_21
.end method
.method public static from(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 2
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public static fromAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 2
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized getInclusions(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 8
const-class v2, Lcom/ibm/icu/text/UnicodeSet;
monitor-enter v2
:try_start_3
sget-object v3, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;
if-nez v3, :cond_d
const/16 v3, 0x9
new-array v3, v3, [Lcom/ibm/icu/text/UnicodeSet;
sput-object v3, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;
:cond_d
sget-object v3, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;
aget-object v3, v3, p0
if-nez v3, :cond_48
new-instance v1, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
packed-switch p0, :pswitch_data_a2
:pswitch_1b
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "UnicodeSet.getInclusions(unknown src "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ")"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:try_end_3a
.catchall {:try_start_3 .. :try_end_3a} :catchall_3a
:catchall_3a
move-exception v3
monitor-exit v2
throw v3
:pswitch_3d
:try_start_3d
invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
:goto_44
sget-object v3, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;
aput-object v1, v3, p0
:cond_48
sget-object v3, Lcom/ibm/icu/text/UnicodeSet;->INCLUSIONS:[Lcom/ibm/icu/text/UnicodeSet;
aget-object v3, v3, p0
:try_end_4c
.catchall {:try_start_3d .. :try_end_4c} :catchall_3a
monitor-exit v2
return-object v3
:try_start_4e
:pswitch_4e
invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
goto :goto_44
:pswitch_56
invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
goto :goto_44
:pswitch_65
invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->uhst_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
goto :goto_44
:pswitch_6d
invoke-static {v1}, Lcom/ibm/icu/impl/NormalizerImpl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
:try_end_70
.catchall {:try_start_4e .. :try_end_70} :catchall_3a
goto :goto_44
:try_start_71
:pswitch_71
invoke-static {}, Lcom/ibm/icu/impl/UCaseProps;->getSingleton()Lcom/ibm/icu/impl/UCaseProps;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
:try_end_78
.catchall {:try_start_71 .. :try_end_78} :catchall_3a
.catch Ljava/io/IOException; {:try_start_71 .. :try_end_78} :catch_79
goto :goto_44
:catch_79
move-exception v3
move-object v0, v3
:try_start_7b
new-instance v3, Ljava/util/MissingResourceException;
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v4
const-string v5, ""
const-string v6, ""
invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v3
:try_end_89
.catchall {:try_start_7b .. :try_end_89} :catchall_3a
:pswitch_89
:try_start_89
invoke-static {}, Lcom/ibm/icu/impl/UBiDiProps;->getSingleton()Lcom/ibm/icu/impl/UBiDiProps;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UBiDiProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
:try_end_90
.catchall {:try_start_89 .. :try_end_90} :catchall_3a
.catch Ljava/io/IOException; {:try_start_89 .. :try_end_90} :catch_91
goto :goto_44
:catch_91
move-exception v3
move-object v0, v3
:try_start_93
new-instance v3, Ljava/util/MissingResourceException;
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v4
const-string v5, ""
const-string v6, ""
invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v3
:try_end_a1
.catchall {:try_start_93 .. :try_end_a1} :catchall_3a
nop
:pswitch_data_a2
.packed-switch 0x1
:pswitch_3d
:pswitch_4e
:pswitch_65
:pswitch_1b
:pswitch_6d
:pswitch_71
:pswitch_89
:pswitch_56
.end packed-switch
.end method
.method private static getSingleCP(Ljava/lang/String;)I
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, -0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge v1, v5, :cond_11
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Can\'t use zero-length strings in UnicodeSet"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_11
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x2
if-le v1, v2, :cond_1a
move v1, v3
:goto_19
return v1
:cond_1a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ne v1, v5, :cond_25
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v1
goto :goto_19
:cond_25
invoke-static {p0, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
const v1, 0xffff
if-le v0, v1, :cond_30
move v1, v0
goto :goto_19
:cond_30
move v1, v3
goto :goto_19
.end method
.method private static matchRest(Lcom/ibm/icu/text/Replaceable;IILjava/lang/String;)I
.registers 10
const/4 v5, 0x0
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v2
if-ge p1, p2, :cond_20
sub-int v1, p2, p1
if-le v1, v2, :cond_c
move v1, v2
:cond_c
const/4 v0, 0x1
:goto_d
if-ge v0, v1, :cond_3d
add-int v3, p1, v0
invoke-interface {p0, v3}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C
move-result v3
invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v3, v4, :cond_1d
move v3, v5
:goto_1c
return v3
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_20
sub-int v1, p1, p2
if-le v1, v2, :cond_25
move v1, v2
:cond_25
add-int/lit8 v2, v2, -0x1
const/4 v0, 0x1
:goto_28
if-ge v0, v1, :cond_3d
sub-int v3, p1, v0
invoke-interface {p0, v3}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C
move-result v3
sub-int v4, v2, v0
invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v3, v4, :cond_3a
move v3, v5
goto :goto_1c
:cond_3a
add-int/lit8 v0, v0, 0x1
goto :goto_28
:cond_3d
move v3, v1
goto :goto_1c
.end method
.method private static matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
.registers 9
invoke-interface {p2}, Ljava/lang/CharSequence;->length()I
move-result v2
const/4 v0, 0x0
move v1, p1
:goto_6
if-ge v0, v2, :cond_19
invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v3
invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
if-eq v3, v4, :cond_14
const/4 v5, -0x1
:goto_13
return v5
:cond_14
add-int/lit8 v0, v0, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_19
move v5, v0
goto :goto_13
.end method
.method private static final max(II)I
.registers 3
if-le p0, p1, :cond_4
move v0, p0
:goto_3
return v0
:cond_4
move v0, p1
goto :goto_3
.end method
.method private static mungeCharName(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v5, 0x20
const/4 v4, 0x1
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
:cond_9
:goto_9
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_35
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v2, v3
invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v3
if-eqz v3, :cond_31
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-eqz v3, :cond_9
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v4
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
if-eq v3, v5, :cond_9
const/16 v1, 0x20
:cond_31
invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_9
:cond_35
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-eqz v3, :cond_4e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v4
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
if-ne v3, v5, :cond_4e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v4
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V
:cond_4e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private range(II)[I
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I
if-nez v0, :cond_19
const/4 v0, 0x3
new-array v0, v0, [I
aput p1, v0, v1
add-int/lit8 v1, p2, 0x1
aput v1, v0, v2
const/4 v1, 0x2
const/high16 v2, 0x11
aput v2, v0, v1
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I
:goto_16
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I
return-object v0
:cond_19
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I
aput p1, v0, v1
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I
add-int/lit8 v1, p2, 0x1
aput v1, v0, v2
goto :goto_16
.end method
.method public static resemblesPattern(Ljava/lang/String;I)Z
.registers 4
add-int/lit8 v0, p1, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_10
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x5b
if-eq v0, v1, :cond_16
:cond_10
invoke-static {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->resemblesPropertyPattern(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method private static resemblesPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;I)Z
.registers 10
const/16 v7, 0x5b
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v3, 0x0
and-int/lit8 p1, p1, -0x3
const/4 v4, 0x0
invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v0
if-eq v0, v7, :cond_16
const/16 v4, 0x5c
if-ne v0, v4, :cond_23
:cond_16
and-int/lit8 v4, p1, -0x5
invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v1
if-ne v0, v7, :cond_29
const/16 v4, 0x3a
if-ne v1, v4, :cond_27
move v3, v6
:goto_23
:cond_23
invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V
return v3
:cond_27
move v3, v5
goto :goto_23
:cond_29
const/16 v4, 0x4e
if-eq v1, v4, :cond_35
const/16 v4, 0x70
if-eq v1, v4, :cond_35
const/16 v4, 0x50
if-ne v1, v4, :cond_37
:cond_35
move v3, v6
goto :goto_23
:cond_37
move v3, v5
goto :goto_23
.end method
.method private static resemblesPropertyPattern(Ljava/lang/String;I)Z
.registers 8
const/4 v1, 0x1
const/4 v5, 0x2
const/4 v4, 0x0
add-int/lit8 v0, p1, 0x5
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-le v0, v2, :cond_d
move v0, v4
:goto_c
return v0
:cond_d
const-string v0, "[:"
invoke-virtual {p0, p1, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v0
if-nez v0, :cond_27
const-string v3, "\\p"
move-object v0, p0
move v2, p1
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v0
if-nez v0, :cond_27
const-string v0, "\\N"
invoke-virtual {p0, p1, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v0
if-eqz v0, :cond_29
:cond_27
move v0, v1
goto :goto_c
:cond_29
move v0, v4
goto :goto_c
.end method
.method private retain([III)Lcom/ibm/icu/text/UnicodeSet;
.registers 15
const/high16 v10, 0x11
iget v9, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/2addr v9, p2
invoke-direct {p0, v9}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v3, v2, 0x1
aget v0, v9, v2
add-int/lit8 v5, v4, 0x1
aget v1, p1, v4
move v7, v6
:goto_16
packed-switch p3, :pswitch_data_100
move v6, v7
move v4, v5
move v2, v3
:goto_1c
move v7, v6
move v5, v4
move v3, v2
goto :goto_16
:pswitch_20
if-ge v0, v1, :cond_2d
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
move v6, v7
move v4, v5
goto :goto_1c
:cond_2d
if-ge v1, v0, :cond_38
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
move v2, v3
goto :goto_1c
:cond_38
if-ne v0, v10, :cond_4e
:cond_3a
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v10, v9, v7
iput v6, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
iget-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
iput-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iput-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
const/4 v9, 0x0
iput-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
return-object p0
:cond_4e
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
goto :goto_1c
:pswitch_63
if-ge v0, v1, :cond_75
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
move v4, v5
goto :goto_1c
:cond_75
if-ge v1, v0, :cond_85
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v1, v9, v7
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v2, v3
goto :goto_1c
:cond_85
if-eq v0, v10, :cond_3a
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
goto :goto_1c
:pswitch_9c
if-ge v0, v1, :cond_aa
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
move v6, v7
move v4, v5
goto/16 :goto_1c
:cond_aa
if-ge v1, v0, :cond_bb
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v1, v9, v7
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v2, v3
goto/16 :goto_1c
:cond_bb
if-eq v0, v10, :cond_3a
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
goto/16 :goto_1c
:pswitch_ce
if-ge v1, v0, :cond_da
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
move v2, v3
goto/16 :goto_1c
:cond_da
if-ge v0, v1, :cond_ed
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
move v4, v5
goto/16 :goto_1c
:cond_ed
if-eq v0, v10, :cond_3a
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
xor-int/lit8 p3, p3, 0x1
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
xor-int/lit8 p3, p3, 0x2
move v6, v7
goto/16 :goto_1c
:pswitch_data_100
.packed-switch 0x0
:pswitch_20
:pswitch_9c
:pswitch_ce
:pswitch_63
.end packed-switch
.end method
.method private static syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " at \""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/ibm/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x22
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private xor([III)Lcom/ibm/icu/text/UnicodeSet;
.registers 15
const/high16 v10, 0x11
iget v9, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/2addr v9, p2
invoke-direct {p0, v9}, Lcom/ibm/icu/text/UnicodeSet;->ensureBufferCapacity(I)V
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v3, v2, 0x1
aget v0, v9, v2
const/4 v9, 0x1
if-eq p3, v9, :cond_17
const/4 v9, 0x2
if-ne p3, v9, :cond_33
:cond_17
const/4 v1, 0x0
aget v9, p1, v4
if-nez v9, :cond_6b
add-int/lit8 v4, v4, 0x1
aget v1, p1, v4
move v7, v6
move v5, v4
:goto_22
if-ge v0, v1, :cond_39
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v0, v9, v7
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
move v7, v6
move v3, v2
goto :goto_22
:cond_33
add-int/lit8 v5, v4, 0x1
aget v1, p1, v4
move v7, v6
goto :goto_22
:cond_39
if-ge v1, v0, :cond_48
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v1, v9, v7
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
move v7, v6
move v5, v4
goto :goto_22
:cond_48
if-eq v0, v10, :cond_57
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v3, 0x1
aget v0, v9, v3
add-int/lit8 v4, v5, 0x1
aget v1, p1, v5
move v5, v4
move v3, v2
goto :goto_22
:cond_57
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
add-int/lit8 v6, v7, 0x1
aput v10, v9, v7
iput v6, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
iget-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
iput-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iput-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
const/4 v9, 0x0
iput-object v9, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
return-object p0
:cond_6b
move v7, v6
move v5, v4
goto :goto_22
.end method
.method public _generatePattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public _generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
.registers 13
const/16 v8, 0x2d
const/4 v7, 0x1
const/16 v5, 0x5b
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v0
if-le v0, v7, :cond_48
const/4 v5, 0x0
invoke-virtual {p0, v5}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v5
if-nez v5, :cond_48
sub-int v5, v0, v7
invoke-virtual {p0, v5}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v5
const v6, 0x10ffff
if-ne v5, v6, :cond_48
const/16 v5, 0x5e
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v2, 0x1
:goto_26
if-ge v2, v0, :cond_65
sub-int v5, v2, v7
invoke-virtual {p0, v5}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v5
add-int/lit8 v4, v5, 0x1
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v5
sub-int v1, v5, v7
invoke-static {p1, v4, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
if-eq v4, v1, :cond_45
add-int/lit8 v5, v4, 0x1
if-eq v5, v1, :cond_42
invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_42
invoke-static {p1, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
:cond_45
add-int/lit8 v2, v2, 0x1
goto :goto_26
:cond_48
const/4 v2, 0x0
:goto_49
if-ge v2, v0, :cond_65
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v4
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v1
invoke-static {p1, v4, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
if-eq v4, v1, :cond_62
add-int/lit8 v5, v4, 0x1
if-eq v5, v1, :cond_5f
invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_5f
invoke-static {p1, v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
:cond_62
add-int/lit8 v2, v2, 0x1
goto :goto_49
:cond_65
if-eqz p3, :cond_8f
iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v5}, Ljava/util/TreeSet;->size()I
move-result v5
if-lez v5, :cond_8f
iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_75
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_8f
const/16 v5, 0x7b
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-static {p1, p0, p2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
const/16 v5, 0x7d
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_75
:cond_8f
const/16 v5, 0x5d
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v5
return-object v5
.end method
.method public final add(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public add(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public final add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_12
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
:goto_11
return-object p0
:cond_12
invoke-direct {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_11
.end method
.method public addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add([III)Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final addAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
const/4 v1, 0x0
:goto_4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_17
invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-direct {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v2
add-int/2addr v1, v2
goto :goto_4
:cond_17
return-object p0
.end method
.method public addAll(Ljava/util/Collection;)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_7
:cond_19
return-void
.end method
.method public addAllTo(Ljava/util/Collection;)V
.registers 4
new-instance v0, Lcom/ibm/icu/text/UnicodeSetIterator;
invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V
:goto_5
invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->getString()Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_5
:cond_13
return-void
.end method
.method public addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 2
invoke-virtual {p1, p0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
const/16 v0, 0x2000
if-ne p1, v0, :cond_11
new-instance v0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;
invoke-direct {v0, p2}, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;
:goto_10
return-object p0
:cond_11
new-instance v0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;
invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V
invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getSource(I)I
move-result v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_10
.end method
.method public final applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
const/4 v0, 0x1
invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public applyPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
.registers 12
const/4 v5, 0x0
if-nez p2, :cond_61
const/4 v4, 0x1
move v2, v4
:goto_5
if-eqz v2, :cond_c
new-instance p2, Ljava/text/ParsePosition;
invoke-direct {p2, v5}, Ljava/text/ParsePosition;-><init>(I)V
:cond_c
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
new-instance v0, Lcom/ibm/icu/impl/RuleCharacterIterator;
invoke-direct {v0, p1, p3, p2}, Lcom/ibm/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
invoke-virtual {p0, v0, p3, v3, p4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/StringBuffer;I)V
invoke-virtual {v0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->inVariable()Z
move-result v4
if-eqz v4, :cond_24
const-string v4, "Extra chars in variable value"
invoke-static {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_24
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
if-eqz v2, :cond_63
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v1
and-int/lit8 v4, p4, 0x1
if-eqz v4, :cond_38
invoke-static {p1, v1}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result v1
:cond_38
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-eq v1, v4, :cond_63
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Parse of \""
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\" failed at "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_61
move v2, v5
goto :goto_5
:cond_63
return-object p0
.end method
.method public applyPattern(Ljava/lang/String;Z)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
if-eqz p2, :cond_c
const/4 v0, 0x1
:goto_7
invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;I)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_7
.end method
.method  applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/StringBuffer;I)V
.registers 32
const/16 v19, 0x3
and-int/lit8 v24, p4, 0x1
if-eqz v24, :cond_8
or-int/lit8 v19, v19, 0x4
:cond_8
new-instance v20, Ljava/lang/StringBuffer;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V
const/4 v7, 0x0
const/16 v23, 0x0
const/16 v21, 0x0
const/4 v6, 0x0
const/4 v12, 0x0
const/4 v11, 0x0
const/4 v15, 0x0
const/16 v18, 0x0
const/4 v10, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v24, v6
:goto_1e
const/16 v25, 0x2
move v0, v15
move/from16 v1, v25
if-eq v0, v1, :cond_97
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->atEnd()Z
move-result v25
if-nez v25, :cond_97
const/4 v8, 0x0
const/4 v13, 0x0
const/16 v16, 0x0
const/16 v22, 0x0
move-object/from16 v0, p1
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->resemblesPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;I)Z
move-result v25
if-eqz v25, :cond_ce
const/16 v22, 0x2
:goto_3d
if-eqz v22, :cond_1cb
const/16 v25, 0x1
move v0, v12
move/from16 v1, v25
if-ne v0, v1, :cond_66
if-eqz v18, :cond_51
const-string v25, "Char expected after operator"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_51
move-object/from16 v0, p0
move v1, v11
move v2, v11
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/16 v25, 0x0
move-object/from16 v0, v20
move v1, v11
move/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
const/16 v18, 0x0
move/from16 v12, v18
:cond_66
const/16 v25, 0x2d
move/from16 v0, v18
move/from16 v1, v25
if-eq v0, v1, :cond_76
const/16 v25, 0x26
move/from16 v0, v18
move/from16 v1, v25
if-ne v0, v1, :cond_7d
:cond_76
move-object/from16 v0, v20
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_7d
if-nez v16, :cond_88
if-nez v21, :cond_86
new-instance v21, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct/range {v21 .. v21}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
:cond_86
move-object/from16 v16, v21
:cond_88
packed-switch v22, :pswitch_data_418
:goto_8b
const/16 v23, 0x1
if-nez v15, :cond_1ab
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
const/4 v15, 0x2
:cond_97
const/16 v24, 0x2
move v0, v15
move/from16 v1, v24
if-eq v0, v1, :cond_a7
const-string v24, "Missing \']\'"
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_a7
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->skipIgnored(I)V
and-int/lit8 v24, p4, 0x2
if-eqz v24, :cond_bb
const/16 v24, 0x2
move-object/from16 v0, p0
move/from16 v1, v24
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->closeOver(I)Lcom/ibm/icu/text/UnicodeSet;
:cond_bb
if-eqz v10, :cond_c0
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;
:cond_c0
if-eqz v23, :cond_407
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v24
move-object/from16 v0, p3
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_cd
return-void
:cond_ce
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v8
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z
move-result v13
const/16 v24, 0x5b
move v0, v8
move/from16 v1, v24
if-ne v0, v1, :cond_157
if-nez v13, :cond_157
const/16 v24, 0x1
move v0, v15
move/from16 v1, v24
if-ne v0, v1, :cond_fe
move-object/from16 v0, p1
move-object v1, v6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V
const/16 v22, 0x1
move-object/from16 v24, v6
goto/16 :goto_3d
:cond_fe
const/4 v15, 0x1
const/16 v24, 0x5b
move-object/from16 v0, v20
move/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-object/from16 v0, p1
move-object v1, v6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v8
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z
move-result v13
const/16 v24, 0x5e
move v0, v8
move/from16 v1, v24
if-ne v0, v1, :cond_141
if-nez v13, :cond_141
const/4 v10, 0x1
const/16 v24, 0x5e
move-object/from16 v0, v20
move/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-object/from16 v0, p1
move-object v1, v6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v8
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z
move-result v13
:cond_141
const/16 v24, 0x2d
move v0, v8
move/from16 v1, v24
if-ne v0, v1, :cond_14d
const/4 v13, 0x1
move-object/from16 v24, v6
goto/16 :goto_3d
:cond_14d
move-object/from16 v0, p1
move-object v1, v6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V
move-object/from16 v24, v6
goto/16 :goto_1e
:cond_157
if-eqz p2, :cond_177
move-object/from16 v0, p2
move v1, v8
invoke-interface {v0, v1}, Lcom/ibm/icu/text/SymbolTable;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;
move-result-object v14
if-eqz v14, :cond_177
:try_start_162
move-object v0, v14
check-cast v0, Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v16, v0
:try_end_167
.catch Ljava/lang/ClassCastException; {:try_start_162 .. :try_end_167} :catch_16d
const/16 v22, 0x3
move-object/from16 v24, v6
goto/16 :goto_3d
:catch_16d
move-exception v9
const-string v24, "Syntax error"
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_177
move-object/from16 v24, v6
goto/16 :goto_3d
:pswitch_17b
move-object/from16 v0, v16
move-object/from16 v1, p1
move-object/from16 v2, p2
move-object/from16 v3, v20
move/from16 v4, p4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Lcom/ibm/icu/text/SymbolTable;Ljava/lang/StringBuffer;I)V
goto/16 :goto_8b
:pswitch_18a
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->skipIgnored(I)V
move-object/from16 v0, v16
move-object/from16 v1, p1
move-object/from16 v2, v20
move-object/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyPattern(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/text/SymbolTable;)V
goto/16 :goto_8b
:pswitch_19e
const/16 v25, 0x0
move-object/from16 v0, v16
move-object/from16 v1, v20
move/from16 v2, v25
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_toPattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
goto/16 :goto_8b
:cond_1ab
sparse-switch v18, :sswitch_data_422
:goto_1ae
const/16 v18, 0x0
const/4 v12, 0x2
goto/16 :goto_1e
:sswitch_1b3
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_1ae
:sswitch_1bb
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_1ae
:sswitch_1c3
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_1ae
:cond_1cb
if-nez v15, :cond_1d6
const-string v25, "Missing \'[\'"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_1d6
if-nez v13, :cond_1db
sparse-switch v8, :sswitch_data_430
:cond_1db
:goto_1db
packed-switch v12, :pswitch_data_44a
goto/16 :goto_1e
:pswitch_1e0
const/4 v12, 0x1
move v11, v8
goto/16 :goto_1e
:sswitch_1e4
const/16 v25, 0x1
move v0, v12
move/from16 v1, v25
if-ne v0, v1, :cond_1fc
move-object/from16 v0, p0
move v1, v11
move v2, v11
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/16 v25, 0x0
move-object/from16 v0, v20
move v1, v11
move/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
:cond_1fc
const/16 v25, 0x2d
move/from16 v0, v18
move/from16 v1, v25
if-ne v0, v1, :cond_220
move-object/from16 v0, p0
move/from16 v1, v18
move/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v0, v20
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_214
:cond_214
const/16 v25, 0x5d
move-object/from16 v0, v20
move/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v15, 0x2
goto/16 :goto_1e
:cond_220
const/16 v25, 0x26
move/from16 v0, v18
move/from16 v1, v25
if-ne v0, v1, :cond_214
const-string v25, "Trailing \'&\'"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
goto :goto_214
:sswitch_232
if-nez v18, :cond_264
if-eqz v12, :cond_23c
move v0, v8
int-to-char v0, v0
move/from16 v18, v0
goto/16 :goto_1e
:cond_23c
move-object/from16 v0, p0
move v1, v8
move v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v8
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z
move-result v13
const/16 v25, 0x5d
move v0, v8
move/from16 v1, v25
if-ne v0, v1, :cond_264
if-nez v13, :cond_264
const-string v25, "-]"
move-object/from16 v0, v20
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v15, 0x2
goto/16 :goto_1e
:cond_264
const-string v25, "\'-\' not after char or set"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:sswitch_26d
const/16 v25, 0x2
move v0, v12
move/from16 v1, v25
if-ne v0, v1, :cond_27c
if-nez v18, :cond_27c
move v0, v8
int-to-char v0, v0
move/from16 v18, v0
goto/16 :goto_1e
:cond_27c
const-string v25, "\'&\' not after set"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:sswitch_285
const-string v25, "\'^\' not after \'[\'"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:sswitch_28e
if-eqz v18, :cond_299
const-string v25, "Missing operand after operator"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_299
const/16 v25, 0x1
move v0, v12
move/from16 v1, v25
if-ne v0, v1, :cond_2b1
move-object/from16 v0, p0
move v1, v11
move v2, v11
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/16 v25, 0x0
move-object/from16 v0, v20
move v1, v11
move/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
:cond_2b1
const/4 v12, 0x0
if-nez v7, :cond_31d
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
:goto_2b9
const/16 v17, 0x0
:goto_2bb
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->atEnd()Z
move-result v25
if-nez v25, :cond_2d8
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v8
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z
move-result v13
const/16 v25, 0x7d
move v0, v8
move/from16 v1, v25
if-ne v0, v1, :cond_326
if-nez v13, :cond_326
const/16 v17, 0x1
:cond_2d8
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v25
const/16 v26, 0x1
move/from16 v0, v25
move/from16 v1, v26
if-lt v0, v1, :cond_2e6
if-nez v17, :cond_2ef
:cond_2e6
const-string v25, "Invalid multicharacter string"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_2ef
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v25
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
const/16 v25, 0x7b
move-object/from16 v0, v20
move/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v25
const/16 v26, 0x0
move-object/from16 v0, v20
move-object/from16 v1, v25
move/from16 v2, v26
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
const/16 v25, 0x7d
move-object/from16 v0, v20
move/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto/16 :goto_1e
:cond_31d
const/16 v25, 0x0
move-object v0, v7
move/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
goto :goto_2b9
:cond_326
invoke-static {v7, v8}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_2bb
:sswitch_32a
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->next(I)I
move-result v8
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped()Z
move-result v13
const/16 v24, 0x5d
move v0, v8
move/from16 v1, v24
if-ne v0, v1, :cond_35b
if-nez v13, :cond_35b
const/16 v24, 0x1
move/from16 v5, v24
:goto_34b
if-nez p2, :cond_360
if-nez v5, :cond_360
const/16 v8, 0x24
move-object/from16 v0, p1
move-object v1, v6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V
move-object/from16 v24, v6
goto/16 :goto_1db
:cond_35b
const/16 v24, 0x0
move/from16 v5, v24
goto :goto_34b
:cond_360
if-eqz v5, :cond_39c
if-nez v18, :cond_39c
const/16 v24, 0x1
move v0, v12
move/from16 v1, v24
if-ne v0, v1, :cond_37c
move-object/from16 v0, p0
move v1, v11
move v2, v11
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/16 v24, 0x0
move-object/from16 v0, v20
move v1, v11
move/from16 v2, v24
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
:cond_37c
const v24, 0xffff
move-object/from16 v0, p0
move/from16 v1, v24
invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;
const/16 v23, 0x1
const/16 v24, 0x24
move-object/from16 v0, v20
move/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v24
const/16 v25, 0x5d
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v15, 0x2
move-object/from16 v24, v6
goto/16 :goto_1e
:cond_39c
const-string v24, "Unquoted \'$\'"
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
move-object/from16 v24, v6
goto/16 :goto_1db
:pswitch_3a9
const/16 v25, 0x2d
move/from16 v0, v18
move/from16 v1, v25
if-ne v0, v1, :cond_3e4
if-lt v11, v8, :cond_3bc
const-string v25, "Invalid range"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_3bc
move-object/from16 v0, p0
move v1, v11
move v2, v8
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/16 v25, 0x0
move-object/from16 v0, v20
move v1, v11
move/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
move-object/from16 v0, v20
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/16 v25, 0x0
move-object/from16 v0, v20
move v1, v8
move/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
const/16 v18, 0x0
move/from16 v12, v18
goto/16 :goto_1e
:cond_3e4
move-object/from16 v0, p0
move v1, v11
move v2, v11
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(II)Lcom/ibm/icu/text/UnicodeSet;
const/16 v25, 0x0
move-object/from16 v0, v20
move v1, v11
move/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;IZ)V
move v11, v8
goto/16 :goto_1e
:pswitch_3f8
if-eqz v18, :cond_403
const-string v25, "Set expected after operator"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-static {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->syntaxError(Lcom/ibm/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
:cond_403
move v11, v8
const/4 v12, 0x1
goto/16 :goto_1e
:cond_407
const/16 v24, 0x0
const/16 v25, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p3
move/from16 v2, v24
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
goto/16 :goto_cd
:sswitch_data_430
.sparse-switch
0x24 -> :sswitch_32a
0x26 -> :sswitch_26d
0x2d -> :sswitch_232
0x5d -> :sswitch_1e4
0x5e -> :sswitch_285
0x7b -> :sswitch_28e
.end sparse-switch
:pswitch_data_418
.packed-switch 0x1
:pswitch_17b
:pswitch_18a
:pswitch_19e
.end packed-switch
:pswitch_data_44a
.packed-switch 0x0
:pswitch_1e0
:pswitch_3a9
:pswitch_3f8
.end packed-switch
:sswitch_data_422
.sparse-switch
0x0 -> :sswitch_1c3
0x26 -> :sswitch_1bb
0x2d -> :sswitch_1b3
.end sparse-switch
.end method
.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;)Lcom/ibm/icu/text/UnicodeSet;
.registers 23
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
const/4 v10, 0x0
const/4 v9, 0x0
if-eqz p3, :cond_20
move-object/from16 v0, p3
instance-of v0, v0, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;
move/from16 v16, v0
if-eqz v16, :cond_20
check-cast p3, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;
move-object/from16 v0, p3
move-object/from16 v1, p1
move-object/from16 v2, p2
move-object/from16 v3, p0
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
move-result v16
if-eqz v16, :cond_20
:goto_1f
:cond_1f
return-object p0
:cond_20
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
move-result v16
if-lez v16, :cond_11b
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/String;)I
move-result v11
const/16 v16, 0x1005
move v0, v11
move/from16 v1, v16
if-ne v0, v1, :cond_33
const/16 v11, 0x2000
:cond_33
if-ltz v11, :cond_3c
const/16 v16, 0x31
move v0, v11
move/from16 v1, v16
if-lt v0, v1, :cond_58
:cond_3c
const/16 v16, 0x1000
move v0, v11
move/from16 v1, v16
if-lt v0, v1, :cond_4a
const/16 v16, 0x1015
move v0, v11
move/from16 v1, v16
if-lt v0, v1, :cond_58
:cond_4a
const/16 v16, 0x2000
move v0, v11
move/from16 v1, v16
if-lt v0, v1, :cond_a4
const/16 v16, 0x2001
move v0, v11
move/from16 v1, v16
if-ge v0, v1, :cond_a4
:cond_58
:try_start_58
move v0, v11
move-object/from16 v1, p2
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/String;)I
:try_end_5e
.catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5e} :catch_7b
move-result v12
:goto_5f
:cond_5f
move-object/from16 v0, p0
move v1, v11
move v2, v12
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;
if-eqz v9, :cond_6b
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->complement()Lcom/ibm/icu/text/UnicodeSet;
:cond_6b
if-eqz v10, :cond_1f
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z
move-result v16
if-eqz v16, :cond_1f
new-instance v16, Ljava/lang/IllegalArgumentException;
const-string v17, "Invalid property value"
invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v16
:catch_7b
move-exception v6
const/16 v16, 0x1002
move v0, v11
move/from16 v1, v16
if-eq v0, v1, :cond_91
const/16 v16, 0x1010
move v0, v11
move/from16 v1, v16
if-eq v0, v1, :cond_91
const/16 v16, 0x1011
move v0, v11
move/from16 v1, v16
if-ne v0, v1, :cond_a3
:cond_91
invoke-static/range {p2 .. p2}, Lcom/ibm/icu/impl/Utility;->deleteRuleWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v12
if-ltz v12, :cond_a2
const/16 v16, 0xff
move v0, v12
move/from16 v1, v16
if-le v0, v1, :cond_5f
:cond_a2
throw v6
:cond_a3
throw v6
:cond_a4
sparse-switch v11, :sswitch_data_1ca
new-instance v16, Ljava/lang/IllegalArgumentException;
const-string v17, "Unsupported property"
invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v16
:sswitch_af
invoke-static/range {p2 .. p2}, Lcom/ibm/icu/impl/Utility;->deleteRuleWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v13
new-instance v16, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;
move-object/from16 v0, v16
move-wide v1, v13
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V
const/16 v17, 0x1
move-object/from16 v0, p0
move-object/from16 v1, v16
move/from16 v2, v17
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;
goto/16 :goto_1f
:sswitch_cc
invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const/16 v16, 0x4005
move v0, v11
move/from16 v1, v16
if-ne v0, v1, :cond_ec
invoke-static {v4}, Lcom/ibm/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I
move-result v16
move/from16 v5, v16
:goto_dd
const/16 v16, -0x1
move v0, v5
move/from16 v1, v16
if-ne v0, v1, :cond_f3
new-instance v16, Ljava/lang/IllegalArgumentException;
const-string v17, "Invalid character name"
invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v16
:cond_ec
invoke-static {v4}, Lcom/ibm/icu/lang/UCharacter;->getCharFromName1_0(Ljava/lang/String;)I
move-result v16
move/from16 v5, v16
goto :goto_dd
:cond_f3
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
move-object/from16 v0, p0
move v1, v5
invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add_unchecked(I)Lcom/ibm/icu/text/UnicodeSet;
goto/16 :goto_1f
:sswitch_fe
invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
move-result-object v15
new-instance v16, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;
move-object/from16 v0, v16
move-object v1, v15
invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;-><init>(Lcom/ibm/icu/util/VersionInfo;)V
const/16 v17, 0x2
move-object/from16 v0, p0
move-object/from16 v1, v16
move/from16 v2, v17
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->applyFilter(Lcom/ibm/icu/text/UnicodeSet$Filter;I)Lcom/ibm/icu/text/UnicodeSet;
goto/16 :goto_1f
:cond_11b
const/16 v11, 0x2000
:try_start_11d
move v0, v11
move-object/from16 v1, p1
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/String;)I
:try_end_123
.catch Ljava/lang/IllegalArgumentException; {:try_start_11d .. :try_end_123} :catch_126
move-result v12
goto/16 :goto_5f
:catch_126
move-exception v6
const/16 v11, 0x100a
:try_start_129
move v0, v11
move-object/from16 v1, p1
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/String;)I
:try_end_12f
.catch Ljava/lang/IllegalArgumentException; {:try_start_129 .. :try_end_12f} :catch_132
move-result v12
goto/16 :goto_5f
:catch_132
move-exception v7
:try_start_133
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/String;)I
:try_end_136
.catch Ljava/lang/IllegalArgumentException; {:try_start_133 .. :try_end_136} :catch_143
move-result v11
:goto_137
if-ltz v11, :cond_146
const/16 v16, 0x31
move v0, v11
move/from16 v1, v16
if-ge v0, v1, :cond_146
const/4 v12, 0x1
goto/16 :goto_5f
:catch_143
move-exception v8
const/4 v11, -0x1
goto :goto_137
:cond_146
const/16 v16, -0x1
move v0, v11
move/from16 v1, v16
if-ne v0, v1, :cond_1c1
const-string v16, "ANY"
move-object/from16 v0, v16
move-object/from16 v1, p1
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v16
if-nez v16, :cond_169
const/16 v16, 0x0
const v17, 0x10ffff
move-object/from16 v0, p0
move/from16 v1, v16
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;
goto/16 :goto_1f
:cond_169
const-string v16, "ASCII"
move-object/from16 v0, v16
move-object/from16 v1, p1
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v16
if-nez v16, :cond_184
const/16 v16, 0x0
const/16 v17, 0x7f
move-object/from16 v0, p0
move/from16 v1, v16
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;
goto/16 :goto_1f
:cond_184
const-string v16, "Assigned"
move-object/from16 v0, v16
move-object/from16 v1, p1
invoke-static {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v16
if-nez v16, :cond_196
const/16 v11, 0x2000
const/4 v12, 0x1
const/4 v9, 0x1
goto/16 :goto_5f
:cond_196
new-instance v16, Ljava/lang/IllegalArgumentException;
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "Invalid property alias: "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
const-string v18, "="
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v16
:cond_1c1
new-instance v16, Ljava/lang/IllegalArgumentException;
const-string v17, "Missing property value"
invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v16
nop
:sswitch_data_1ca
.sparse-switch
0x3000 -> :sswitch_af
0x4000 -> :sswitch_fe
0x4005 -> :sswitch_cc
0x400b -> :sswitch_cc
.end sparse-switch
.end method
.method public charAt(I)I
.registers 8
if-ltz p1, :cond_1f
iget v5, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
and-int/lit8 v3, v5, -0x2
const/4 v1, 0x0
move v2, v1
:goto_8
if-ge v2, v3, :cond_1f
iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v1, v2, 0x1
aget v4, v5, v2
iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v2, v1, 0x1
aget v5, v5, v1
sub-int v0, v5, v4
if-ge p1, v0, :cond_1d
add-int v5, v4, p1
:goto_1c
return v5
:cond_1d
sub-int/2addr p1, v0
goto :goto_8
:cond_1f
const/4 v5, -0x1
goto :goto_1c
.end method
.method public clear()Lcom/ibm/icu/text/UnicodeSet;
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
const/4 v1, 0x0
const/high16 v2, 0x11
aput v2, v0, v1
const/4 v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
return-object p0
.end method
.method public clone()Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V
iget-boolean v1, p0, Lcom/ibm/icu/text/UnicodeSet;->frozen:Z
iput-boolean v1, v0, Lcom/ibm/icu/text/UnicodeSet;->frozen:Z
return-object v0
.end method
.method public cloneAsThawed()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/UnicodeSet;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/ibm/icu/text/UnicodeSet;->frozen:Z
return-object v0
.end method
.method public closeOver(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 21
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
and-int/lit8 v5, p1, 0x6
if-eqz v5, :cond_4a
:try_start_7
invoke-static {}, Lcom/ibm/icu/impl/UCaseProps;->getSingleton()Lcom/ibm/icu/impl/UCaseProps;
:try_end_a
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_49
move-result-object v3
new-instance v12, Lcom/ibm/icu/text/UnicodeSet;
move-object v0, v12
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V
sget-object v7, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
and-int/lit8 v5, p1, 0x2
if-eqz v5, :cond_1e
iget-object v5, v12, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v5}, Ljava/util/TreeSet;->clear()V
:cond_1e
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v15
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
const/4 v5, 0x1
new-array v8, v5, [I
const/4 v13, 0x0
:goto_2b
if-ge v13, v15, :cond_85
move-object/from16 v0, p0
move v1, v13
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v17
move-object/from16 v0, p0
move v1, v13
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v11
and-int/lit8 v5, p1, 0x2
if-eqz v5, :cond_4b
move/from16 v4, v17
:goto_41
if-gt v4, v11, :cond_82
invoke-virtual {v3, v4, v12}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V
add-int/lit8 v4, v4, 0x1
goto :goto_41
:catch_49
move-exception v10
:goto_4a
:cond_4a
return-object p0
:cond_4b
move/from16 v4, v17
:goto_4d
if-gt v4, v11, :cond_82
const/4 v5, 0x0
invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I
move-result v16
move-object v0, v12
move/from16 v1, v16
move-object v2, v6
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuffer;)V
const/4 v5, 0x0
invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I
move-result v16
move-object v0, v12
move/from16 v1, v16
move-object v2, v6
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuffer;)V
const/4 v5, 0x0
invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I
move-result v16
move-object v0, v12
move/from16 v1, v16
move-object v2, v6
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuffer;)V
const/4 v5, 0x0
invoke-virtual {v3, v4, v6, v5}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuffer;I)I
move-result v16
move-object v0, v12
move/from16 v1, v16
move-object v2, v6
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->addCaseMapping(Lcom/ibm/icu/text/UnicodeSet;ILjava/lang/StringBuffer;)V
add-int/lit8 v4, v4, 0x1
goto :goto_4d
:cond_82
add-int/lit8 v13, v13, 0x1
goto :goto_2b
:cond_85
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object v5, v0
invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z
move-result v5
if-nez v5, :cond_106
and-int/lit8 v5, p1, 0x2
if-eqz v5, :cond_c2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object v5, v0
invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_9d
:cond_9d
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_106
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/String;
const/4 v5, 0x0
move-object/from16 v0, p1
move v1, v5
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v18
move-object v0, v3
move-object/from16 v1, v18
move-object v2, v12
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
move-result v5
if-nez v5, :cond_9d
move-object v0, v12
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_9d
:cond_c2
invoke-static {v7}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object v5, v0
invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_cf
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_106
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v18
check-cast v18, Ljava/lang/String;
move-object v0, v7
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v12, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-object v0, v7
move-object/from16 v1, v18
move-object v2, v9
invoke-static {v0, v1, v2}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v12, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-object v0, v7
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v12, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
const/4 v5, 0x0
move-object/from16 v0, v18
move v1, v5
invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v12, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_cf
:cond_106
move-object/from16 v0, p0
move-object v1, v12
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
goto/16 :goto_4a
.end method
.method public compact()Lcom/ibm/icu/text/UnicodeSet;
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
array-length v2, v2
if-eq v1, v2, :cond_19
iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
new-array v0, v1, [I
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
:cond_19
iput-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->rangeList:[I
iput-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->buffer:[I
return-object p0
.end method
.method public complement()Lcom/ibm/icu/text/UnicodeSet;
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v0, v0, v3
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v2, v4
invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
sub-int/2addr v0, v4
iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
:goto_1a
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
return-object p0
:cond_1e
iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->ensureCapacity(I)V
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aput v3, v0, v3
iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
goto :goto_1a
.end method
.method public final complement(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public complement(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 7
const v0, 0x10ffff
const/4 v3, 0x6
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
if-ltz p1, :cond_b
if-le p1, v0, :cond_28
:cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
if-ltz p2, :cond_2c
if-le p2, v0, :cond_49
:cond_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p2, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_49
if-gt p1, p2, :cond_54
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I
move-result-object v0
const/4 v1, 0x2
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->xor([III)Lcom/ibm/icu/text/UnicodeSet;
:cond_54
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
return-object p0
.end method
.method public final complement(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_20
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
:goto_16
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
:goto_19
return-object p0
:cond_1a
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_20
invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_19
.end method
.method public complementAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->xor([III)Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
const/4 v1, 0x5
iget-object v2, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/SortedSetRelation;->doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;
return-object p0
.end method
.method public final complementAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->fromAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->complementAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public contains(I)Z
.registers 6
if-ltz p1, :cond_7
const v1, 0x10ffff
if-le p1, v1, :cond_25
:cond_7
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid code point U+"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x6
invoke-static {p1, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_25
invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I
move-result v0
and-int/lit8 v1, v0, 0x1
if-eqz v1, :cond_2f
const/4 v1, 0x1
:goto_2e
return v1
:cond_2f
const/4 v1, 0x0
goto :goto_2e
.end method
.method public contains(II)Z
.registers 8
const v1, 0x10ffff
const/4 v4, 0x6
if-ltz p1, :cond_8
if-le p1, v1, :cond_25
:cond_8
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid code point U+"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p1, v4}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_25
if-ltz p2, :cond_29
if-le p2, v1, :cond_46
:cond_29
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid code point U+"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p2, v4}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_46
invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->findCodePoint(I)I
move-result v0
and-int/lit8 v1, v0, 0x1
if-eqz v1, :cond_56
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v1, v1, v0
if-ge p2, v1, :cond_56
const/4 v1, 0x1
:goto_55
return v1
:cond_56
const/4 v1, 0x0
goto :goto_55
.end method
.method public final contains(Ljava/lang/String;)Z
.registers 4
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_d
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
move-result v1
:goto_c
return v1
:cond_d
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v1
goto :goto_c
.end method
.method public containsAll(Lcom/ibm/icu/text/UnicodeSet;)Z
.registers 18
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
move-object v9, v0
const/4 v10, 0x1
const/4 v11, 0x1
const/4 v2, 0x0
const/4 v5, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/UnicodeSet;->len:I
move v14, v0
const/4 v15, 0x1
sub-int v1, v14, v15
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/text/UnicodeSet;->len:I
move v14, v0
const/4 v15, 0x1
sub-int v4, v14, v15
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
move v6, v5
move v3, v2
:goto_1f
if-eqz v10, :cond_76
if-lt v3, v1, :cond_3f
if-eqz v11, :cond_3b
if-lt v6, v4, :cond_3b
move v2, v3
:cond_28
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object v14, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object v15, v0
invoke-virtual {v14, v15}, Ljava/util/TreeSet;->containsAll(Ljava/util/Collection;)Z
move-result v14
if-nez v14, :cond_71
const/4 v14, 0x0
move v5, v6
:goto_3a
return v14
:cond_3b
const/4 v14, 0x0
move v5, v6
move v2, v3
goto :goto_3a
:cond_3f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
move-object v14, v0
add-int/lit8 v2, v3, 0x1
aget v12, v14, v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
move-object v14, v0
add-int/lit8 v3, v2, 0x1
aget v7, v14, v2
move v2, v3
:goto_52
if-eqz v11, :cond_74
if-ge v6, v4, :cond_28
add-int/lit8 v5, v6, 0x1
aget v13, v9, v6
add-int/lit8 v6, v5, 0x1
aget v8, v9, v5
move v5, v6
:goto_5f
if-lt v13, v7, :cond_66
const/4 v10, 0x1
const/4 v11, 0x0
move v6, v5
move v3, v2
goto :goto_1f
:cond_66
if-lt v13, v12, :cond_6f
if-gt v8, v7, :cond_6f
const/4 v10, 0x0
const/4 v11, 0x1
move v6, v5
move v3, v2
goto :goto_1f
:cond_6f
const/4 v14, 0x0
goto :goto_3a
:cond_71
const/4 v14, 0x1
move v5, v6
goto :goto_3a
:cond_74
move v5, v6
goto :goto_5f
:cond_76
move v2, v3
goto :goto_52
.end method
.method public containsAll(Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x0
const/4 v1, 0x0
:goto_2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_27
invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v2
if-nez v2, :cond_21
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v2}, Ljava/util/TreeSet;->size()I
move-result v2
if-nez v2, :cond_1c
move v2, v3
:goto_1b
return v2
:cond_1c
invoke-direct {p0, p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z
move-result v2
goto :goto_1b
:cond_21
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v2
add-int/2addr v1, v2
goto :goto_2
:cond_27
const/4 v2, 0x1
goto :goto_1b
.end method
.method public containsNone(II)Z
.registers 8
const v1, 0x10ffff
const/4 v4, 0x6
if-ltz p1, :cond_8
if-le p1, v1, :cond_25
:cond_8
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid code point U+"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p1, v4}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_25
if-ltz p2, :cond_29
if-le p2, v1, :cond_46
:cond_29
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid code point U+"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p2, v4}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_46
const/4 v0, -0x1
:cond_47
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v0, v0, 0x1
aget v1, v1, v0
if-ge p1, v1, :cond_47
and-int/lit8 v1, v0, 0x1
if-nez v1, :cond_5b
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v1, v1, v0
if-ge p2, v1, :cond_5b
const/4 v1, 0x1
:goto_5a
return v1
:cond_5b
const/4 v1, 0x0
goto :goto_5a
.end method
.method public containsNone(Lcom/ibm/icu/text/UnicodeSet;)Z
.registers 19
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
move-object v9, v0
const/4 v10, 0x1
const/4 v11, 0x1
const/4 v2, 0x0
const/4 v5, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/UnicodeSet;->len:I
move v14, v0
const/4 v15, 0x1
sub-int v1, v14, v15
move-object/from16 v0, p1
iget v0, v0, Lcom/ibm/icu/text/UnicodeSet;->len:I
move v14, v0
const/4 v15, 0x1
sub-int v4, v14, v15
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
move v6, v5
move v3, v2
:goto_1f
if-eqz v10, :cond_6e
if-lt v3, v1, :cond_39
move v2, v3
:cond_24
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object v14, v0
const/4 v15, 0x5
move-object/from16 v0, p1
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
move-object/from16 v16, v0
invoke-static/range {v14 .. v16}, Lcom/ibm/icu/impl/SortedSetRelation;->hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z
move-result v14
if-nez v14, :cond_69
const/4 v14, 0x0
move v5, v6
:goto_38
return v14
:cond_39
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
move-object v14, v0
add-int/lit8 v2, v3, 0x1
aget v12, v14, v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
move-object v14, v0
add-int/lit8 v3, v2, 0x1
aget v7, v14, v2
move v2, v3
:goto_4c
if-eqz v11, :cond_6c
if-ge v6, v4, :cond_24
add-int/lit8 v5, v6, 0x1
aget v13, v9, v6
add-int/lit8 v6, v5, 0x1
aget v8, v9, v5
move v5, v6
:goto_59
if-lt v13, v7, :cond_60
const/4 v10, 0x1
const/4 v11, 0x0
move v6, v5
move v3, v2
goto :goto_1f
:cond_60
if-lt v12, v8, :cond_67
const/4 v10, 0x0
const/4 v11, 0x1
move v6, v5
move v3, v2
goto :goto_1f
:cond_67
const/4 v14, 0x0
goto :goto_38
:cond_69
const/4 v14, 0x1
move v5, v6
goto :goto_38
:cond_6c
move v5, v6
goto :goto_59
:cond_6e
move v2, v3
goto :goto_4c
.end method
.method public containsNone(Ljava/lang/String;)Z
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v1, 0x0
:goto_3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-ge v1, v4, :cond_1b
invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v4
if-eqz v4, :cond_15
move v4, v5
:goto_14
return v4
:cond_15
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v4
add-int/2addr v1, v4
goto :goto_3
:cond_1b
iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v4}, Ljava/util/TreeSet;->size()I
move-result v4
if-nez v4, :cond_25
move v4, v6
goto :goto_14
:cond_25
iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_2b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_3f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-ltz v4, :cond_2b
move v4, v5
goto :goto_14
:cond_3f
move v4, v6
goto :goto_14
.end method
.method public final containsSome(II)Z
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(II)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final containsSome(Lcom/ibm/icu/text/UnicodeSet;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(Lcom/ibm/icu/text/UnicodeSet;)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final containsSome(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v6, 0x0
:try_start_1
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/UnicodeSet;
move-object v3, v0
iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
iget v5, v3, Lcom/ibm/icu/text/UnicodeSet;->len:I
if-eq v4, v5, :cond_d
move v4, v6
:goto_c
return v4
:cond_d
const/4 v2, 0x0
:goto_e
iget v4, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
if-ge v2, v4, :cond_21
iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v4, v4, v2
iget-object v5, v3, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v5, v5, v2
if-eq v4, v5, :cond_1e
move v4, v6
goto :goto_c
:cond_1e
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_21
iget-object v4, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
iget-object v5, v3, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v4, v5}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2d
move-result v4
if-nez v4, :cond_31
move v4, v6
goto :goto_c
:catch_2d
move-exception v4
move-object v1, v4
move v4, v6
goto :goto_c
:cond_31
const/4 v4, 0x1
goto :goto_c
.end method
.method public freeze()Ljava/lang/Object;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/UnicodeSet;->frozen:Z
return-object p0
.end method
.method public getRangeCount()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
div-int/lit8 v0, v0, 0x2
return v0
.end method
.method public getRangeEnd(I)I
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
mul-int/lit8 v1, p1, 0x2
add-int/lit8 v1, v1, 0x1
aget v0, v0, v1
const/4 v1, 0x1
sub-int/2addr v0, v1
return v0
.end method
.method public getRangeStart(I)I
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
mul-int/lit8 v1, p1, 0x2
aget v0, v0, v1
return v0
.end method
.method public getRegexEquivalent()Ljava/lang/String;
.registers 5
const/4 v3, 0x1
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v2}, Ljava/util/TreeSet;->size()I
move-result v2
if-nez v2, :cond_e
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->toString()Ljava/lang/String;
move-result-object v2
:goto_d
return-object v2
:cond_e
new-instance v1, Ljava/lang/StringBuffer;
const-string v2, "(?:"
invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p0, v1, v3, v2}, Lcom/ibm/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_1f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_34
const/16 v2, 0x7c
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-static {v1, p0, v3}, Lcom/ibm/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
goto :goto_1f
:cond_34
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_d
.end method
.method public hashCode()I
.registers 4
iget v1, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v0, 0x0
:goto_3
iget v2, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
if-ge v0, v2, :cond_13
const v2, 0xf4243
mul-int/2addr v1, v2
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
aget v2, v2, v0
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_13
return v1
.end method
.method public indexOf(I)I
.registers 10
if-ltz p1, :cond_7
const v5, 0x10ffff
if-le p1, v5, :cond_25
:cond_7
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Invalid code point U+"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/4 v7, 0x6
invoke-static {p1, v7}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_25
const/4 v0, 0x0
const/4 v3, 0x0
:goto_27
iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v1, v0, 0x1
aget v4, v5, v0
if-ge p1, v4, :cond_32
const/4 v5, -0x1
move v0, v1
:goto_31
return v5
:cond_32
iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
add-int/lit8 v0, v1, 0x1
aget v2, v5, v1
if-ge p1, v2, :cond_3e
add-int v5, v3, p1
sub-int/2addr v5, v4
goto :goto_31
:cond_3e
sub-int v5, v2, v4
add-int/2addr v3, v5
goto :goto_27
.end method
.method public isEmpty()Z
.registers 3
const/4 v1, 0x1
iget v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
if-ne v0, v1, :cond_f
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->size()I
move-result v0
if-nez v0, :cond_f
move v0, v1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public isFrozen()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/UnicodeSet;->frozen:Z
return v0
.end method
.method public matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
.registers 16
const/4 v8, 0x0
aget v8, p2, v8
if-ne v8, p3, :cond_16
const v8, 0xffff
invoke-virtual {p0, v8}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v8
if-eqz v8, :cond_14
if-eqz p4, :cond_12
const/4 v8, 0x1
:goto_11
return v8
:cond_12
const/4 v8, 0x2
goto :goto_11
:cond_14
const/4 v8, 0x0
goto :goto_11
:cond_16
iget-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v8}, Ljava/util/TreeSet;->size()I
move-result v8
if-eqz v8, :cond_8e
iget-object v8, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v4
const/4 v8, 0x0
aget v8, p2, v8
if-ge v8, p3, :cond_57
const/4 v8, 0x1
move v2, v8
:goto_2b
const/4 v8, 0x0
aget v8, p2, v8
invoke-interface {p1, v8}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C
move-result v1
const/4 v3, 0x0
:cond_33
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_4a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
if-eqz v2, :cond_5a
const/4 v8, 0x0
:goto_42
invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C
move-result v0
if-eqz v2, :cond_61
if-le v0, v1, :cond_61
:goto_4a
:cond_4a
if-eqz v3, :cond_8e
const/4 v8, 0x0
aget v9, p2, v8
if-eqz v2, :cond_8c
move v10, v3
:goto_52
add-int/2addr v9, v10
aput v9, p2, v8
const/4 v8, 0x2
goto :goto_11
:cond_57
const/4 v8, 0x0
move v2, v8
goto :goto_2b
:cond_5a
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v8
const/4 v9, 0x1
sub-int/2addr v8, v9
goto :goto_42
:cond_61
if-ne v0, v1, :cond_33
const/4 v8, 0x0
aget v8, p2, v8
invoke-static {p1, v8, p3, v7}, Lcom/ibm/icu/text/UnicodeSet;->matchRest(Lcom/ibm/icu/text/Replaceable;IILjava/lang/String;)I
move-result v5
if-eqz p4, :cond_7e
if-eqz v2, :cond_78
const/4 v8, 0x0
aget v8, p2, v8
sub-int v8, p3, v8
move v6, v8
:goto_74
if-ne v5, v6, :cond_7e
const/4 v8, 0x1
goto :goto_11
:cond_78
const/4 v8, 0x0
aget v8, p2, v8
sub-int/2addr v8, p3
move v6, v8
goto :goto_74
:cond_7e
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v8
if-ne v5, v8, :cond_33
if-le v5, v3, :cond_87
move v3, v5
:cond_87
if-eqz v2, :cond_33
if-ge v5, v3, :cond_33
goto :goto_4a
:cond_8c
neg-int v10, v3
goto :goto_52
:cond_8e
invoke-super {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeFilter;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
move-result v8
goto/16 :goto_11
.end method
.method public matchesAt(Ljava/lang/CharSequence;I)I
.registers 11
const/4 v4, -0x1
iget-object v7, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v7}, Ljava/util/TreeSet;->size()I
move-result v7
if-eqz v7, :cond_29
invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v1
const/4 v6, 0x0
iget-object v7, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_43
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C
move-result v2
if-lt v2, v1, :cond_14
if-le v2, v1, :cond_14
:cond_29
:goto_29
const/4 v7, 0x2
if-ge v4, v7, :cond_3a
invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v7
if-eqz v7, :cond_3a
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v4
:cond_3a
add-int v7, p2, v4
return v7
:cond_3d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
:cond_43
invoke-static {p1, p2, v6}, Lcom/ibm/icu/text/UnicodeSet;->matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
move-result v5
if-gt v4, v5, :cond_29
move v4, v5
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_3d
goto :goto_29
.end method
.method public matchesIndexValue(I)Z
.registers 12
const/4 v9, 0x0
const/4 v8, 0x1
const/4 v2, 0x0
:goto_3
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v6
if-ge v2, v6, :cond_2e
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v4
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v1
and-int/lit16 v6, v4, -0x100
and-int/lit16 v7, v1, -0x100
if-ne v6, v7, :cond_21
and-int/lit16 v6, v4, 0xff
if-gt v6, p1, :cond_2b
and-int/lit16 v6, v1, 0xff
if-gt p1, v6, :cond_2b
move v6, v8
:goto_20
return v6
:cond_21
and-int/lit16 v6, v4, 0xff
if-le v6, p1, :cond_29
and-int/lit16 v6, v1, 0xff
if-gt p1, v6, :cond_2b
:cond_29
move v6, v8
goto :goto_20
:cond_2b
add-int/lit8 v2, v2, 0x1
goto :goto_3
:cond_2e
iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v6}, Ljava/util/TreeSet;->size()I
move-result v6
if-eqz v6, :cond_52
iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_3c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_52
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
invoke-static {v5, v9}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
and-int/lit16 v6, v0, 0xff
if-ne v6, p1, :cond_3c
move v6, v8
goto :goto_20
:cond_52
move v6, v9
goto :goto_20
.end method
.method public final remove(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public remove(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 7
const v0, 0x10ffff
const/4 v3, 0x6
const/4 v1, 0x2
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
if-ltz p1, :cond_c
if-le p1, v0, :cond_29
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
if-ltz p2, :cond_2d
if-le p2, v0, :cond_4a
:cond_2d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p2, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4a
if-gt p1, p2, :cond_53
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I
move-result-object v0
invoke-direct {p0, v0, v1, v1}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;
:cond_53
return-object p0
.end method
.method public final remove(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 4
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_f
iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
:goto_e
return-object p0
:cond_f
invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_e
.end method
.method public removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v2, 0x2
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0, v1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final removeAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->fromAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public final removeAllStrings()Lcom/ibm/icu/text/UnicodeSet;
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->size()I
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
:cond_13
return-object p0
.end method
.method public final retain(I)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/UnicodeSet;->retain(II)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public retain(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 7
const v0, 0x10ffff
const/4 v3, 0x6
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
if-ltz p1, :cond_b
if-le p1, v0, :cond_28
:cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
if-ltz p2, :cond_2c
if-le p2, v0, :cond_49
:cond_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid code point U+"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p2, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_49
if-gt p1, p2, :cond_55
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->range(II)[I
move-result-object v0
const/4 v1, 0x2
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;
:goto_54
return-object p0
:cond_55
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
goto :goto_54
.end method
.method public final retain(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 6
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_22
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v2, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->size()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_16
:goto_15
return-object p0
:cond_16
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
iget-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
const/4 v2, 0x0
iput-object v2, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
goto :goto_15
:cond_22
invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/UnicodeSet;->retain(II)Lcom/ibm/icu/text/UnicodeSet;
goto :goto_15
.end method
.method public retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v1, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->retain([III)Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
iget-object v1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0, v1}, Ljava/util/TreeSet;->retainAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final retainAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->fromAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
move-result-object v0
return-object v0
.end method
.method public set(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->complement(II)Lcom/ibm/icu/text/UnicodeSet;
return-object p0
.end method
.method public set(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UnicodeSet;->checkFrozen()V
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->list:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
check-cast v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->list:[I
iget v0, p1, Lcom/ibm/icu/text/UnicodeSet;->len:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSet;->len:I
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->pat:Ljava/lang/String;
iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/TreeSet;
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
return-object p0
.end method
.method public size()I
.registers 6
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v0
const/4 v1, 0x0
:goto_6
if-ge v1, v0, :cond_17
invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v3
invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v4
sub-int/2addr v3, v4
add-int/lit8 v3, v3, 0x1
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_17
iget-object v3, p0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v3}, Ljava/util/TreeSet;->size()I
move-result v3
add-int/2addr v3, v2
return v3
.end method
.method public toPattern(Z)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->_toPattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public toString()Ljava/lang/String;
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method