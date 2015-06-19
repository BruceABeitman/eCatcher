.class public final Lcom/ibm/icu/impl/ICUDebug;
.super Ljava/lang/Object;
.source "ICUDebug.java"
.field private static debug:Z
.field private static help:Z
.field public static final isJDK14OrHigher:Z
.field public static final javaVersion:Lcom/ibm/icu/util/VersionInfo;
.field public static final javaVersionString:Ljava/lang/String;
.field private static params:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x1
const/4 v4, 0x0
:try_start_2
const-string v1, "ICUDebug"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
:try_end_a
.catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_73
:goto_a
sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
if-eqz v1, :cond_6d
move v1, v5
:goto_f
sput-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->debug:Z
sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->debug:Z
if-eqz v1, :cond_6f
sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2a
sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
const-string v2, "help"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_6f
:cond_2a
move v1, v5
:goto_2b
sput-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->help:Z
sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->debug:Z
if-eqz v1, :cond_4b
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "\nICUDebug="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_4b
const-string v1, "java.version"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/ibm/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;
sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;
invoke-static {v1}, Lcom/ibm/icu/impl/ICUDebug;->getInstanceLenient(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
move-result-object v1
sput-object v1, Lcom/ibm/icu/impl/ICUDebug;->javaVersion:Lcom/ibm/icu/util/VersionInfo;
const-string v1, "1.4.0"
invoke-static {v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
move-result-object v0
sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->javaVersion:Lcom/ibm/icu/util/VersionInfo;
invoke-virtual {v1, v0}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I
move-result v1
if-ltz v1, :cond_71
move v1, v5
:goto_6a
sput-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->isJDK14OrHigher:Z
return-void
:cond_6d
move v1, v4
goto :goto_f
:cond_6f
move v1, v4
goto :goto_2b
:cond_71
move v1, v4
goto :goto_6a
:catch_73
move-exception v1
goto :goto_a
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static enabled()Z
.registers 1
sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z
return v0
.end method
.method public static enabled(Ljava/lang/String;)Z
.registers 5
const/4 v3, 0x0
sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->debug:Z
if-eqz v1, :cond_3a
sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_38
const/4 v1, 0x1
move v0, v1
:goto_10
sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->help:Z
if-eqz v1, :cond_36
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "\nICUDebug.enabled("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ") = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_36
move v1, v0
:goto_37
return v1
:cond_38
move v0, v3
goto :goto_10
:cond_3a
move v1, v3
goto :goto_37
.end method
.method public static getInstanceLenient(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
.registers 12
const/16 v10, 0x2e
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
const/4 v4, 0x0
const/4 v7, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
:goto_a
array-length v9, v1
if-ge v4, v9, :cond_1f
add-int/lit8 v5, v4, 0x1
aget-char v0, v1, v4
const/16 v9, 0x30
if-lt v0, v9, :cond_19
const/16 v9, 0x39
if-le v0, v9, :cond_35
:cond_19
if-eqz v3, :cond_33
const/4 v9, 0x3
if-ne v2, v9, :cond_2b
move v4, v5
:cond_1f
:goto_1f
if-lez v7, :cond_3c
const/4 v9, 0x1
sub-int v9, v7, v9
aget-char v9, v1, v9
if-ne v9, v10, :cond_3c
add-int/lit8 v7, v7, -0x1
goto :goto_1f
:cond_2b
const/4 v3, 0x0
add-int/lit8 v8, v7, 0x1
aput-char v10, v1, v7
add-int/lit8 v2, v2, 0x1
move v7, v8
:goto_33
:cond_33
move v4, v5
goto :goto_a
:cond_35
const/4 v3, 0x1
add-int/lit8 v8, v7, 0x1
aput-char v0, v1, v7
move v7, v8
goto :goto_33
:cond_3c
new-instance v6, Ljava/lang/String;
const/4 v9, 0x0
invoke-direct {v6, v1, v9, v7}, Ljava/lang/String;-><init>([CII)V
invoke-static {v6}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
move-result-object v9
return-object v9
.end method
.method public static value(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v5, -0x1
const-string v2, "false"
sget-boolean v3, Lcom/ibm/icu/impl/ICUDebug;->debug:Z
if-eqz v3, :cond_64
sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-eq v0, v5, :cond_3e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
add-int/2addr v0, v3
sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-le v3, v0, :cond_67
sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x3d
if-ne v3, v4, :cond_67
add-int/lit8 v0, v0, 0x1
sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
const-string v4, ","
invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
if-ne v1, v5, :cond_65
sget-object v4, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
:goto_3a
invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
:goto_3e
:cond_3e
sget-boolean v3, Lcom/ibm/icu/impl/ICUDebug;->help:Z
if-eqz v3, :cond_64
sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "\nICUDebug.value("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ") = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_64
return-object v2
:cond_65
move v4, v1
goto :goto_3a
:cond_67
const-string v2, "true"
goto :goto_3e
.end method