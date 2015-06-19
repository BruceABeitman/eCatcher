.class public Lorg/apache/commons/io/comparator/NameFileComparator;
.super Ljava/lang/Object;
.source "NameFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;

.field public static final NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

.field public static final NAME_INSENSITIVE_REVERSE:Ljava/util/Comparator;

.field public static final NAME_REVERSE:Ljava/util/Comparator;

.field public static final NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

.field public static final NAME_SYSTEM_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;

    sget-object v1, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    iput-object v0, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/IOCase;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :goto_7
    iput-object v0, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void

    :cond_a
    move-object v0, p1

    goto :goto_7
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    iget-object v3, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method
