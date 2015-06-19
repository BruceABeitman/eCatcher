.class final Lorg/apache/log4j/i/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/log4j/i/ah;->a:J

    iput-object p3, p0, Lorg/apache/log4j/i/ah;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/StringBuffer;)Z
    .registers 6

    iget-wide v0, p0, Lorg/apache/log4j/i/ah;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/log4j/i/ah;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
