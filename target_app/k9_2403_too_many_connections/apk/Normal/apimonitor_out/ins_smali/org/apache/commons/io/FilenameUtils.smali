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
.registers 2
new-instance v0, Ljava/lang/Character;
const/16 v1, 0x2e
invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V
invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;
sget-char v0, Ljava/io/File;->separatorChar:C
sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z
move-result v0
if-eqz v0, :cond_1c
const/16 v0, 0x2f
sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C
:goto_1b
return-void
:cond_1c
const/16 v0, 0x5c
sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C
goto :goto_1b
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
const/4 v3, 0x1
sub-int v3, v1, v3
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v3
if-eqz v3, :cond_3f
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
:cond_3f
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
.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
.registers 7
const/4 v3, 0x0
const/4 v4, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return-object v3
:cond_5
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-lt v2, v3, :cond_1a
if-eqz p1, :cond_18
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_4
:cond_18
move-object v3, p0
goto :goto_4
:cond_1a
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v1
if-gez v1, :cond_25
invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
goto :goto_4
:cond_25
if-eqz p1, :cond_2f
const/4 v3, 0x1
:goto_28
add-int v0, v1, v3
invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
goto :goto_4
:cond_2f
move v3, v4
goto :goto_28
.end method
.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
.registers 5
const/4 v2, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v2
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_3
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_16
if-gez v0, :cond_19
:cond_16
const-string v2, ""
goto :goto_3
:cond_19
add-int v2, v0, p1
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
goto :goto_3
.end method
.method private static doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
.registers 11
if-nez p0, :cond_4
const/4 p0, 0x0
:goto_3
:cond_3
return-object p0
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_3
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I
move-result v3
if-gez v3, :cond_12
const/4 p0, 0x0
goto :goto_3
:cond_12
add-int/lit8 v0, v1, 0x2
new-array v0, v0, [C
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x0
invoke-virtual {p0, v2, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V
const/4 p0, 0x0
:goto_20
array-length v2, v0
if-ge p0, v2, :cond_30
aget-char v2, v0, p0
sget-char v4, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C
if-ne v2, v4, :cond_2d
sget-char v2, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
aput-char v2, v0, p0
:cond_2d
add-int/lit8 p0, p0, 0x1
goto :goto_20
:cond_30
const/4 p0, 0x1
const/4 v2, 0x1
sub-int v2, v1, v2
aget-char v2, v0, v2
sget-char v4, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-eq v2, v4, :cond_131
add-int/lit8 v2, v1, 0x1
sget-char p0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
aput-char p0, v0, v1
const/4 p0, 0x0
move v1, p0
:goto_42
add-int/lit8 p0, v3, 0x1
:goto_44
if-ge p0, v2, :cond_64
aget-char v4, v0, p0
sget-char v5, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v4, v5, :cond_61
const/4 v4, 0x1
sub-int v4, p0, v4
aget-char v4, v0, v4
sget-char v5, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v4, v5, :cond_61
const/4 v4, 0x1
sub-int v4, p0, v4
sub-int v5, v2, p0
invoke-static {v0, p0, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v2, v2, -0x1
add-int/lit8 p0, p0, -0x1
:cond_61
add-int/lit8 p0, p0, 0x1
goto :goto_44
:cond_64
add-int/lit8 p0, v3, 0x1
:goto_66
if-ge p0, v2, :cond_9b
aget-char v4, v0, p0
sget-char v5, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v4, v5, :cond_98
const/4 v4, 0x1
sub-int v4, p0, v4
aget-char v4, v0, v4
const/16 v5, 0x2e
if-ne v4, v5, :cond_98
add-int/lit8 v4, v3, 0x1
if-eq p0, v4, :cond_84
const/4 v4, 0x2
sub-int v4, p0, v4
aget-char v4, v0, v4
sget-char v5, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v4, v5, :cond_98
:cond_84
const/4 v4, 0x1
sub-int v4, v2, v4
if-ne p0, v4, :cond_8a
const/4 v1, 0x1
:cond_8a
add-int/lit8 v4, p0, 0x1
const/4 v5, 0x1
sub-int v5, p0, v5
sub-int v6, v2, p0
invoke-static {v0, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v2, v2, -0x2
add-int/lit8 p0, p0, -0x1
:cond_98
add-int/lit8 p0, p0, 0x1
goto :goto_66
:cond_9b
add-int/lit8 p0, v3, 0x2
move v4, v2
:goto_9e
if-ge p0, v4, :cond_106
aget-char v2, v0, p0
sget-char v5, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v2, v5, :cond_12f
const/4 v2, 0x1
sub-int v2, p0, v2
aget-char v2, v0, v2
const/16 v5, 0x2e
if-ne v2, v5, :cond_12f
const/4 v2, 0x2
sub-int v2, p0, v2
aget-char v2, v0, v2
const/16 v5, 0x2e
if-ne v2, v5, :cond_12f
add-int/lit8 v2, v3, 0x2
if-eq p0, v2, :cond_c5
const/4 v2, 0x3
sub-int v2, p0, v2
aget-char v2, v0, v2
sget-char v5, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v2, v5, :cond_12f
:cond_c5
add-int/lit8 v2, v3, 0x2
if-ne p0, v2, :cond_cc
const/4 p0, 0x0
goto/16 :goto_3
:cond_cc
const/4 v2, 0x1
sub-int v2, v4, v2
if-ne p0, v2, :cond_12d
const/4 v1, 0x1
move v2, v1
:goto_d3
const/4 v1, 0x4
sub-int v1, p0, v1
:goto_d6
if-lt v1, v3, :cond_f4
aget-char v5, v0, v1
sget-char v6, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C
if-ne v5, v6, :cond_f1
add-int/lit8 v5, p0, 0x1
add-int/lit8 v6, v1, 0x1
sub-int v7, v4, p0
invoke-static {v0, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sub-int/2addr p0, v1
sub-int/2addr v4, p0
add-int/lit8 p0, v1, 0x1
move v1, v2
move v2, v4
:goto_ed
add-int/lit8 p0, p0, 0x1
move v4, v2
goto :goto_9e
:cond_f1
add-int/lit8 v1, v1, -0x1
goto :goto_d6
:cond_f4
add-int/lit8 v1, p0, 0x1
sub-int v5, v4, p0
invoke-static {v0, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 p0, p0, 0x1
sub-int/2addr p0, v3
sub-int v1, v4, p0
add-int/lit8 p0, v3, 0x1
move v8, v2
move v2, v1
move v1, v8
goto :goto_ed
:cond_106
if-gtz v4, :cond_10c
const-string p0, ""
goto/16 :goto_3
:cond_10c
if-gt v4, v3, :cond_116
new-instance p0, Ljava/lang/String;
const/4 p1, 0x0
invoke-direct {p0, v0, p1, v4}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_3
:cond_116
if-eqz v1, :cond_122
if-eqz p1, :cond_122
new-instance p0, Ljava/lang/String;
const/4 p1, 0x0
invoke-direct {p0, v0, p1, v4}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_3
:cond_122
new-instance p0, Ljava/lang/String;
const/4 p1, 0x0
const/4 v1, 0x1
sub-int v1, v4, v1
invoke-direct {p0, v0, p1, v1}, Ljava/lang/String;-><init>([CII)V
goto/16 :goto_3
:cond_12d
move v2, v1
goto :goto_d3
:cond_12f
move v2, v4
goto :goto_ed
:cond_131
move v2, v1
move v1, p0
goto/16 :goto_42
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
if-nez p1, :cond_a
:cond_4
if-ne p0, p1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
:cond_a
if-eqz p2, :cond_20
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
if-eqz p0, :cond_18
if-nez p1, :cond_20
:cond_18
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Error normalizing one or both of the file names"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
if-nez p3, :cond_24
sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
:cond_24
invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
goto :goto_7
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
const/4 v9, 0x0
const/4 v8, 0x1
const/4 v7, 0x2
const/4 v6, -0x1
if-nez p0, :cond_a
move v5, v6
:goto_9
return v5
:cond_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_12
move v5, v9
goto :goto_9
:cond_12
invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v5, 0x3a
if-ne v0, v5, :cond_1c
move v5, v6
goto :goto_9
:cond_1c
if-ne v2, v8, :cond_2e
const/16 v5, 0x7e
if-ne v0, v5, :cond_24
move v5, v7
goto :goto_9
:cond_24
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v5
if-eqz v5, :cond_2c
move v5, v8
goto :goto_9
:cond_2c
move v5, v9
goto :goto_9
:cond_2e
const/16 v5, 0x7e
if-ne v0, v5, :cond_50
invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I
move-result v3
const/16 v5, 0x5c
invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I
move-result v4
if-ne v3, v6, :cond_43
if-ne v4, v6, :cond_43
add-int/lit8 v5, v2, 0x1
goto :goto_9
:cond_43
if-ne v3, v6, :cond_46
move v3, v4
:cond_46
if-ne v4, v6, :cond_49
move v4, v3
:cond_49
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v5
add-int/lit8 v5, v5, 0x1
goto :goto_9
:cond_50
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v5, 0x3a
if-ne v1, v5, :cond_76
invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C
move-result v0
const/16 v5, 0x41
if-lt v0, v5, :cond_74
const/16 v5, 0x5a
if-gt v0, v5, :cond_74
if-eq v2, v7, :cond_70
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v5
if-nez v5, :cond_72
:cond_70
move v5, v7
goto :goto_9
:cond_72
const/4 v5, 0x3
goto :goto_9
:cond_74
move v5, v6
goto :goto_9
:cond_76
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v5
if-eqz v5, :cond_a5
invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v5
if-eqz v5, :cond_a5
invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I
move-result v3
const/16 v5, 0x5c
invoke-virtual {p0, v5, v7}, Ljava/lang/String;->indexOf(II)I
move-result v4
if-ne v3, v6, :cond_90
if-eq v4, v6, :cond_94
:cond_90
if-eq v3, v7, :cond_94
if-ne v4, v7, :cond_97
:cond_94
move v5, v6
goto/16 :goto_9
:cond_97
if-ne v3, v6, :cond_9a
move v3, v4
:cond_9a
if-ne v4, v6, :cond_9d
move v4, v3
:cond_9d
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v5
add-int/lit8 v5, v5, 0x1
goto/16 :goto_9
:cond_a5
invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z
move-result v5
if-eqz v5, :cond_ae
move v5, v8
goto/16 :goto_9
:cond_ae
move v5, v9
goto/16 :goto_9
.end method
.method public static indexOfExtension(Ljava/lang/String;)I
.registers 5
const/4 v3, -0x1
if-nez p0, :cond_5
move v2, v3
:goto_4
return v2
:cond_5
const/16 v2, 0x2e
invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I
move-result v1
if-le v1, v0, :cond_13
move v2, v3
goto :goto_4
:cond_13
move v2, v0
goto :goto_4
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
const/4 v3, 0x0
if-nez p0, :cond_5
move v1, v3
:goto_4
return v1
:cond_5
if-eqz p1, :cond_d
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_18
:cond_d
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_16
const/4 v1, 0x1
goto :goto_4
:cond_16
move v1, v3
goto :goto_4
:cond_18
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_4
.end method
.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p0, :cond_6
move v2, v4
:goto_5
return v2
:cond_6
if-eqz p1, :cond_e
invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
move-result v2
if-eqz v2, :cond_19
:cond_e
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_17
move v2, v5
goto :goto_5
:cond_17
move v2, v4
goto :goto_5
:cond_19
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_21
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_33
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_21
move v2, v5
goto :goto_5
:cond_33
move v2, v4
goto :goto_5
.end method
.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p0, :cond_6
move v2, v4
:goto_5
return v2
:cond_6
if-eqz p1, :cond_b
array-length v2, p1
if-nez v2, :cond_16
:cond_b
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_14
move v2, v5
goto :goto_5
:cond_14
move v2, v4
goto :goto_5
:cond_16
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
:goto_1b
array-length v2, p1
if-ge v1, v2, :cond_2b
aget-object v2, p1, v1
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_28
move v2, v5
goto :goto_5
:cond_28
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_2b
move v2, v4
goto :goto_5
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
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_d
move-object v1, p0
goto :goto_3
:cond_d
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
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
if-ne v0, v1, :cond_d
:cond_b
move-object v0, p0
:goto_c
return-object v0
:cond_d
const/16 v0, 0x2f
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v2, 0x2f
if-eqz p0, :cond_b
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_d
:cond_b
move-object v0, p0
:goto_c
return-object v0
:cond_d
const/16 v0, 0x5c
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
.registers 11
const/16 v9, 0x3f
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v5, -0x1
const-string v6, "*"
const-string v4, "?"
invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-ne v4, v5, :cond_1c
const-string v4, "*"
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-ne v4, v5, :cond_1c
new-array v4, v8, [Ljava/lang/String;
aput-object p0, v4, v7
:goto_1b
return-object v4
:cond_1c
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
:goto_2b
array-length v4, v0
if-ge v2, v4, :cond_79
aget-char v4, v0, v2
if-eq v4, v9, :cond_38
aget-char v4, v0, v2
const/16 v5, 0x2a
if-ne v4, v5, :cond_73
:cond_38
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v4
if-eqz v4, :cond_48
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V
:cond_48
aget-char v4, v0, v2
if-ne v4, v9, :cond_54
const-string v4, "?"
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_51
:cond_51
add-int/lit8 v2, v2, 0x1
goto :goto_2b
:cond_54
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
if-eqz v4, :cond_6d
if-lez v2, :cond_51
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
sub-int/2addr v4, v8
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
const-string v5, "*"
invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_51
:cond_6d
const-string v4, "*"
invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_51
:cond_73
aget-char v4, v0, v2
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_51
:cond_79
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v4
if-eqz v4, :cond_86
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_86
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
move-object v4, p0
goto :goto_1b
.end method
.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
.registers 3
sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method
.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
.registers 15
const/4 v11, 0x0
const/4 v10, 0x1
if-nez p0, :cond_8
if-nez p1, :cond_8
move v8, v10
:goto_7
return v8
:cond_8
if-eqz p0, :cond_c
if-nez p1, :cond_e
:cond_c
move v8, v11
goto :goto_7
:cond_e
if-nez p2, :cond_12
sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
:cond_12
invoke-virtual {p2, p0}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-virtual {p2, p1}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
const/4 v1, 0x0
const/4 v5, 0x0
const/4 v7, 0x0
new-instance v3, Ljava/util/Stack;
invoke-direct {v3}, Ljava/util/Stack;-><init>()V
:cond_26
invoke-virtual {v3}, Ljava/util/Stack;->size()I
move-result v8
if-lez v8, :cond_3b
invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v8
check-cast v8, [I
move-object v0, v8
check-cast v0, [I
move-object v2, v0
aget v7, v2, v11
aget v5, v2, v10
const/4 v1, 0x1
:goto_3b
:cond_3b
array-length v8, v6
if-ge v7, v8, :cond_6d
aget-object v8, v6, v7
const-string v9, "?"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_4e
add-int/lit8 v5, v5, 0x1
const/4 v1, 0x0
:cond_4b
:goto_4b
add-int/lit8 v7, v7, 0x1
goto :goto_3b
:cond_4e
aget-object v8, v6, v7
const-string v9, "*"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_62
const/4 v1, 0x1
array-length v8, v6
sub-int/2addr v8, v10
if-ne v7, v8, :cond_4b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
goto :goto_4b
:cond_62
if-eqz v1, :cond_95
aget-object v8, v6, v7
invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v5
const/4 v8, -0x1
if-ne v5, v8, :cond_78
:cond_6d
:goto_6d
array-length v8, v6
if-ne v7, v8, :cond_9e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
if-ne v5, v8, :cond_9e
move v8, v10
goto :goto_7
:cond_78
aget-object v8, v6, v7
add-int/lit8 v9, v5, 0x1
invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v4
if-ltz v4, :cond_8c
const/4 v8, 0x2
new-array v8, v8, [I
aput v7, v8, v11
aput v4, v8, v10
invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
:cond_8c
aget-object v8, v6, v7
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
add-int/2addr v5, v8
const/4 v1, 0x0
goto :goto_4b
:cond_95
aget-object v8, v6, v7
invoke-virtual {p0, v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z
move-result v8
if-nez v8, :cond_8c
goto :goto_6d
:cond_9e
invoke-virtual {v3}, Ljava/util/Stack;->size()I
move-result v8
if-gtz v8, :cond_26
move v8, v11
goto/16 :goto_7
.end method
.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
.registers 3
sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
move-result v0
return v0
.end method