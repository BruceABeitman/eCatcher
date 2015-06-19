.class public final Lorg/apache/log4j/w;
.super Lorg/apache/log4j/z;
.source "SourceFile"
.field static a:Ljava/lang/Class;
.field private static d:Ljava/text/NumberFormat;
.field private static e:Ljava/util/Locale;
.field private static f:Ljava/text/DateFormat;
.field private static g:Ljava/util/Locale;
.field private static final h:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lorg/apache/log4j/w;->d:Ljava/text/NumberFormat;
sput-object v0, Lorg/apache/log4j/w;->e:Ljava/util/Locale;
sput-object v0, Lorg/apache/log4j/w;->f:Ljava/text/DateFormat;
sput-object v0, Lorg/apache/log4j/w;->g:Ljava/util/Locale;
sget-object v0, Lorg/apache/log4j/w;->a:Ljava/lang/Class;
if-nez v0, :cond_1c
const-string v0, "org.apache.log4j.w"
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/w;->a:Ljava/lang/Class;
:goto_15
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lorg/apache/log4j/w;->h:Ljava/lang/String;
return-void
:cond_1c
sget-object v0, Lorg/apache/log4j/w;->a:Ljava/lang/Class;
goto :goto_15
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/apache/log4j/z;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.registers 10
const/4 v0, 0x0
const/4 v3, 0x0
const/16 v6, 0x7b
if-nez p0, :cond_8
move-object p0, v0
:goto_7
return-object p0
:cond_8
invoke-static {p0}, Lorg/apache/log4j/w;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_bd
const-string v2, ""
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v1
move v4, v3
move-object v3, v2
move v2, v1
:goto_17
if-ltz v2, :cond_a6
add-int/lit8 v1, v2, 0x2
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-ge v1, v5, :cond_9d
add-int/lit8 v1, v2, 0x2
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v5, 0x7d
if-ne v1, v5, :cond_9d
add-int/lit8 v1, v2, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v5, 0x30
if-lt v1, v5, :cond_9d
add-int/lit8 v1, v2, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v5, 0x39
if-gt v1, v5, :cond_9d
add-int/lit8 v1, v2, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
add-int/lit8 v1, v1, -0x30
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
if-eqz v1, :cond_82
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
add-int/lit8 v3, v2, 0x3
invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
move-object v7, v1
move-object v1, v0
move-object v0, v7
:goto_78
add-int/lit8 v3, v2, 0x3
invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I
move-result v2
move v4, v3
move-object v3, v0
move-object v0, v1
goto :goto_17
:cond_82
if-nez v0, :cond_88
invoke-static {p1}, Lorg/apache/log4j/w;->d(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_88
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
move-object v7, v1
move-object v1, v0
move-object v0, v7
goto :goto_78
:cond_9d
add-int/lit8 v1, v2, 0x1
invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I
move-result v1
move v2, v1
goto/16 :goto_17
:cond_a6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto/16 :goto_7
:cond_bd
const/4 v0, 0x1
:try_start_be
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_c6
.catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c6} :catch_c9
move-result-object p0
goto/16 :goto_7
:catch_c9
move-exception v0
goto/16 :goto_7
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.registers 4
if-eqz p0, :cond_a
:try_start_2
invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_f
move-result-object p1
:cond_a
:goto_a
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:catch_f
move-exception v0
goto :goto_a
.end method
.method private static a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.registers 9
const/16 v6, 0x7b
if-nez p0, :cond_6
const/4 p0, 0x0
:goto_5
return-object p0
:cond_6
invoke-static {p0}, Lorg/apache/log4j/w;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ae
const/16 v0, 0xa
new-array v3, v0, [Ljava/lang/String;
const/4 v2, 0x0
const-string v1, ""
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v0
:goto_17
if-ltz v0, :cond_97
add-int/lit8 v4, v0, 0x2
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-ge v4, v5, :cond_90
add-int/lit8 v4, v0, 0x2
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x7d
if-ne v4, v5, :cond_90
add-int/lit8 v4, v0, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x30
if-lt v4, v5, :cond_90
add-int/lit8 v4, v0, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x39
if-gt v4, v5, :cond_90
add-int/lit8 v4, v0, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
add-int/lit8 v4, v4, -0x30
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
aget-object v2, v3, v4
if-nez v2, :cond_6d
if-eqz p1, :cond_65
array-length v2, p1
if-lt v4, v2, :cond_87
:cond_65
add-int/lit8 v2, v0, 0x3
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
aput-object v2, v3, v4
:goto_6d
:cond_6d
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
aget-object v2, v3, v4
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v2, v0, 0x3
invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I
move-result v0
goto :goto_17
:cond_87
aget-object v2, p1, v4
invoke-static {v2}, Lorg/apache/log4j/w;->d(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
aput-object v2, v3, v4
goto :goto_6d
:cond_90
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I
move-result v0
goto :goto_17
:cond_97
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto/16 :goto_5
:cond_ae
:try_start_ae
invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_b1
.catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_b1} :catch_b4
move-result-object p0
goto/16 :goto_5
:catch_b4
move-exception v0
goto/16 :goto_5
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(B)Ljava/lang/Byte;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(C)Ljava/lang/Character;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
.registers 6
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(D)Ljava/lang/Double;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(F)Ljava/lang/Float;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
.registers 6
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(S)Ljava/lang/Short;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/w;->b:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_11
return-void
.end method
.method private static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
.registers 9
new-instance v0, Lorg/apache/log4j/k/k;
sget-object v1, Lorg/apache/log4j/w;->h:Ljava/lang/String;
const/4 v5, 0x0
move-object v2, p0
move-object v3, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;B)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/w;->a(B)Ljava/lang/Byte;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;C)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/w;->a(C)Ljava/lang/Character;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;D)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3, p4}, Lorg/apache/log4j/w;->a(D)Ljava/lang/Double;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;F)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/w;->a(F)Ljava/lang/Float;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;I)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/w;->a(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;J)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3, p4}, Lorg/apache/log4j/w;->a(J)Ljava/lang/Long;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p3}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p3, p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p3, p4, p5, p6}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;B)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4}, Lorg/apache/log4j/w;->a(B)Ljava/lang/Byte;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;C)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4}, Lorg/apache/log4j/w;->a(C)Ljava/lang/Character;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;D)V
.registers 7
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4, p5}, Lorg/apache/log4j/w;->a(D)Ljava/lang/Double;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;F)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4}, Lorg/apache/log4j/w;->a(F)Ljava/lang/Float;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4}, Lorg/apache/log4j/w;->a(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;J)V
.registers 7
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4, p5}, Lorg/apache/log4j/w;->a(J)Ljava/lang/Long;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p4}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p4, p5, p6}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 9
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p4, p5, p6, p7}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;S)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4}, Lorg/apache/log4j/w;->a(S)Ljava/lang/Short;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p4}, Lorg/apache/log4j/w;->a(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, p3, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {p2, p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_d
return-void
.end method
.method private static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 10
new-instance v0, Lorg/apache/log4j/k/k;
sget-object v1, Lorg/apache/log4j/w;->h:Ljava/lang/String;
move-object v2, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;S)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/w;->a(S)Ljava/lang/Short;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Z)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/w;->a(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 7
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {p3, p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_d
return-void
.end method
.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_d
return-void
.end method
.method private static declared-synchronized b(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
const-class v1, Lorg/apache/log4j/w;
monitor-enter v1
:try_start_3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
sget-object v2, Lorg/apache/log4j/w;->e:Ljava/util/Locale;
if-ne v0, v2, :cond_f
sget-object v2, Lorg/apache/log4j/w;->d:Ljava/text/NumberFormat;
if-nez v2, :cond_17
:cond_f
sput-object v0, Lorg/apache/log4j/w;->e:Ljava/util/Locale;
invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
move-result-object v0
sput-object v0, Lorg/apache/log4j/w;->d:Ljava/text/NumberFormat;
:cond_17
sget-object v0, Lorg/apache/log4j/w;->d:Ljava/text/NumberFormat;
invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
:try_end_1c
.catchall {:try_start_3 .. :try_end_1c} :catchall_1f
move-result-object v0
monitor-exit v1
return-object v0
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(B)Ljava/lang/Byte;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(C)Ljava/lang/Character;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(D)Ljava/lang/Double;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(F)Ljava/lang/Float;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_f
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(S)Ljava/lang/Short;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_f
return-void
.end method
.method public static b(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_f
return-void
.end method
.method private static declared-synchronized c(Ljava/lang/Object;)Ljava/lang/String;
.registers 5
const-class v1, Lorg/apache/log4j/w;
monitor-enter v1
:try_start_3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
sget-object v2, Lorg/apache/log4j/w;->g:Ljava/util/Locale;
if-ne v0, v2, :cond_f
sget-object v2, Lorg/apache/log4j/w;->f:Ljava/text/DateFormat;
if-nez v2, :cond_19
:cond_f
sput-object v0, Lorg/apache/log4j/w;->g:Ljava/util/Locale;
const/4 v2, 0x3
const/4 v3, 0x3
invoke-static {v2, v3, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
move-result-object v0
sput-object v0, Lorg/apache/log4j/w;->f:Ljava/text/DateFormat;
:cond_19
sget-object v0, Lorg/apache/log4j/w;->f:Ljava/text/DateFormat;
invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
:try_end_1e
.catchall {:try_start_3 .. :try_end_1e} :catchall_21
move-result-object v0
monitor-exit v1
return-object v0
:catchall_21
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(B)Ljava/lang/Byte;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(C)Ljava/lang/Character;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(D)Ljava/lang/Double;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(F)Ljava/lang/Float;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_f
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(S)Ljava/lang/Short;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_f
return-void
.end method
.method public static c(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_f
return-void
.end method
.method private static c(Ljava/lang/String;)Z
.registers 7
const/16 v5, 0x7b
const/4 v0, 0x0
const/4 v4, -0x1
const/16 v1, 0x27
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-eq v1, v4, :cond_d
:cond_c
:goto_c
return v0
:cond_d
invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I
move-result v1
:goto_11
if-eq v1, v4, :cond_40
add-int/lit8 v2, v1, 0x2
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_c
add-int/lit8 v2, v1, 0x2
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x7d
if-ne v2, v3, :cond_c
add-int/lit8 v2, v1, 0x1
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x30
if-lt v2, v3, :cond_c
add-int/lit8 v2, v1, 0x1
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x39
if-gt v2, v3, :cond_c
add-int/lit8 v1, v1, 0x1
invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I
move-result v1
goto :goto_11
:cond_40
const/4 v0, 0x1
goto :goto_c
.end method
.method private static d(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_9
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
instance-of v0, p0, Ljava/lang/Double;
if-nez v0, :cond_11
instance-of v0, p0, Ljava/lang/Float;
if-eqz v0, :cond_16
:cond_11
invoke-static {p0}, Lorg/apache/log4j/w;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_16
instance-of v0, p0, Ljava/util/Date;
if-eqz v0, :cond_1f
invoke-static {p0}, Lorg/apache/log4j/w;->c(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_1f
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(B)Ljava/lang/Byte;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(C)Ljava/lang/Character;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
.registers 6
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(D)Ljava/lang/Double;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(F)Ljava/lang/Float;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
.registers 6
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(S)Ljava/lang/Short;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2}, Lorg/apache/log4j/w;->a(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p1, v1}, Lorg/apache/log4j/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static d(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_11
return-void
.end method
.method public static e(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static e(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->d:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_11
return-void
.end method
.method public static f(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
invoke-static {p1, p2}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static f(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/log4j/v;->c:Lorg/apache/log4j/v;
invoke-static {p2, p3}, Lorg/apache/log4j/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/w;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_11
return-void
.end method