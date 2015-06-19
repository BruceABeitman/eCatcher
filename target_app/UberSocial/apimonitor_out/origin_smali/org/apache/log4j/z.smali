.class public abstract Lorg/apache/log4j/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field protected static final b:Lorg/apache/log4j/v;

.field static c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/apache/log4j/v;

    const/16 v1, 0x1388

    const-string v2, "TRACE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/z;->b:Lorg/apache/log4j/v;

    sget-object v0, Lorg/apache/log4j/z;->c:Ljava/lang/Class;

    if-nez v0, :cond_1f

    const-string v0, "org.apache.log4j.z"

    invoke-static {v0}, Lorg/apache/log4j/z;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/z;->c:Ljava/lang/Class;

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    return-void

    :cond_1f
    sget-object v0, Lorg/apache/log4j/z;->c:Ljava/lang/Class;

    goto :goto_18
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Z)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method protected static a(B)Ljava/lang/Byte;
    .registers 2

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method protected static a(C)Ljava/lang/Character;
    .registers 2

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method protected static a(D)Ljava/lang/Double;
    .registers 3

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method protected static a(F)Ljava/lang/Float;
    .registers 2

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method protected static a(I)Ljava/lang/Integer;
    .registers 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected static a(J)Ljava/lang/Long;
    .registers 3

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method protected static a(S)Ljava/lang/Short;
    .registers 2

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ENTRY"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_31
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ENTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_47

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_38
    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_46
    return-void

    :cond_47
    :try_start_47
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_57} :catch_59

    move-result-object v4

    goto :goto_38

    :catch_59
    move-exception v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_38
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ENTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_35
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " THROW"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_31
    return-void
.end method

.method public static a(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ENTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_85

    array-length v0, p3

    if-lez v0, :cond_85

    const-string v1, "{"

    const/4 v0, 0x0

    :goto_2b
    array-length v3, p3

    if-ge v0, v3, :cond_63

    :try_start_2e
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_44} :catch_4a

    move-result-object v2

    :goto_45
    const-string v1, ","

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :catch_4a
    move-exception v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_76
    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_84
    return-void

    :cond_85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_76
.end method

.method protected static a(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    return-object v0
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " RETURN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_31
    return-void
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " RETURN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_47

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_38
    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_46
    return-void

    :cond_47
    :try_start_47
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_57} :catch_59

    move-result-object v4

    goto :goto_38

    :catch_59
    move-exception v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_38
.end method

.method public static b(Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/log4j/aa;->q()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lorg/apache/log4j/k/k;

    sget-object v1, Lorg/apache/log4j/z;->a:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " RETURN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/k;)V

    :cond_35
    return-void
.end method
