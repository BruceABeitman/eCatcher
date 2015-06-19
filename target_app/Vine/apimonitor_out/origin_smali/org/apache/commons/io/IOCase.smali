.class public final Lorg/apache/commons/io/IOCase;
.super Ljava/lang/Object;
.source "IOCase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSENSITIVE:Lorg/apache/commons/io/IOCase; = null

.field public static final SENSITIVE:Lorg/apache/commons/io/IOCase; = null

.field public static final SYSTEM:Lorg/apache/commons/io/IOCase; = null

.field private static final serialVersionUID:J = -0x580776bc651386cfL


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/io/IOCase;

    const-string v3, "Sensitive"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    new-instance v2, Lorg/apache/commons/io/IOCase;

    const-string v3, "Insensitive"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    new-instance v2, Lorg/apache/commons/io/IOCase;

    const-string v3, "System"

    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v4

    if-nez v4, :cond_24

    :goto_1e
    invoke-direct {v2, v3, v0}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    return-void

    :cond_24
    move v0, v1

    goto :goto_1e
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;
    .registers 4

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    iget-object v0, v0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    iget-object v0, v0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    goto :goto_c

    :cond_1a
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    iget-object v0, v0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    goto :goto_c

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IOCase name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/io/IOCase;->forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_14
.end method

.method public checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_17

    const/4 v1, 0x1

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_17
    move v1, v4

    goto :goto_a
.end method

.method public checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    if-lt v0, p2, :cond_19

    move v1, p2

    :goto_d
    if-gt v1, v0, :cond_19

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_15
    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_12
    move v1, v4

    goto :goto_6
.end method

.method public checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_12
    move v1, v2

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method
