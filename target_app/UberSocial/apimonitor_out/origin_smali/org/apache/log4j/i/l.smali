.class public final Lorg/apache/log4j/i/l;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1388

.field private static final b:Lorg/apache/log4j/i/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/i/l;

    invoke-direct {v0}, Lorg/apache/log4j/i/l;-><init>()V

    sput-object v0, Lorg/apache/log4j/i/l;->b:Lorg/apache/log4j/i/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "Level"

    const-string v1, "level"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/l;
    .registers 2

    sget-object v0, Lorg/apache/log4j/i/l;->b:Lorg/apache/log4j/i/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    instance-of v0, p1, Lorg/apache/log4j/k/k;

    if-eqz v0, :cond_42

    move-object v0, p1

    check-cast v0, Lorg/apache/log4j/k/k;

    invoke-virtual {v0}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/v;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    check-cast p1, Lorg/apache/log4j/k/k;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :sswitch_30
    const-string v0, "level trace"

    goto :goto_2f

    :sswitch_33
    const-string v0, "level debug"

    goto :goto_2f

    :sswitch_36
    const-string v0, "level info"

    goto :goto_2f

    :sswitch_39
    const-string v0, "level warn"

    goto :goto_2f

    :sswitch_3c
    const-string v0, "level error"

    goto :goto_2f

    :sswitch_3f
    const-string v0, "level fatal"

    goto :goto_2f

    :cond_42
    const-string v0, "level"

    goto :goto_2f

    nop

    :sswitch_data_46
    .sparse-switch
        0x1388 -> :sswitch_30
        0x2710 -> :sswitch_33
        0x4e20 -> :sswitch_36
        0x7530 -> :sswitch_39
        0x9c40 -> :sswitch_3c
        0xc350 -> :sswitch_3f
    .end sparse-switch
.end method

.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 4

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
