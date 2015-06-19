.class public abstract Lcom/google/gdata/util/common/base/UnicodeEscaper;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"
.implements Lcom/google/gdata/util/common/base/Escaper;
.field private static final DEST_PAD:I = 0x20
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/gdata/util/common/base/UnicodeEscaper$2;
invoke-direct {v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper$2;-><init>()V
sput-object v0, Lcom/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
.registers 9
if-ge p1, p2, :cond_87
add-int/lit8 v2, p1, 0x1
invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const v3, 0xd800
if-lt v0, v3, :cond_12
const v3, 0xdfff
if-le v0, v3, :cond_13
:cond_12
:goto_12
return v0
:cond_13
const v3, 0xdbff
if-gt v0, v3, :cond_58
if-ne v2, p2, :cond_1c
neg-int v0, v0
goto :goto_12
:cond_1c
invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v1
invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z
move-result v3
if-eqz v3, :cond_2b
invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I
move-result v0
goto :goto_12
:cond_2b
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Expected low surrogate but got char \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\' with value "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " at index "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_58
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Unexpected low surrogate character \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\' with value "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " at index "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
add-int/lit8 v5, v2, -0x1
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_87
new-instance v3, Ljava/lang/IndexOutOfBoundsException;
const-string v4, "Index exceeds specified range"
invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method private static final growBuffer([CII)[C
.registers 5
const/4 v1, 0x0
new-array v0, p2, [C
if-lez p1, :cond_8
invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_8
return-object v0
.end method
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.registers 3
new-instance v0, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;
invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/common/base/UnicodeEscaper$1;-><init>(Lcom/google/gdata/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V
return-object v0
.end method
.method public escape(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v2, 0x0
invoke-virtual {p0, p1, v2, v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I
move-result v1
if-ne v1, v0, :cond_c
:goto_b
return-object p1
:cond_c
invoke-virtual {p0, p1, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
move-result-object p1
goto :goto_b
.end method
.method protected abstract escape(I)[C
.end method
.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
.registers 16
const/4 v12, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
sget-object v10, Lcom/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;
invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, [C
const/4 v3, 0x0
const/4 v9, 0x0
:goto_f
if-ge p2, v5, :cond_57
invoke-static {p1, p2, v5}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I
move-result v1
if-gez v1, :cond_1f
new-instance v10, Ljava/lang/IllegalArgumentException;
const-string v11, "Trailing high surrogate at end of input"
invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v10
:cond_1f
invoke-virtual {p0, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C
move-result-object v7
if-eqz v7, :cond_47
sub-int v0, p2, v9
add-int v10, v3, v0
array-length v11, v7
add-int v8, v10, v11
array-length v10, v2
if-ge v10, v8, :cond_38
sub-int v10, v5, p2
add-int/2addr v10, v8
add-int/lit8 v4, v10, 0x20
invoke-static {v2, v3, v4}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C
move-result-object v2
:cond_38
if-lez v0, :cond_3e
invoke-virtual {p1, v9, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V
add-int/2addr v3, v0
:cond_3e
array-length v10, v7
if-lez v10, :cond_47
array-length v10, v7
invoke-static {v7, v12, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v10, v7
add-int/2addr v3, v10
:cond_47
invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z
move-result v10
if-eqz v10, :cond_55
const/4 v10, 0x2
:goto_4e
add-int v9, p2, v10
invoke-virtual {p0, p1, v9, v5}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I
move-result p2
goto :goto_f
:cond_55
const/4 v10, 0x1
goto :goto_4e
:cond_57
sub-int v0, v5, v9
if-lez v0, :cond_68
add-int v6, v3, v0
array-length v10, v2
if-ge v10, v6, :cond_64
invoke-static {v2, v3, v6}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C
move-result-object v2
:cond_64
invoke-virtual {p1, v9, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V
move v3, v6
:cond_68
new-instance v10, Ljava/lang/String;
invoke-direct {v10, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V
return-object v10
.end method
.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
.registers 7
move v1, p2
:goto_1
if-ge v1, p3, :cond_f
invoke-static {p1, v1, p3}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I
move-result v0
if-ltz v0, :cond_f
invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C
move-result-object v2
if-eqz v2, :cond_10
:cond_f
return v1
:cond_10
invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z
move-result v2
if-eqz v2, :cond_19
const/4 v2, 0x2
:goto_17
add-int/2addr v1, v2
goto :goto_1
:cond_19
const/4 v2, 0x1
goto :goto_17
.end method