.class public abstract Lcom/b/a/a/a/a/b;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"
.field private static final a:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/b/a/a/a/a/c;
invoke-direct {v0}, Lcom/b/a/a/a/a/c;-><init>()V
sput-object v0, Lcom/b/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static final a([CII)[C
.registers 5
const/4 v1, 0x0
new-array v0, p2, [C
if-lez p1, :cond_8
invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_8
return-object v0
.end method
.method private static b(Ljava/lang/CharSequence;II)I
.registers 8
if-ge p1, p2, :cond_7f
add-int/lit8 v1, p1, 0x1
invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const v2, 0xd800
if-lt v0, v2, :cond_12
const v2, 0xdfff
if-le v0, v2, :cond_13
:cond_12
:goto_12
return v0
:cond_13
const v2, 0xdbff
if-gt v0, v2, :cond_54
if-ne v1, p2, :cond_1c
neg-int v0, v0
goto :goto_12
:cond_1c
invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z
move-result v3
if-eqz v3, :cond_2b
invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I
move-result v0
goto :goto_12
:cond_2b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Expected low surrogate but got char \'"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\' with value "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " at index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_54
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Unexpected low surrogate character \'"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\' with value "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " at index "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_7f
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "Index exceeds specified range"
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected a(Ljava/lang/CharSequence;II)I
.registers 6
:goto_0
if-ge p2, p3, :cond_19
invoke-static {p1, p2, p3}, Lcom/b/a/a/a/a/b;->b(Ljava/lang/CharSequence;II)I
move-result v0
if-ltz v0, :cond_19
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/b;->a(I)[C
move-result-object v1
if-nez v1, :cond_19
invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x2
:goto_15
add-int/2addr p2, v0
goto :goto_0
:cond_17
const/4 v0, 0x1
goto :goto_15
:cond_19
return p2
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x0
invoke-virtual {p0, p1, v1, v0}, Lcom/b/a/a/a/a/b;->a(Ljava/lang/CharSequence;II)I
move-result v1
if-ne v1, v0, :cond_c
:goto_b
return-object p1
:cond_c
invoke-virtual {p0, p1, v1}, Lcom/b/a/a/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;
move-result-object p1
goto :goto_b
.end method
.method protected final a(Ljava/lang/String;I)Ljava/lang/String;
.registers 13
const/4 v4, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
sget-object v0, Lcom/b/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, [C
move v3, v4
move-object v1, v0
move v0, v4
:goto_10
if-ge p2, v5, :cond_57
invoke-static {p1, p2, v5}, Lcom/b/a/a/a/a/b;->b(Ljava/lang/CharSequence;II)I
move-result v2
if-gez v2, :cond_20
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Trailing high surrogate at end of input"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
invoke-virtual {p0, v2}, Lcom/b/a/a/a/a/b;->a(I)[C
move-result-object v6
if-eqz v6, :cond_47
sub-int v7, p2, v3
add-int v8, v0, v7
array-length v9, v6
add-int/2addr v8, v9
array-length v9, v1
if-ge v9, v8, :cond_38
sub-int v9, v5, p2
add-int/2addr v8, v9
add-int/lit8 v8, v8, 0x20
invoke-static {v1, v0, v8}, Lcom/b/a/a/a/a/b;->a([CII)[C
move-result-object v1
:cond_38
if-lez v7, :cond_3e
invoke-virtual {p1, v3, p2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V
add-int/2addr v0, v7
:cond_3e
array-length v3, v6
if-lez v3, :cond_47
array-length v3, v6
invoke-static {v6, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v3, v6
add-int/2addr v0, v3
:cond_47
invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z
move-result v2
if-eqz v2, :cond_55
const/4 v2, 0x2
:goto_4e
add-int/2addr v2, p2
invoke-virtual {p0, p1, v2, v5}, Lcom/b/a/a/a/a/b;->a(Ljava/lang/CharSequence;II)I
move-result p2
move v3, v2
goto :goto_10
:cond_55
const/4 v2, 0x1
goto :goto_4e
:cond_57
sub-int v2, v5, v3
if-lez v2, :cond_67
add-int/2addr v2, v0
array-length v6, v1
if-ge v6, v2, :cond_63
invoke-static {v1, v0, v2}, Lcom/b/a/a/a/a/b;->a([CII)[C
move-result-object v1
:cond_63
invoke-virtual {p1, v3, v5, v1, v0}, Ljava/lang/String;->getChars(II[CI)V
move v0, v2
:cond_67
new-instance v2, Ljava/lang/String;
invoke-direct {v2, v1, v4, v0}, Ljava/lang/String;-><init>([CII)V
return-object v2
.end method
.method protected abstract a(I)[C
.end method