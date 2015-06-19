.class public abstract Lorg/apache/b/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/f/d;


# static fields
.field private static final p:Ljava/util/BitSet; = null

.field private static final q:I = -0x2

.field private static final r:I = -0x3


# instance fields
.field protected final a:Lorg/apache/commons/logging/Log;

.field protected final b:Lorg/apache/b/a/b/a;

.field protected final c:I

.field protected final d:I

.field protected final e:Lorg/apache/b/a/f/h;

.field protected final f:Lorg/apache/b/a/b/e;

.field protected g:I

.field private final h:Lorg/apache/b/a/g/a;

.field private final i:Lorg/apache/b/a/g/b;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/b/a/f/b;->p:Ljava/util/BitSet;

    const/16 v0, 0x21

    :goto_9
    const/16 v1, 0x39

    if-gt v0, v1, :cond_15

    sget-object v1, Lorg/apache/b/a/f/b;->p:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    const/16 v0, 0x3b

    :goto_17
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_23

    sget-object v1, Lorg/apache/b/a/f/b;->p:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    return-void
.end method

.method constructor <init>(Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V
    .registers 8

    const/16 v2, 0x40

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/f/b;->a:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/b/a/f/b;->b:Lorg/apache/b/a/b/a;

    iput p2, p0, Lorg/apache/b/a/f/b;->g:I

    iput p2, p0, Lorg/apache/b/a/f/b;->c:I

    iput p3, p0, Lorg/apache/b/a/f/b;->d:I

    iput-object p4, p0, Lorg/apache/b/a/f/b;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {p0, p1}, Lorg/apache/b/a/f/b;->a(Lorg/apache/b/a/b/a;)Lorg/apache/b/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/f/b;->f:Lorg/apache/b/a/b/e;

    new-instance v0, Lorg/apache/b/a/g/a;

    invoke-direct {v0, v2}, Lorg/apache/b/a/g/a;-><init>(I)V

    iput-object v0, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    new-instance v0, Lorg/apache/b/a/g/b;

    invoke-direct {v0, v2}, Lorg/apache/b/a/g/b;-><init>(I)V

    iput-object v0, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    iput v1, p0, Lorg/apache/b/a/f/b;->j:I

    iput-boolean v1, p0, Lorg/apache/b/a/f/b;->n:Z

    iput v1, p0, Lorg/apache/b/a/f/b;->o:I

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const-string v0, "Unknown"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "End of stream"

    goto :goto_5

    :pswitch_9
    const-string v0, "Start message"

    goto :goto_5

    :pswitch_c
    const-string v0, "End message"

    goto :goto_5

    :pswitch_f
    const-string v0, "Raw entity"

    goto :goto_5

    :pswitch_12
    const-string v0, "Start header"

    goto :goto_5

    :pswitch_15
    const-string v0, "Field"

    goto :goto_5

    :pswitch_18
    const-string v0, "End header"

    goto :goto_5

    :pswitch_1b
    const-string v0, "Start multipart"

    goto :goto_5

    :pswitch_1e
    const-string v0, "End multipart"

    goto :goto_5

    :pswitch_21
    const-string v0, "Preamble"

    goto :goto_5

    :pswitch_24
    const-string v0, "Epilogue"

    goto :goto_5

    :pswitch_27
    const-string v0, "Start bodypart"

    goto :goto_5

    :pswitch_2a
    const-string v0, "End bodypart"

    goto :goto_5

    :pswitch_2d
    const-string v0, "Body"

    goto :goto_5

    :pswitch_30
    const-string v0, "Bodypart"

    goto :goto_5

    :pswitch_33
    const-string v0, "In message"

    goto :goto_5

    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_33
        :pswitch_30
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private k()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lorg/apache/b/a/f/b;->n:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lorg/apache/b/a/f/b;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v0}, Lorg/apache/b/a/f/h;->c()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/b/a/f/b;->c()Lorg/apache/b/a/d/e;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v0}, Lorg/apache/b/a/g/b;->a()V

    :cond_16
    iget-object v0, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    invoke-virtual {v0}, Lorg/apache/b/a/g/a;->d()I

    move-result v0

    if-lez v1, :cond_2f

    iget-object v3, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v3}, Lorg/apache/b/a/g/b;->e()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v3, v1, :cond_2f

    new-instance v0, Lorg/apache/b/a/d/h;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/b/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    if-lez v0, :cond_38

    iget-object v3, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    iget-object v4, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    invoke-virtual {v3, v4, v6, v0}, Lorg/apache/b/a/g/b;->a(Lorg/apache/b/a/g/a;II)V

    :cond_38
    iget-object v0, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    invoke-virtual {v0}, Lorg/apache/b/a/g/a;->a()V

    iget-object v0, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    invoke-virtual {v2, v0}, Lorg/apache/b/a/d/e;->a(Lorg/apache/b/a/g/a;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4e

    sget-object v0, Lorg/apache/b/a/f/f;->b:Lorg/apache/b/a/f/f;

    invoke-virtual {p0, v0}, Lorg/apache/b/a/f/b;->a(Lorg/apache/b/a/f/f;)V

    iput-boolean v5, p0, Lorg/apache/b/a/f/b;->n:Z

    goto :goto_6

    :cond_4e
    iget-object v0, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    invoke-virtual {v0}, Lorg/apache/b/a/g/a;->d()I

    move-result v0

    if-lez v0, :cond_64

    iget-object v3, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/b/a/g/a;->b(I)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_64

    add-int/lit8 v0, v0, -0x1

    :cond_64
    if-lez v0, :cond_74

    iget-object v3, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/b/a/g/a;->b(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_74

    add-int/lit8 v0, v0, -0x1

    :cond_74
    if-nez v0, :cond_79

    iput-boolean v5, p0, Lorg/apache/b/a/f/b;->n:Z

    goto :goto_6

    :cond_79
    iget v0, p0, Lorg/apache/b/a/f/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/b/a/f/b;->j:I

    iget v0, p0, Lorg/apache/b/a/f/b;->j:I

    if-le v0, v5, :cond_16

    iget-object v0, p0, Lorg/apache/b/a/f/b;->h:Lorg/apache/b/a/g/a;

    invoke-virtual {v0, v6}, Lorg/apache/b/a/g/a;->b(I)I

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_16

    const/16 v3, 0x9

    if-eq v0, v3, :cond_16

    goto/16 :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/f/b;->g:I

    return v0
.end method

.method protected a(Lorg/apache/b/a/b/a;)Lorg/apache/b/a/b/e;
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/f/b;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v0}, Lorg/apache/b/a/f/h;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lorg/apache/b/a/b/d;

    invoke-direct {v0, p1}, Lorg/apache/b/a/b/d;-><init>(Lorg/apache/b/a/b/a;)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/apache/b/a/b/c;

    invoke-direct {v0, p1}, Lorg/apache/b/a/b/c;-><init>(Lorg/apache/b/a/b/a;)V

    goto :goto_d
.end method

.method protected a(Lorg/apache/b/a/f/f;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/f/b;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v0}, Lorg/apache/b/a/f/h;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lorg/apache/b/a/f/i;

    invoke-direct {v0, p1}, Lorg/apache/b/a/f/i;-><init>(Lorg/apache/b/a/f/f;)V

    throw v0

    :cond_e
    invoke-virtual {p0, p1}, Lorg/apache/b/a/f/b;->c(Lorg/apache/b/a/f/f;)V

    return-void
.end method

.method protected abstract b()I
.end method

.method protected b(Lorg/apache/b/a/f/f;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/b/a/f/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_33

    const-string v0, "Event is unexpectedly null."

    :goto_21
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    invoke-virtual {p1}, Lorg/apache/b/a/f/f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method protected abstract c()Lorg/apache/b/a/d/e;
.end method

.method protected c(Lorg/apache/b/a/f/f;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/f/b;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/b/a/f/b;->a:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/b/a/f/b;->b(Lorg/apache/b/a/f/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method protected d(Lorg/apache/b/a/f/f;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/f/b;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/b/a/f/b;->a:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/b/a/f/b;->b(Lorg/apache/b/a/f/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method protected d()Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/b/a/f/b;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v0}, Lorg/apache/b/a/f/h;->d()I

    move-result v3

    :cond_8
    iget-boolean v0, p0, Lorg/apache/b/a/f/b;->n:Z

    if-eqz v0, :cond_d

    :goto_c
    return v1

    :cond_d
    iget v0, p0, Lorg/apache/b/a/f/b;->o:I

    if-lt v0, v3, :cond_19

    new-instance v0, Lorg/apache/b/a/d/g;

    const-string v1, "Maximum header limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/b/a/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-direct {p0}, Lorg/apache/b/a/f/b;->k()V

    iget v0, p0, Lorg/apache/b/a/f/b;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/b/a/f/b;->o:I

    iget-object v0, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v0}, Lorg/apache/b/a/g/b;->e()I

    move-result v0

    if-lez v0, :cond_38

    iget-object v4, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/b/a/g/b;->a(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_38

    add-int/lit8 v0, v0, -0x1

    :cond_38
    if-lez v0, :cond_48

    iget-object v4, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/b/a/g/b;->a(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_48

    add-int/lit8 v0, v0, -0x1

    :cond_48
    iget-object v4, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v4, v0}, Lorg/apache/b/a/g/b;->c(I)V

    iget-object v0, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v0}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/f/b;->k:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Lorg/apache/b/a/g/b;->d(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_73

    sget-object v0, Lorg/apache/b/a/f/f;->c:Lorg/apache/b/a/f/f;

    invoke-virtual {p0, v0}, Lorg/apache/b/a/f/b;->a(Lorg/apache/b/a/f/f;)V

    move v0, v1

    :goto_66
    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/b/a/f/b;->f:Lorg/apache/b/a/b/e;

    iget-object v1, p0, Lorg/apache/b/a/f/b;->l:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/b/a/f/b;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/apache/b/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_c

    :cond_73
    iget-object v0, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v0, v1, v4}, Lorg/apache/b/a/g/b;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/f/b;->l:Ljava/lang/String;

    move v0, v1

    :goto_7c
    iget-object v5, p0, Lorg/apache/b/a/f/b;->l:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_ac

    sget-object v5, Lorg/apache/b/a/f/b;->p:Ljava/util/BitSet;

    iget-object v6, p0, Lorg/apache/b/a/f/b;->l:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_a9

    sget-object v0, Lorg/apache/b/a/f/f;->c:Lorg/apache/b/a/f/f;

    invoke-virtual {p0, v0}, Lorg/apache/b/a/f/b;->a(Lorg/apache/b/a/f/f;)V

    move v0, v1

    :goto_98
    iget-object v5, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lorg/apache/b/a/f/b;->i:Lorg/apache/b/a/g/b;

    invoke-virtual {v6}, Lorg/apache/b/a/g/b;->e()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/b/a/g/b;->a(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/b/a/f/b;->m:Ljava/lang/String;

    goto :goto_66

    :cond_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_ac
    move v0, v2

    goto :goto_98
.end method

.method public e()Lorg/apache/b/a/b/a;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/f/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/b;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_26
    iget-object v0, p0, Lorg/apache/b/a/f/b;->f:Lorg/apache/b/a/b/e;

    return-object v0

    nop

    :sswitch_data_2a
    .sparse-switch
        -0x1 -> :sswitch_26
        0x6 -> :sswitch_26
        0x8 -> :sswitch_26
        0x9 -> :sswitch_26
        0xc -> :sswitch_26
    .end sparse-switch
.end method

.method public f()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/f/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/b;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    iget-object v0, p0, Lorg/apache/b/a/f/b;->k:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_26
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/f/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/b;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    iget-object v0, p0, Lorg/apache/b/a/f/b;->l:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_26
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/f/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/b;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    iget-object v0, p0, Lorg/apache/b/a/f/b;->m:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_26
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/b/a/f/b;->g:I

    invoke-static {v1}, Lorg/apache/b/a/f/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/b/a/f/b;->f:Lorg/apache/b/a/b/e;

    invoke-interface {v1}, Lorg/apache/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/b/a/f/b;->f:Lorg/apache/b/a/b/e;

    invoke-interface {v1}, Lorg/apache/b/a/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
