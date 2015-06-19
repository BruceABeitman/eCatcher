.class public final Lorg/apache/log4j/y;
.super Lorg/apache/log4j/z;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Class;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/log4j/y;->a:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.y"

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/y;->a:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/y;->d:Ljava/lang/String;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/y;->a:Ljava/lang/Class;

    goto :goto_c
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
    .registers 5

    const/4 v2, 0x0

    if-eqz p0, :cond_14

    const-string v0, "\\{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_14
    :goto_14
    return-object p0

    :cond_15
    const-string v0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_14
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
    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    if-eqz p0, :cond_cc

    const-string v2, ""

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    move v0, v1

    :goto_d
    if-ltz v3, :cond_b6

    if-eqz v3, :cond_1b

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_96

    :cond_1b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_80

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_80

    if-eqz p1, :cond_69

    array-length v2, p1

    if-ge v1, v2, :cond_69

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5c
    add-int/lit8 v2, v3, 0x2

    move v6, v2

    move-object v2, v1

    move v1, v0

    move v0, v6

    :goto_62
    const-string v3, "{"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_d

    :cond_69
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_5c

    :cond_80
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    goto :goto_62

    :cond_96
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    goto :goto_62

    :cond_b6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_cb
    return-object v0

    :cond_cc
    const/4 v0, 0x0

    goto :goto_cb
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
    .registers 6

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
    .registers 6

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/log4j/y;->b:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method private static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/y;->d:Ljava/lang/String;

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

    invoke-static {p3}, Lorg/apache/log4j/y;->a(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;C)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3}, Lorg/apache/log4j/y;->a(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;D)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3, p4}, Lorg/apache/log4j/y;->a(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;F)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3}, Lorg/apache/log4j/y;->a(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3}, Lorg/apache/log4j/y;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;J)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3, p4}, Lorg/apache/log4j/y;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3, p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3, p4, p5, p6}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4}, Lorg/apache/log4j/y;->a(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4}, Lorg/apache/log4j/y;->a(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4, p5}, Lorg/apache/log4j/y;->a(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4}, Lorg/apache/log4j/y;->a(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4}, Lorg/apache/log4j/y;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4, p5}, Lorg/apache/log4j/y;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p4}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p4, p5, p6}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p4, p5, p6, p7}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;S)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4}, Lorg/apache/log4j/y;->a(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p4}, Lorg/apache/log4j/y;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/y;->d:Ljava/lang/String;

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

    invoke-static {p3}, Lorg/apache/log4j/y;->a(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3}, Lorg/apache/log4j/y;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p3, p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;C)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;D)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;F)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;J)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;S)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static c(Lorg/apache/log4j/aa;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/log4j/v;->f:Lorg/apache/log4j/v;

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method public static d(Lorg/apache/log4j/aa;Ljava/lang/String;B)V
    .registers 5

    sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/ag;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;

    invoke-static {p2}, Lorg/apache/log4j/y;->a(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2}, Lorg/apache/log4j/y;->a(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2}, Lorg/apache/log4j/y;->a(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2}, Lorg/apache/log4j/y;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/y;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2}, Lorg/apache/log4j/y;->a(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2}, Lorg/apache/log4j/y;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-static {p1, p2}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;)V

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

    invoke-static {p2, p3}, Lorg/apache/log4j/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/y;->a(Lorg/apache/log4j/aa;Lorg/apache/log4j/v;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method
