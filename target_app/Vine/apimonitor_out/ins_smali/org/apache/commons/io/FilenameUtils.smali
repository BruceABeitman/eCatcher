.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"
.field public static final EXTENSION_SEPARATOR:C = '.'
.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String; = null
.field private static final OTHER_SEPARATOR:C = '\u0000'
.field private static final SYSTEM_SEPARATOR:C = '\u0000'
.field private static final UNIX_SEPARATOR:C = '/'
.field private static final WINDOWS_SEPARATOR:C = '\\'
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x2e
invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;
sget-char v0, Ljava/io/File;->separatorChar:C
sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z
move-result v0
if-eqz v0, :cond_17
const/16 v0, 0x2f
sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C
:goto_16
return-void
:cond_17
const/16 v0, 0x5c
sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C
goto :goto_16
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v2
if-gez v2, :cond_8
:goto_7
:cond_7
return-object v3
:cond_8
if-lez v2, :cond_f
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_7
:cond_f
if-eqz p0, :cond_7
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_1c
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_7
:cond_1c
add-int/lit8 v3, v1, -0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v3
if-eqz v3, :cond_3e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_7
:cond_3e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x2f
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_7
.end method
.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Directory must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-nez p1, :cond_e
:goto_d
:cond_d
return v0
:cond_e
sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_d
sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-virtual {v0, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
goto :goto_d
.end method
.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
.registers 7
const/4 v3, 0x0
const/4 v4, 0x0
if-nez p0, :cond_6
move-object p0, v3
:goto_5
:cond_5
return-object p0
:cond_6
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v2
if-gez v2, :cond_e
move-object p0, v3
goto :goto_5
:cond_e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-lt v2, v3, :cond_1b
if-eqz p1, :cond_5
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
goto :goto_5
:cond_1b
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v1
if-gez v1, :cond_26
invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
goto :goto_5
:cond_26
if-eqz p1, :cond_34
const/4 v3, 0x1
:goto_29
add-int v0, v1, v3
if-nez v0, :cond_2f
add-int/lit8 v0, v0, 0x1
:cond_2f
invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
goto :goto_5
:cond_34
move v3, v4
goto :goto_29
.end method
.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
.registers 6
const/4 v3, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v3
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_3
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v1
add-int v0, v1, p1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_1a
if-ltz v1, :cond_1a
if-lt v2, v0, :cond_1d
:cond_1a
const-string v3, ""
goto :goto_3
:cond_1d
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
goto :goto_3
.end method
.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
.registers 14
if-nez p0, :cond_4
const/4 p0, 0x0
:goto_3
:cond_3
return-object p0
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
if-eqz v6, :cond_3
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v5
if-gez v5, :cond_12
const/4 p0, 0x0
goto :goto_3
:cond_12
add-int/lit8 v8, v6, 0x2
new-array v0, v8, [C
const/4 v8, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
const/4 v10, 0x0
invoke-virtual {p0, v8, v9, v0, v10}, Ljava/lang/String;->getChars(II[CI)V
sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne p1, v8, :cond_32
sget-char v4, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C
:goto_25
const/4 v1, 0x0
:goto_26
array-length v8, v0
if-ge v1, v8, :cond_35
aget-char v8, v0, v1
if-ne v8, v4, :cond_2f
aput-char p1, v0, v1
:cond_2f
add-int/lit8 v1, v1, 0x1
goto :goto_26
:cond_32
sget-char v4, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
goto :goto_25
:cond_35
const/4 v3, 0x1
add-int/lit8 v8, v6, -0x1
aget-char v8, v0, v8
if-eq v8, p1, :cond_42
add-int/lit8 v7, v6, 0x1
aput-char p1, v0, v6
const/4 v3, 0x0
move v6, v7
:cond_42
add-int/lit8 v1, v5, 0x1
:goto_44
if-ge v1, v6, :cond_5e
aget-char v8, v0, v1
if-ne v8, p1, :cond_5b
add-int/lit8 v8, v1, -0x1
aget-char v8, v0, v8
if-ne v8, p1, :cond_5b
add-int/lit8 v8, v1, -0x1
sub-int v9, v6, v1
invoke-static {v0, v1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v6, v6, -0x1
add-int/lit8 v1, v1, -0x1
:cond_5b
add-int/lit8 v1, v1, 0x1
goto :goto_44
:cond_5e
add-int/lit8 v1, v5, 0x1
:goto_60
if-ge v1, v6, :cond_8d
aget-char v8, v0, v1
if-ne v8, p1, :cond_8a
add-int/lit8 v8, v1, -0x1
aget-char v8, v0, v8
const/16 v9, 0x2e
if-ne v8, v9, :cond_8a
add-int/lit8 v8, v5, 0x1
if-eq v1, v8, :cond_78
add-int/lit8 v8, v1, -0x2
aget-char v8, v0, v8
if-ne v8, p1, :cond_8a
:cond_78
add-int/lit8 v8, v6, -0x1
if-ne v1, v8, :cond_7d
const/4 v3, 0x1
:cond_7d
add-int/lit8 v8, v1, 0x1
add-int/lit8 v9, v1, -0x1
sub-int v10, v6, v1
invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v6, v6, -0x2
add-int/lit8 v1, v1, -0x1
:cond_8a
add-int/lit8 v1, v1, 0x1
goto :goto_60
:cond_8d
add-int/lit8 v1, v5, 0x2
:goto_8f
if-ge v1, v6, :cond_e5
aget-char v8, v0, v1
if-ne v8, p1, :cond_d1
add-int/lit8 v8, v1, -0x1
aget-char v8, v0, v8
const/16 v9, 0x2e
if-ne v8, v9, :cond_d1
add-int/lit8 v8, v1, -0x2
aget-char v8, v0, v8
const/16 v9, 0x2e
if-ne v8, v9, :cond_d1
add-int/lit8 v8, v5, 0x2
if-eq v1, v8, :cond_af
add-int/lit8 v8, v1, -0x3
aget-char v8, v0, v8
if-ne v8, p1, :cond_d1
:cond_af
add-int/lit8 v8, v5, 0x2
if-ne v1, v8, :cond_b6
const/4 p0, 0x0
goto/16 :goto_3
:cond_b6
add-int/lit8 v8, v6, -0x1
if-ne v1, v8, :cond_bb
const/4 v3, 0x1
:cond_bb
add-int/lit8 v2, v1, -0x4
:goto_bd
if-lt v2, v5, :cond_d7
aget-char v8, v0, v2
if-ne v8, p1, :cond_d4
add-int/lit8 v8, v1, 0x1
add-int/lit8 v9, v2, 0x1
sub-int v10, v6, v1
invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sub-int v8, v1, v2
sub-int/2addr v6, v8
add-int/lit8 v1, v2, 0x1
:cond_d1
:goto_d1
add-int/lit8 v1, v1, 0x1
goto :goto_8f
:cond_d4
add-int/lit8 v2, v2, -0x1
goto :goto_bd
:cond_d7
add-int/lit8 v8, v1, 0x1
sub-int v9, v6, v1
invoke-static {v0, v8, v0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v8, v1, 0x1
sub-int/2addr v8, v5
sub-int/2addr v6, v8
add-int/lit8 v1, v5, 0x1
goto :goto_d1
:cond_e5
if-gtz v6, :cond_eb
const-string p0, ""
goto/16 :goto_3
:cond_eb
if-gt v6, v5, :cond_f5
new-instance p0, Ljava/lang/String;
const/4 v8, 0x0
invoke-direct {p0, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_3
:cond_f5
if-eqz v3, :cond_101
if-eqz p2, :cond_101
new-instance p0, Ljava/lang/String;
const/4 v8, 0x0
invoke-direct {p0, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_3
:cond_101
new-instance p0, Ljava/lang/String;
const/4 v8, 0x0
add-int/lit8 v9, v6, -0x1
invoke-direct {p0, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_3
.end method
.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method
.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
.registers 6
if-eqz p0, :cond_4
if-nez p1, :cond_c
:cond_4
if-nez p0, :cond_a
if-nez p1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
:cond_c
if-eqz p2, :cond_22
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
if-eqz p0, :cond_1a
if-nez p1, :cond_22
:cond_1a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Error normalizing one or both of the file names"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
if-nez p3, :cond_26
sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
:cond_26
invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
goto :goto_9
.end method
.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x1
sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method
.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x1
sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method
.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method
.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_e
const-string v1, ""
goto :goto_3
:cond_e
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
goto :goto_3
.end method
.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getName(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v0
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
goto :goto_3
.end method
.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v1
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-le v0, v1, :cond_24
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x2f
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_3
:cond_24
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
goto :goto_3
.end method
.method public static getPrefixLength(Ljava/lang/String;)I
.registers 12
const/16 v10, 0x2f
const/4 v6, 0x0
const/4 v5, 0x1
const/4 v8, 0x2
const/4 v7, -0x1
if-nez p0, :cond_a
move v5, v7
:goto_9
:cond_9
return v5
:cond_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_12
move v5, v6
goto :goto_9
:cond_12
invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v9, 0x3a
if-ne v0, v9, :cond_1c
move v5, v7
goto :goto_9
:cond_1c
if-ne v2, v5, :cond_2c
const/16 v7, 0x7e
if-ne v0, v7, :cond_24
move v5, v8
goto :goto_9
:cond_24
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v7
if-nez v7, :cond_9
move v5, v6
goto :goto_9
:cond_2c
const/16 v9, 0x7e
if-ne v0, v9, :cond_4e
invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I
move-result v3
const/16 v6, 0x5c
invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I
move-result v4
if-ne v3, v7, :cond_41
if-ne v4, v7, :cond_41
add-int/lit8 v5, v2, 0x1
goto :goto_9
:cond_41
if-ne v3, v7, :cond_44
move v3, v4
:cond_44
if-ne v4, v7, :cond_47
move v4, v3
:cond_47
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v5
add-int/lit8 v5, v5, 0x1
goto :goto_9
:cond_4e
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v9, 0x3a
if-ne v1, v9, :cond_74
invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C
move-result v0
const/16 v5, 0x41
if-lt v0, v5, :cond_72
const/16 v5, 0x5a
if-gt v0, v5, :cond_72
if-eq v2, v8, :cond_6e
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v5
if-nez v5, :cond_70
:cond_6e
move v5, v8
goto :goto_9
:cond_70
const/4 v5, 0x3
goto :goto_9
:cond_72
move v5, v7
goto :goto_9
:cond_74
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v9
if-eqz v9, :cond_a3
invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v9
if-eqz v9, :cond_a3
invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I
move-result v3
const/16 v5, 0x5c
invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I
move-result v4
if-ne v3, v7, :cond_8e
if-eq v4, v7, :cond_92
:cond_8e
if-eq v3, v8, :cond_92
if-ne v4, v8, :cond_95
:cond_92
move v5, v7
goto/16 :goto_9
:cond_95
if-ne v3, v7, :cond_98
move v3, v4
:cond_98
if-ne v4, v7, :cond_9b
move v4, v3
:cond_9b
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v5
add-int/lit8 v5, v5, 0x1
goto/16 :goto_9
:cond_a3
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v7
if-nez v7, :cond_9
move v5, v6
goto/16 :goto_9
.end method
.method public static indexOfExtension(Ljava/lang/String;)I
.registers 5
const/4 v2, -0x1
if-nez p0, :cond_4
:goto_3
return v2
:cond_4
const/16 v3, 0x2e
invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v1
if-le v1, v0, :cond_11
move v0, v2
:cond_11
move v2, v0
goto :goto_3
.end method
.method public static indexOfLastSeparator(Ljava/lang/String;)I
.registers 4
if-nez p0, :cond_4
const/4 v2, -0x1
:goto_3
return v2
:cond_4
const/16 v2, 0x2f
invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
const/16 v2, 0x5c
invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v2
goto :goto_3
.end method
.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
.registers 6
const/4 v1, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v1
:cond_4
if-eqz p1, :cond_c
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_15
:cond_c
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_3
const/4 v1, 0x1
goto :goto_3
:cond_15
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_3
.end method
.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
.registers 9
const/4 v3, 0x1
const/4 v4, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return v4
:cond_5
if-eqz p1, :cond_d
invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
move-result v5
if-eqz v5, :cond_18
:cond_d
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v5
const/4 v6, -0x1
if-ne v5, v6, :cond_16
:goto_14
move v4, v3
goto :goto_4
:cond_16
move v3, v4
goto :goto_14
:cond_18
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_20
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_4
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_20
move v4, v3
goto :goto_4
.end method
.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return v6
:cond_5
if-eqz p1, :cond_a
array-length v7, p1
if-nez v7, :cond_15
:cond_a
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v7
const/4 v8, -0x1
if-ne v7, v8, :cond_13
:goto_11
move v6, v5
goto :goto_4
:cond_13
move v5, v6
goto :goto_11
:cond_15
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
move-object v0, p1
array-length v4, v0
const/4 v3, 0x0
:goto_1c
if-ge v3, v4, :cond_4
aget-object v1, v0, v3
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_28
move v6, v5
goto :goto_4
:cond_28
add-int/lit8 v3, v3, 0x1
goto :goto_1c
.end method
.method private static isSeparator(C)Z
.registers 2
const/16 v0, 0x2f
if-eq p0, v0, :cond_8
const/16 v0, 0x5c
if-ne p0, v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method static isSystemWindows()Z
.registers 2
sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
const/16 v1, 0x5c
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
.registers 4
if-eqz p1, :cond_a
const/16 v0, 0x2f
:goto_4
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v1
return-object v1
:cond_a
const/16 v0, 0x5c
goto :goto_4
.end method
.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
.registers 4
if-eqz p1, :cond_a
const/16 v0, 0x2f
:goto_4
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v1
return-object v1
:cond_a
const/16 v0, 0x5c
goto :goto_4
.end method
.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 p0, 0x0
:cond_3
:goto_3
return-object p0
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_3
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
goto :goto_3
.end method
.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z
move-result v0
if-eqz v0, :cond_f
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
:cond_f
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v2, 0x5c
if-eqz p0, :cond_b
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_c
:goto_b
:cond_b
return-object p0
:cond_c
const/16 v0, 0x2f
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object p0
goto :goto_b
.end method
.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v2, 0x2f
if-eqz p0, :cond_b
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_c
:goto_b
:cond_b
return-object p0
:cond_c
const/16 v0, 0x5c
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object p0
goto :goto_b
.end method
.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
.registers 10
const/16 v8, 0x2a
const/4 v7, 0x0
const/4 v5, -0x1
const/16 v6, 0x3f
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v4
if-ne v4, v5, :cond_18
invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I
move-result v4
if-ne v4, v5, :cond_18
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
aput-object p0, v4, v7
:goto_17
return-object v4
:cond_18
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/4 v2, 0x0
:goto_27
array-length v4, v0
if-ge v2, v4, :cond_76
aget-char v4, v0, v2
if-eq v4, v6, :cond_32
aget-char v4, v0, v2
if-ne v4, v8, :cond_70
:cond_32
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-eqz v4, :cond_42
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V
:cond_42
aget-char v4, v0, v2
if-ne v4, v6, :cond_4e
const-string v4, "?"
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_4b
:cond_4b
add-int/lit8 v2, v2, 0x1
goto :goto_27
:cond_4e
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v4
if-nez v4, :cond_6a
if-lez v2, :cond_4b
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
const-string v5, "*"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_4b
:cond_6a
const-string v4, "*"
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4b
:cond_70
aget-char v4, v0, v2
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_4b
:cond_76
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-eqz v4, :cond_83
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_83
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Ljava/lang/String;
goto :goto_17
.end method
.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
.registers 3
sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method
.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
.registers 14
const/4 v7, 0x1
const/4 v8, 0x0
if-nez p0, :cond_7
if-nez p1, :cond_7
:goto_6
:cond_6
return v7
:cond_7
if-eqz p0, :cond_b
if-nez p1, :cond_d
:cond_b
move v7, v8
goto :goto_6
:cond_d
if-nez p2, :cond_11
sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
:cond_11
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
const/4 v0, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
new-instance v2, Ljava/util/Stack;
invoke-direct {v2}, Ljava/util/Stack;-><init>()V
:cond_1d
invoke-virtual {v2}, Ljava/util/Stack;->size()I
move-result v9
if-lez v9, :cond_2e
invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v1
check-cast v1, [I
aget v6, v1, v8
aget v4, v1, v7
const/4 v0, 0x1
:cond_2e
:goto_2e
array-length v9, v5
if-ge v6, v9, :cond_43
aget-object v9, v5, v6
const-string v10, "?"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_58
add-int/lit8 v4, v4, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
if-le v4, v9, :cond_54
:goto_43
:cond_43
array-length v9, v5
if-ne v6, v9, :cond_4c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
if-eq v4, v9, :cond_6
:cond_4c
invoke-virtual {v2}, Ljava/util/Stack;->size()I
move-result v9
if-gtz v9, :cond_1d
move v7, v8
goto :goto_6
:cond_54
const/4 v0, 0x0
:goto_55
:cond_55
add-int/lit8 v6, v6, 0x1
goto :goto_2e
:cond_58
aget-object v9, v5, v6
const-string v10, "*"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_6d
const/4 v0, 0x1
array-length v9, v5
add-int/lit8 v9, v9, -0x1
if-ne v6, v9, :cond_55
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
goto :goto_55
:cond_6d
if-eqz v0, :cond_95
aget-object v9, v5, v6
invoke-virtual {p2, p0, v4, v9}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
move-result v4
const/4 v9, -0x1
if-eq v4, v9, :cond_43
add-int/lit8 v9, v4, 0x1
aget-object v10, v5, v6
invoke-virtual {p2, p0, v9, v10}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
move-result v3
if-ltz v3, :cond_8c
const/4 v9, 0x2
new-array v9, v9, [I
aput v6, v9, v8
aput v3, v9, v7
invoke-virtual {v2, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
:cond_8c
aget-object v9, v5, v6
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
add-int/2addr v4, v9
const/4 v0, 0x0
goto :goto_55
:cond_95
aget-object v9, v5, v6
invoke-virtual {p2, p0, v4, v9}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
move-result v9
if-nez v9, :cond_8c
goto :goto_43
.end method
.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
.registers 3
sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method