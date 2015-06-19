.class public Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
.super Ljava/lang/Object;
.source "LastModifiedFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 14

    const-wide/16 v9, 0x0

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v3, v5, v7

    cmp-long v5, v3, v9

    if-gez v5, :cond_1a

    const/4 v5, -0x1

    :goto_19
    return v5

    :cond_1a
    cmp-long v5, v3, v9

    if-lez v5, :cond_20

    const/4 v5, 0x1

    goto :goto_19

    :cond_20
    const/4 v5, 0x0

    goto :goto_19
.end method
