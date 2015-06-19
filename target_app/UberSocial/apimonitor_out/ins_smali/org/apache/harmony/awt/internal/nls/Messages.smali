.class public Lorg/apache/harmony/awt/internal/nls/Messages;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static bundle:Ljava/util/ResourceBundle;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
sput-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
:try_start_3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
const-string v1, "org.apache.harmony.awt.internal.nls.messages"
invoke-static {v0, v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
move-result-object v0
sput-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
:goto_f
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
goto :goto_f
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.registers 11
const/16 v7, 0x7b
const/4 v1, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
array-length v3, p1
mul-int/lit8 v3, v3, 0x14
add-int/2addr v0, v3
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
array-length v0, p1
new-array v3, v0, [Ljava/lang/String;
move v0, v1
:goto_14
array-length v4, p1
if-lt v0, v4, :cond_33
invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I
move-result v0
:goto_1b
if-gez v0, :cond_47
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-ge v1, v0, :cond_2e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_33
aget-object v4, p1, v0
if-nez v4, :cond_3e
const-string v4, "<null>"
aput-object v4, v3, v0
:goto_3b
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_3e
aget-object v4, p1, v0
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
goto :goto_3b
:cond_47
if-eqz v0, :cond_6c
add-int/lit8 v4, v0, -0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x5c
if-ne v4, v5, :cond_6c
const/4 v4, 0x1
if-eq v0, v4, :cond_5f
add-int/lit8 v4, v0, -0x1
invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5f
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
:goto_64
invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(II)I
move-result v1
move v8, v1
move v1, v0
move v0, v8
goto :goto_1b
:cond_6c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
add-int/lit8 v4, v4, -0x3
if-le v0, v4, :cond_84
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
goto :goto_64
:cond_84
add-int/lit8 v4, v0, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0xa
invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I
move-result v4
int-to-byte v4, v4
if-ltz v4, :cond_9d
add-int/lit8 v5, v0, 0x2
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x7d
if-eq v5, v6, :cond_a9
:cond_9d
add-int/lit8 v4, v0, 0x1
invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_64
:cond_a9
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
array-length v1, v3
if-lt v4, v1, :cond_bb
const-string v1, "<missing argument>"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_b8
add-int/lit8 v0, v0, 0x3
goto :goto_64
:cond_bb
aget-object v1, v3, v4
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b8
.end method
.method public static getString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
if-nez v0, :cond_5
:goto_4
return-object p0
:try_start_5
:cond_5
sget-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_a
.catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_a} :catch_c
move-result-object p0
goto :goto_4
:catch_c
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Missing message: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_4
.end method
.method public static getString(Ljava/lang/String;C)Ljava/lang/String;
.registers 5
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
.registers 5
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
invoke-static {p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
.registers 5
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
const/4 v1, 0x1
aput-object p2, v0, v1
invoke-static {p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.registers 3
sget-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
if-eqz v0, :cond_a
:try_start_4
sget-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_9
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_9} :catch_f
move-result-object p0
:cond_a
:goto_a
invoke-static {p0, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:catch_f
move-exception v0
goto :goto_a
.end method
.method public static setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_2
new-instance v2, Lorg/apache/harmony/awt/internal/nls/Messages$1;
invoke-direct {v2, p1, p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages$1;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ResourceBundle;
:try_end_d
.catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_d} :catch_e
:goto_d
return-object v0
:catch_e
move-exception v0
move-object v0, v1
goto :goto_d
.end method