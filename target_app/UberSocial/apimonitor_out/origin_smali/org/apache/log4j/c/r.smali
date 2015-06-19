.class public Lorg/apache/log4j/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x3e8

.field static final b:I = 0x3e9

.field static final c:I = 0x3ea

.field static final d:I = 0x3eb

.field static final e:I = 0x3ec

.field static final f:I = 0x7d0

.field static final g:I = 0x7d1

.field static final h:I = 0x7d2

.field static final i:I = 0x7d3

.field static final j:I = 0x7d4

.field static s:Ljava/lang/Class; = null

.field private static final t:C = '%'

.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x3

.field private static final x:I = 0x4

.field private static final y:I = 0x5


# instance fields
.field k:I

.field protected l:Ljava/lang/StringBuffer;

.field protected m:I

.field protected n:I

.field o:Lorg/apache/log4j/c/q;

.field p:Lorg/apache/log4j/c/q;

.field protected q:Lorg/apache/log4j/c/i;

.field protected r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    new-instance v0, Lorg/apache/log4j/c/i;

    invoke-direct {v0}, Lorg/apache/log4j/c/i;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    iput-object p1, p0, Lorg/apache/log4j/c/r;->r:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/c/r;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/c/r;->k:I

    return-void
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

.method private b(Lorg/apache/log4j/c/q;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/c/r;->o:Lorg/apache/log4j/c/q;

    if-nez v0, :cond_9

    iput-object p1, p0, Lorg/apache/log4j/c/r;->p:Lorg/apache/log4j/c/q;

    iput-object p1, p0, Lorg/apache/log4j/c/r;->o:Lorg/apache/log4j/c/q;

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lorg/apache/log4j/c/r;->p:Lorg/apache/log4j/c/q;

    iput-object p1, v0, Lorg/apache/log4j/c/q;->a:Lorg/apache/log4j/c/q;

    iput-object p1, p0, Lorg/apache/log4j/c/r;->p:Lorg/apache/log4j/c/q;

    goto :goto_8
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/apache/log4j/c/r;->n:I

    iget v1, p0, Lorg/apache/log4j/c/r;->m:I

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Lorg/apache/log4j/c/r;->r:Ljava/lang/String;

    iget v1, p0, Lorg/apache/log4j/c/r;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lorg/apache/log4j/c/r;->r:Ljava/lang/String;

    const/16 v1, 0x7d

    iget v2, p0, Lorg/apache/log4j/c/r;->n:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    iget v0, p0, Lorg/apache/log4j/c/r;->n:I

    if-le v1, v0, :cond_2f

    iget-object v0, p0, Lorg/apache/log4j/c/r;->r:Ljava/lang/String;

    iget v2, p0, Lorg/apache/log4j/c/r;->n:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/c/r;->n:I

    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected a(C)V
    .registers 7

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_17e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected char ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/log4j/c/r;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " in conversion patterrn."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/log4j/c/w;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/c/w;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_3c
    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/r;->a(Lorg/apache/log4j/c/q;)V

    return-void

    :sswitch_40
    new-instance v0, Lorg/apache/log4j/c/t;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    invoke-virtual {p0}, Lorg/apache/log4j/c/r;->b()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/c/t;-><init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3c

    :sswitch_51
    new-instance v0, Lorg/apache/log4j/c/u;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    invoke-virtual {p0}, Lorg/apache/log4j/c/r;->b()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/c/u;-><init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3c

    :sswitch_62
    const-string v1, "ISO8601"

    invoke-virtual {p0}, Lorg/apache/log4j/c/r;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17a

    :goto_6a
    const-string v1, "ISO8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    new-instance v0, Lorg/apache/log4j/c/j;

    invoke-direct {v0}, Lorg/apache/log4j/c/j;-><init>()V

    :goto_77
    new-instance v1, Lorg/apache/log4j/c/v;

    iget-object v2, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    invoke-direct {v1, v2, v0}, Lorg/apache/log4j/c/v;-><init>(Lorg/apache/log4j/c/i;Ljava/text/DateFormat;)V

    iget-object v0, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v0, v1

    goto :goto_3c

    :cond_85
    const-string v1, "ABSOLUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    new-instance v0, Lorg/apache/log4j/c/a;

    invoke-direct {v0}, Lorg/apache/log4j/c/a;-><init>()V

    goto :goto_77

    :cond_93
    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    new-instance v0, Lorg/apache/log4j/c/g;

    invoke-direct {v0}, Lorg/apache/log4j/c/g;-><init>()V

    goto :goto_77

    :cond_a1
    :try_start_a1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_a6} :catch_a8

    move-object v0, v1

    goto :goto_77

    :catch_a8
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate SimpleDateFormat with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "org.apache.log4j.helpers.ISO8601DateFormat"

    sget-object v0, Lorg/apache/log4j/c/r;->s:Ljava/lang/Class;

    if-nez v0, :cond_d5

    const-string v0, "java.text.DateFormat"

    invoke-static {v0}, Lorg/apache/log4j/c/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/c/r;->s:Ljava/lang/Class;

    :goto_cd
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    goto :goto_77

    :cond_d5
    sget-object v0, Lorg/apache/log4j/c/r;->s:Ljava/lang/Class;

    goto :goto_cd

    :sswitch_d8
    new-instance v0, Lorg/apache/log4j/c/x;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x3ec

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/c/x;-><init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_e8
    new-instance v0, Lorg/apache/log4j/c/x;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/c/x;-><init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_f8
    new-instance v0, Lorg/apache/log4j/c/x;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x3eb

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/c/x;-><init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_108
    new-instance v0, Lorg/apache/log4j/c/s;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x7d4

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/c/s;-><init>(Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_118
    new-instance v0, Lorg/apache/log4j/c/x;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x3e9

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/c/x;-><init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_128
    new-instance v0, Lorg/apache/log4j/c/s;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x7d2

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/c/s;-><init>(Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_138
    new-instance v0, Lorg/apache/log4j/c/s;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/c/s;-><init>(Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_148
    new-instance v0, Lorg/apache/log4j/c/s;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/c/s;-><init>(Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_158
    new-instance v0, Lorg/apache/log4j/c/s;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/c/s;-><init>(Lorg/apache/log4j/c/i;I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :sswitch_168
    invoke-virtual {p0}, Lorg/apache/log4j/c/r;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/log4j/c/y;

    iget-object v2, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    invoke-direct {v0, v2, v1}, Lorg/apache/log4j/c/y;-><init>(Lorg/apache/log4j/c/i;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3c

    :cond_17a
    move-object v0, v1

    goto/16 :goto_6a

    nop

    :sswitch_data_17e
    .sparse-switch
        0x43 -> :sswitch_51
        0x46 -> :sswitch_d8
        0x4c -> :sswitch_f8
        0x4d -> :sswitch_118
        0x58 -> :sswitch_168
        0x63 -> :sswitch_40
        0x64 -> :sswitch_62
        0x6c -> :sswitch_e8
        0x6d -> :sswitch_108
        0x70 -> :sswitch_128
        0x72 -> :sswitch_138
        0x74 -> :sswitch_148
        0x78 -> :sswitch_158
    .end sparse-switch
.end method

.method protected a(Lorg/apache/log4j/c/q;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-direct {p0, p1}, Lorg/apache/log4j/c/r;->b(Lorg/apache/log4j/c/q;)V

    iput v1, p0, Lorg/apache/log4j/c/r;->k:I

    iget-object v0, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    invoke-virtual {v0}, Lorg/apache/log4j/c/i;->a()V

    return-void
.end method

.method protected b()I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/log4j/c/r;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_2a

    move-result v1

    if-gtz v1, :cond_4d

    :try_start_d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Precision option ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") isn\'t a positive integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_29} :catch_48

    :cond_29
    :goto_29
    return v0

    :catch_2a
    move-exception v1

    :goto_2b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Category option \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" not a decimal integer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    :catch_48
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_2b

    :cond_4d
    move v0, v1

    goto :goto_29
.end method

.method public c()Lorg/apache/log4j/c/q;
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/log4j/c/r;->n:I

    :goto_9
    iget v0, p0, Lorg/apache/log4j/c/r;->n:I

    iget v1, p0, Lorg/apache/log4j/c/r;->m:I

    if-ge v0, v1, :cond_12e

    iget-object v0, p0, Lorg/apache/log4j/c/r;->r:Ljava/lang/String;

    iget v1, p0, Lorg/apache/log4j/c/r;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/log4j/c/r;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lorg/apache/log4j/c/r;->k:I

    packed-switch v1, :pswitch_data_148

    :pswitch_20
    goto :goto_9

    :pswitch_21
    iget v1, p0, Lorg/apache/log4j/c/r;->n:I

    iget v2, p0, Lorg/apache/log4j/c/r;->m:I

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_2d
    const/16 v1, 0x25

    if-ne v0, v1, :cond_7e

    iget-object v1, p0, Lorg/apache/log4j/c/r;->r:Ljava/lang/String;

    iget v2, p0, Lorg/apache/log4j/c/r;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_158

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_52

    new-instance v1, Lorg/apache/log4j/c/w;

    iget-object v2, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/c/w;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/c/r;->b(Lorg/apache/log4j/c/q;)V

    :cond_52
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput v6, p0, Lorg/apache/log4j/c/r;->k:I

    iget-object v0, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    invoke-virtual {v0}, Lorg/apache/log4j/c/i;->a()V

    goto :goto_9

    :sswitch_64
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/log4j/c/r;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/r;->n:I

    goto :goto_9

    :sswitch_70
    iget-object v0, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/log4j/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/log4j/c/r;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/r;->n:I

    goto :goto_9

    :cond_7e
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_84
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    packed-switch v0, :pswitch_data_162

    if-lt v0, v4, :cond_a5

    if-gt v0, v5, :cond_a5

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    add-int/lit8 v0, v0, -0x30

    iput v0, v1, Lorg/apache/log4j/c/i;->a:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/log4j/c/r;->k:I

    goto/16 :goto_9

    :pswitch_9b
    iget-object v0, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    iput-boolean v6, v0, Lorg/apache/log4j/c/i;->c:Z

    goto/16 :goto_9

    :pswitch_a1
    iput v7, p0, Lorg/apache/log4j/c/r;->k:I

    goto/16 :goto_9

    :cond_a5
    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/r;->a(C)V

    goto/16 :goto_9

    :pswitch_aa
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v4, :cond_c2

    if-gt v0, v5, :cond_c2

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    iget-object v2, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    iget v2, v2, Lorg/apache/log4j/c/i;->a:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    iput v0, v1, Lorg/apache/log4j/c/i;->a:I

    goto/16 :goto_9

    :cond_c2
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_ca

    iput v7, p0, Lorg/apache/log4j/c/r;->k:I

    goto/16 :goto_9

    :cond_ca
    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/r;->a(C)V

    goto/16 :goto_9

    :pswitch_cf
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v4, :cond_e3

    if-gt v0, v5, :cond_e3

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    add-int/lit8 v0, v0, -0x30

    iput v0, v1, Lorg/apache/log4j/c/i;->b:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/log4j/c/r;->k:I

    goto/16 :goto_9

    :cond_e3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error occured in position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/c/r;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    iput v3, p0, Lorg/apache/log4j/c/r;->k:I

    goto/16 :goto_9

    :pswitch_10f
    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v4, :cond_127

    if-gt v0, v5, :cond_127

    iget-object v1, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    iget-object v2, p0, Lorg/apache/log4j/c/r;->q:Lorg/apache/log4j/c/i;

    iget v2, v2, Lorg/apache/log4j/c/i;->b:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    iput v0, v1, Lorg/apache/log4j/c/i;->b:I

    goto/16 :goto_9

    :cond_127
    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/r;->a(C)V

    iput v3, p0, Lorg/apache/log4j/c/r;->k:I

    goto/16 :goto_9

    :cond_12e
    iget-object v0, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_144

    new-instance v0, Lorg/apache/log4j/c/w;

    iget-object v1, p0, Lorg/apache/log4j/c/r;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/c/w;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/c/r;->b(Lorg/apache/log4j/c/q;)V

    :cond_144
    iget-object v0, p0, Lorg/apache/log4j/c/r;->o:Lorg/apache/log4j/c/q;

    return-object v0

    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_21
        :pswitch_84
        :pswitch_20
        :pswitch_cf
        :pswitch_aa
        :pswitch_10f
    .end packed-switch

    :sswitch_data_158
    .sparse-switch
        0x25 -> :sswitch_64
        0x6e -> :sswitch_70
    .end sparse-switch

    :pswitch_data_162
    .packed-switch 0x2d
        :pswitch_9b
        :pswitch_a1
    .end packed-switch
.end method
