.class public final Lcom/ibm/icu/text/CanonicalIterator;
.super Ljava/lang/Object;
.source "CanonicalIterator.java"
.field private static PROGRESS:Z
.field private static final SET_WITH_NULL_STRING:Ljava/util/Set;
.field private static SKIP_ZEROS:Z
.field private transient buffer:Ljava/lang/StringBuffer;
.field private current:[I
.field private done:Z
.field private pieces:[[Ljava/lang/String;
.field private source:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
sput-boolean v0, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
const/4 v0, 0x1
sput-boolean v0, Lcom/ibm/icu/text/CanonicalIterator;->SKIP_ZEROS:Z
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/ibm/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;
sget-object v0, Lcom/ibm/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;
const-string v1, ""
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuffer;
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V
return-void
.end method
.method private extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
.registers 15
sget-boolean v7, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v7, :cond_36
sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, " extract: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ", "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_36
sget-object v7, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v7}, Lcom/ibm/icu/text/Normalizer;->normalize(ILcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
move-result-object v1
const/4 v5, 0x0
const/4 v3, 0x0
const/4 v7, 0x0
invoke-static {v1, v7}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v2
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v7
add-int/2addr v3, v7
const/4 v7, 0x0
invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->setLength(I)V
move v4, p3
:goto_4d
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v7
if-ge v4, v7, :cond_90
invoke-static {p2, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
if-ne v0, v2, :cond_a3
sget-boolean v7, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v7, :cond_7d
sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "  matches: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_7d
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v7
if-ne v3, v7, :cond_94
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v7
add-int/2addr v7, v4
invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v5, 0x1
:cond_90
if-nez v5, :cond_cb
const/4 v7, 0x0
:goto_93
return-object v7
:cond_94
invoke-static {v1, v3}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v2
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v7
add-int/2addr v3, v7
:goto_9d
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v7
add-int/2addr v4, v7
goto :goto_4d
:cond_a3
sget-boolean v7, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v7, :cond_c7
sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "  buffer: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_c7
invoke-static {p4, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_9d
:cond_cb
sget-boolean v7, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v7, :cond_d6
sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v8, "Matches"
invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_d6
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v7
if-nez v7, :cond_df
sget-object v7, Lcom/ibm/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;
goto :goto_93
:cond_df
invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v8
const/4 v9, 0x0
invoke-static {v7, v8, v9}, Lcom/ibm/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I
move-result v7
if-eqz v7, :cond_105
const/4 v7, 0x0
goto :goto_93
:cond_105
invoke-direct {p0, v6}, Lcom/ibm/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
move-result-object v7
goto :goto_93
.end method
.method private getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
.registers 13
new-instance v7, Ljava/util/HashSet;
invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
invoke-direct {p0, p1}, Lcom/ibm/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_82
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-interface {v5}, Ljava/util/Set;->clear()V
sget-boolean v8, Lcom/ibm/icu/text/CanonicalIterator;->SKIP_ZEROS:Z
invoke-static {v4, v8, v5}, Lcom/ibm/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2a
:cond_2a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_12
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
const/4 v8, 0x0
invoke-static {v6, p1, v8}, Lcom/ibm/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I
move-result v8
if-nez v8, :cond_61
sget-boolean v8, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v8, :cond_5d
sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "Adding Permutation: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-static {v6}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_5d
invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_2a
:cond_61
sget-boolean v8, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v8, :cond_2a
sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "-Skipping Permutation: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-static {v6}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_2a
:cond_82
invoke-interface {v7}, Ljava/util/Set;->size()I
move-result v8
new-array v1, v8, [Ljava/lang/String;
invoke-interface {v7, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
return-object v1
.end method
.method private getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
.registers 25
new-instance v16, Ljava/util/HashSet;
invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V
sget-boolean v20, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v20, :cond_25
sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "Adding: "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_25
move-object/from16 v0, v16
move-object/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
new-instance v19, Ljava/lang/StringBuffer;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V
const/4 v5, 0x0
const/16 v20, 0x2
move/from16 v0, v20
new-array v0, v0, [I
move-object v13, v0
const/4 v8, 0x0
:goto_3a
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v20
move v0, v8
move/from16 v1, v20
if-ge v0, v1, :cond_e8
move-object/from16 v0, p1
move v1, v8
invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v5
new-instance v17, Lcom/ibm/icu/impl/USerializedSet;
invoke-direct/range {v17 .. v17}, Lcom/ibm/icu/impl/USerializedSet;-><init>()V
move v0, v5
move-object/from16 v1, v17
invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->getCanonStartSet(ILcom/ibm/icu/impl/USerializedSet;)Z
move-result v20
if-nez v20, :cond_5f
:cond_58
invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v20
add-int v8, v8, v20
goto :goto_3a
:cond_5f
const/4 v11, 0x0
invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/impl/USerializedSet;->countRanges()I
move-result v14
const/4 v11, 0x0
:goto_65
if-ge v11, v14, :cond_58
move-object/from16 v0, v17
move v1, v11
move-object v2, v13
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/USerializedSet;->getRange(I[I)Z
const/16 v20, 0x1
aget v7, v13, v20
const/16 v20, 0x0
aget v6, v13, v20
:goto_76
if-gt v6, v7, :cond_e4
move-object/from16 v0, p0
move v1, v6
move-object/from16 v2, p1
move v3, v8
move-object/from16 v4, v19
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/CanonicalIterator;->extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
move-result-object v15
if-nez v15, :cond_89
:cond_86
add-int/lit8 v6, v6, 0x1
goto :goto_76
:cond_89
const/16 v20, 0x0
move-object/from16 v0, p1
move/from16 v1, v20
move v2, v8
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v12
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
move-object v1, v12
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_b0
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v20
if-eqz v20, :cond_86
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
new-instance v18, Ljava/lang/String;
move-object/from16 v0, v18
move-object v1, v12
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v16
move-object/from16 v1, v18
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_b0
:cond_e4
add-int/lit8 v11, v11, 0x1
goto/16 :goto_65
:cond_e8
return-object v16
.end method
.method public static permute(Ljava/lang/String;ZLjava/util/Set;)V
.registers 11
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
const/4 v7, 0x2
if-gt v6, v7, :cond_12
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->countCodePoint(Ljava/lang/String;)I
move-result v6
const/4 v7, 0x1
if-gt v6, v7, :cond_12
invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_11
return-void
:cond_12
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
const/4 v2, 0x0
:goto_18
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
if-ge v2, v6, :cond_11
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
if-eqz p1, :cond_32
if-eqz v2, :cond_32
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->getCombiningClass(I)I
move-result v6
if-nez v6, :cond_32
:cond_2c
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v6
add-int/2addr v2, v6
goto :goto_18
:cond_32
invoke-interface {v5}, Ljava/util/Set;->clear()V
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const/4 v7, 0x0
invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v7
add-int/2addr v7, v2
invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6, p1, v5}, Lcom/ibm/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->valueOf(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_5f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_2c
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_5f
.end method
.method public getSource()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
return-object v0
.end method
.method public next()Ljava/lang/String;
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
iget-boolean v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z
if-eqz v2, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuffer;
invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V
const/4 v0, 0x0
:goto_e
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_25
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuffer;
iget-object v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
aget-object v3, v3, v0
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
aget v4, v4, v0
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_25
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
array-length v2, v2
sub-int v0, v2, v6
:goto_30
if-gez v0, :cond_36
iput-boolean v6, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z
:cond_34
move-object v2, v1
goto :goto_7
:cond_36
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
aget v3, v2, v0
add-int/lit8 v3, v3, 0x1
aput v3, v2, v0
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
aget v2, v2, v0
iget-object v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
aget-object v3, v3, v0
array-length v3, v3
if-lt v2, v3, :cond_34
iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
aput v5, v2, v0
add-int/lit8 v0, v0, -0x1
goto :goto_30
.end method
.method public reset()V
.registers 4
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z
const/4 v0, 0x0
:goto_4
iget-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
array-length v1, v1
if-ge v0, v1, :cond_10
iget-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_10
return-void
.end method
.method public setSource(Ljava/lang/String;)V
.registers 10
const/4 v7, 0x0
const/4 v5, 0x1
sget-object v4, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;
invoke-static {p1, v4}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
iput-boolean v7, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_25
new-array v4, v5, [[Ljava/lang/String;
iput-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
new-array v4, v5, [I
iput-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
new-array v5, v5, [Ljava/lang/String;
const-string v6, ""
aput-object v6, v5, v7
aput-object v5, v4, v7
:cond_24
return-void
:cond_25
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v3, 0x0
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
invoke-static {v4, v5}, Lcom/ibm/icu/text/UTF16;->findOffsetFromCodePoint(Ljava/lang/String;I)I
move-result v1
:goto_31
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
if-ge v1, v4, :cond_55
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
invoke-static {v4, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/NormalizerImpl;->isCanonSafeStart(I)Z
move-result v4
if-eqz v4, :cond_4f
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move v3, v1
:cond_4f
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v4
add-int/2addr v1, v4
goto :goto_31
:cond_55
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;
invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v4
new-array v4, v4, [[Ljava/lang/String;
iput-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v4
new-array v4, v4, [I
iput-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I
const/4 v1, 0x0
:goto_6f
iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
array-length v4, v4
if-ge v1, v4, :cond_24
sget-boolean v4, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z
if-eqz v4, :cond_7f
sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v5, "SEGMENT"
invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_7f
iget-object v5, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-direct {p0, v4}, Lcom/ibm/icu/text/CanonicalIterator;->getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
aput-object v4, v5, v1
add-int/lit8 v1, v1, 0x1
goto :goto_6f
.end method