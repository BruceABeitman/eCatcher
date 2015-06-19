.class public Lorg/apache/log4j/c/ab;
.super Ljava/text/DateFormat;
.source "SourceFile"


# static fields
.field private static final b:J = 0x61eb10b423babbd0L


# instance fields
.field protected final a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/c/ab;->a:J

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/log4j/c/ab;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method
