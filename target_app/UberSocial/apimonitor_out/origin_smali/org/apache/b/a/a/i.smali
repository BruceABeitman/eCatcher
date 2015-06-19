.class public Lorg/apache/b/a/a/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field static c:Ljava/lang/Class;

.field private static d:Lorg/apache/commons/logging/Log;


# instance fields
.field a:Lorg/apache/b/a/a/d;

.field b:Lorg/apache/b/a/a/d;

.field private e:Ljava/io/InputStream;

.field private f:B

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/b/a/a/i;->c:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.b.a.a.i"

    invoke-static {v0}, Lorg/apache/b/a/a/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/a/i;->c:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/b/a/a/i;->c:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/apache/b/a/a/d;

    invoke-direct {v0}, Lorg/apache/b/a/a/d;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    new-instance v0, Lorg/apache/b/a/a/d;

    invoke-direct {v0}, Lorg/apache/b/a/a/d;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    iput-boolean v1, p0, Lorg/apache/b/a/a/i;->g:Z

    iput-object p1, p0, Lorg/apache/b/a/a/i;->e:Ljava/io/InputStream;

    return-void
.end method

.method private a(B)B
    .registers 5

    const/16 v0, 0x30

    if-lt p1, v0, :cond_c

    const/16 v0, 0x39

    if-gt p1, v0, :cond_c

    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    :goto_b
    return v0

    :cond_c
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1a

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    :cond_1a
    const/16 v0, 0x61

    if-lt p1, v0, :cond_28

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_28

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method private a()V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    invoke-virtual {v0}, Lorg/apache/b/a/a/d;->b()I

    move-result v0

    if-eqz v0, :cond_f

    :goto_8
    return-void

    :sswitch_9
    iget-object v1, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/b/a/a/d;->a(B)V

    :cond_f
    iget-object v0, p0, Lorg/apache/b/a/a/i;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    iget-object v1, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/b/a/a/d;->a(B)V

    goto :goto_8

    :sswitch_1f
    iget-object v0, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    invoke-virtual {v0}, Lorg/apache/b/a/a/d;->c()V

    goto :goto_8

    :sswitch_25
    iget-object v1, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    invoke-virtual {v1}, Lorg/apache/b/a/a/d;->c()V

    iget-object v1, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/b/a/a/d;->a(B)V

    goto :goto_8

    nop

    :sswitch_data_32
    .sparse-switch
        -0x1 -> :sswitch_1f
        0x9 -> :sswitch_9
        0xa -> :sswitch_25
        0xd -> :sswitch_25
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method private b()V
    .registers 11

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/16 v7, 0xd

    const/16 v6, 0x3d

    const/4 v1, 0x0

    move v0, v1

    :goto_a
    iget-object v2, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v2}, Lorg/apache/b/a/a/d;->b()I

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    invoke-virtual {v2}, Lorg/apache/b/a/a/d;->b()I

    move-result v2

    if-nez v2, :cond_26

    invoke-direct {p0}, Lorg/apache/b/a/a/i;->a()V

    iget-object v2, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    invoke-virtual {v2}, Lorg/apache/b/a/a/d;->b()I

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    return-void

    :cond_26
    iget-object v2, p0, Lorg/apache/b/a/a/i;->b:Lorg/apache/b/a/a/d;

    invoke-virtual {v2}, Lorg/apache/b/a/a/d;->a()B

    move-result v2

    iget-byte v3, p0, Lorg/apache/b/a/a/i;->f:B

    packed-switch v3, :pswitch_data_15c

    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-byte v5, p0, Lorg/apache/b/a/a/i;->f:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v2}, Lorg/apache/b/a/a/d;->a(B)V

    goto :goto_a

    :pswitch_53
    if-eq v2, v6, :cond_5b

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v2}, Lorg/apache/b/a/a/d;->a(B)V

    goto :goto_a

    :cond_5b
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/b/a/a/i;->f:B

    goto :goto_a

    :pswitch_5f
    if-ne v2, v7, :cond_65

    const/4 v2, 0x2

    iput-byte v2, p0, Lorg/apache/b/a/a/i;->f:B

    goto :goto_a

    :cond_65
    if-lt v2, v8, :cond_69

    if-le v2, v9, :cond_79

    :cond_69
    const/16 v3, 0x41

    if-lt v2, v3, :cond_71

    const/16 v3, 0x46

    if-le v2, v3, :cond_79

    :cond_71
    const/16 v3, 0x61

    if-lt v2, v3, :cond_7e

    const/16 v3, 0x66

    if-gt v2, v3, :cond_7e

    :cond_79
    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/b/a/a/i;->f:B

    move v0, v2

    goto :goto_a

    :cond_7e
    if-ne v2, v6, :cond_96

    sget-object v2, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_8f

    sget-object v2, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    const-string v3, "Malformed MIME; got =="

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_8f
    iget-object v2, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v2, v6}, Lorg/apache/b/a/a/d;->a(B)V

    goto/16 :goto_a

    :cond_96
    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_b6

    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_b6
    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v6}, Lorg/apache/b/a/a/d;->a(B)V

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v2}, Lorg/apache/b/a/a/d;->a(B)V

    goto/16 :goto_a

    :pswitch_c4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_cc

    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    goto/16 :goto_a

    :cond_cc
    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_ec

    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Malformed MIME; expected 10, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_ec
    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v6}, Lorg/apache/b/a/a/d;->a(B)V

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v7}, Lorg/apache/b/a/a/d;->a(B)V

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v2}, Lorg/apache/b/a/a/d;->a(B)V

    goto/16 :goto_a

    :pswitch_ff
    if-lt v2, v8, :cond_103

    if-le v2, v9, :cond_113

    :cond_103
    const/16 v3, 0x41

    if-lt v2, v3, :cond_10b

    const/16 v3, 0x46

    if-le v2, v3, :cond_113

    :cond_10b
    const/16 v3, 0x61

    if-lt v2, v3, :cond_128

    const/16 v3, 0x66

    if-gt v2, v3, :cond_128

    :cond_113
    invoke-direct {p0, v0}, Lorg/apache/b/a/a/i;->a(B)B

    move-result v3

    invoke-direct {p0, v2}, Lorg/apache/b/a/a/i;->a(B)B

    move-result v2

    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    iget-object v4, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/apache/b/a/a/d;->a(B)V

    goto/16 :goto_a

    :cond_128
    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_148

    sget-object v3, Lorg/apache/b/a/a/i;->d:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_148
    iput-byte v1, p0, Lorg/apache/b/a/a/i;->f:B

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v6}, Lorg/apache/b/a/a/d;->a(B)V

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v0}, Lorg/apache/b/a/a/d;->a(B)V

    iget-object v3, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v3, v2}, Lorg/apache/b/a/a/d;->a(B)V

    goto/16 :goto_a

    nop

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_5f
        :pswitch_c4
        :pswitch_ff
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/a/i;->g:Z

    return-void
.end method

.method public read()I
    .registers 3

    iget-boolean v0, p0, Lorg/apache/b/a/a/i;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "QuotedPrintableInputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lorg/apache/b/a/a/i;->b()V

    iget-object v0, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v0}, Lorg/apache/b/a/a/d;->b()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, -0x1

    :cond_18
    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lorg/apache/b/a/a/i;->a:Lorg/apache/b/a/a/d;

    invoke-virtual {v0}, Lorg/apache/b/a/a/d;->a()B

    move-result v0

    if-gez v0, :cond_18

    and-int/lit16 v0, v0, 0xff

    goto :goto_18
.end method
