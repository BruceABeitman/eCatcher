.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 2

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public write([C)V
    .registers 2

    return-void
.end method

.method public write([CII)V
    .registers 4

    return-void
.end method
