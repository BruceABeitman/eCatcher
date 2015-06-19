.class public abstract Lcom/c/bp;
.super Ljava/lang/Object;


# static fields
.field public static b:Z

.field private static c:Lcom/c/bc;

.field private static d:Lcom/c/bp;

.field private static final e:[Ljava/lang/String;


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/\u000cPk\u000bl\u001e[8_<\u001fQ8\u00108\u0014N)\u000c"

    invoke-static {v2}, Lcom/c/bp;->f(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/c/bp;->a([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "l\u0019V>\u001bq"

    invoke-static {v3}, Lcom/c/bp;->f(Ljava/lang/String;)[C

    move-result-object v3

    invoke-static {v3}, Lcom/c/bp;->a([C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0011M"

    invoke-static {v3}, Lcom/c/bp;->f(Ljava/lang/String;)[C

    move-result-object v3

    invoke-static {v3}, Lcom/c/bp;->a([C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "l6"

    invoke-static {v3}, Lcom/c/bp;->f(Ljava/lang/String;)[C

    move-result-object v3

    invoke-static {v3}, Lcom/c/bp;->a([C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/c/bp;->e:[Ljava/lang/String;

    sget-object v1, Lcom/c/bc;->f:Lcom/c/bc;

    sput-object v1, Lcom/c/bp;->c:Lcom/c/bc;

    const/4 v1, 0x0

    sput-object v1, Lcom/c/bp;->d:Lcom/c/bp;

    invoke-static {}, Lcom/c/bc;->values()[Lcom/c/bc;

    move-result-object v1

    array-length v2, v1

    :goto_45
    if-ge v0, v2, :cond_5f

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/c/bc;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0008(|\u00198"

    invoke-static {v5}, Lcom/c/bp;->f(Ljava/lang/String;)[C

    move-result-object v5

    invoke-static {v5}, Lcom/c/bp;->a([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    sput-object v3, Lcom/c/bp;->c:Lcom/c/bc;

    :cond_5f
    sget-object v0, Lcom/c/cj;->a:[I

    sget-object v1, Lcom/c/ci;->d:Lcom/c/aj;

    invoke-virtual {v1}, Lcom/c/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_96

    new-instance v0, Lcom/c/bx;

    invoke-direct {v0}, Lcom/c/bx;-><init>()V

    sput-object v0, Lcom/c/bp;->d:Lcom/c/bp;

    :goto_73
    return-void

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :pswitch_77
    new-instance v0, Lcom/c/cb;

    const-class v1, Lcom/c/bp;

    invoke-direct {v0, v1}, Lcom/c/cb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/c/bp;->d:Lcom/c/bp;

    goto :goto_73

    :pswitch_81
    new-instance v0, Lcom/c/bt;

    const-class v1, Lcom/c/bp;

    invoke-direct {v0, v1}, Lcom/c/bt;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/c/bp;->d:Lcom/c/bp;

    goto :goto_73

    :pswitch_8b
    new-instance v0, Lcom/c/cf;

    const-class v1, Lcom/c/bp;

    invoke-direct {v0, v1}, Lcom/c/cf;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/c/bp;->d:Lcom/c/bp;

    goto :goto_73

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_77
        :pswitch_81
        :pswitch_8b
    .end packed-switch
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bp;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/bx;)V
    .registers 2

    invoke-direct {p0}, Lcom/c/bp;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/bp;->a:Ljava/lang/String;

    return-void
.end method

.method private static a([C)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x4c

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_29

    :cond_7
    move-object v2, p0

    move v3, v1

    :goto_9
    aget-char v6, p0, v1

    rem-int/lit8 v4, v3, 0x5

    packed-switch v4, :pswitch_data_36

    const/16 v4, 0x7f

    :goto_12
    xor-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, p0, v1

    add-int/lit8 v1, v3, 0x1

    if-nez v0, :cond_28

    move-object p0, v2

    move v3, v1

    move v1, v0

    goto :goto_9

    :pswitch_1e
    move v4, v5

    goto :goto_12

    :pswitch_20
    const/16 v4, 0x6d

    goto :goto_12

    :pswitch_23
    const/16 v4, 0x3e

    goto :goto_12

    :pswitch_26
    move v4, v5

    goto :goto_12

    :cond_28
    move-object p0, v2

    :cond_29
    if-gt v0, v1, :cond_7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public static declared-synchronized a(Lcom/c/bp;)V
    .registers 5

    const-class v1, Lcom/c/bp;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v2, Lcom/c/bp;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/Class;)Lcom/c/bp;
    .registers 3

    const-class v1, Lcom/c/bp;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/c/bp;->d:Lcom/c/bp;

    invoke-virtual {v0, p0}, Lcom/c/bp;->a(Ljava/lang/Class;)Lcom/c/bp;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final b(Lcom/c/bc;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/c/bp;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/bp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/bp;->e:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/bc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/bp;->e:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)[C
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    :goto_5
    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_13

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_13
    return-object v1

    :cond_14
    move-object v0, v1

    goto :goto_5
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Class;)Lcom/c/bp;
.end method

.method protected abstract a(Lcom/c/bc;Ljava/lang/String;)V
.end method

.method public a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/c/bp;->a(Lcom/c/bc;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p3, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/c/bp;->b(Lcom/c/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/c/bp;->b(Lcom/c/bc;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_19
    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_23

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    goto :goto_f

    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->a:Lcom/c/bc;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->a:Lcom/c/bc;

    invoke-virtual {p0, v0, p1, p2}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    sget-object v0, Lcom/c/bc;->a:Lcom/c/bc;

    invoke-virtual {p0, v0}, Lcom/c/bp;->a(Lcom/c/bc;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/c/bc;)Z
    .registers 3

    sget-object v0, Lcom/c/bp;->c:Lcom/c/bc;

    invoke-virtual {v0, p1}, Lcom/c/bc;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_10

    invoke-static {p1}, Lcom/c/cn;->a(Lcom/c/bc;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b(Lcom/c/bc;)Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Lcom/c/z;

    invoke-direct {v0, p0, p1}, Lcom/c/z;-><init>(Lcom/c/bp;Lcom/c/bc;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->b:Lcom/c/bc;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->b:Lcom/c/bc;

    invoke-virtual {p0, v0, p1, p2}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()Z
    .registers 2

    sget-object v0, Lcom/c/bc;->b:Lcom/c/bc;

    invoke-virtual {p0, v0}, Lcom/c/bp;->a(Lcom/c/bc;)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->c:Lcom/c/bc;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->c:Lcom/c/bc;

    invoke-virtual {p0, v0, p1, p2}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .registers 2

    sget-object v0, Lcom/c/bc;->c:Lcom/c/bc;

    invoke-virtual {p0, v0}, Lcom/c/bp;->a(Lcom/c/bc;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->d:Lcom/c/bc;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->d:Lcom/c/bc;

    invoke-virtual {p0, v0, p1, p2}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .registers 2

    sget-object v0, Lcom/c/bc;->d:Lcom/c/bc;

    invoke-virtual {p0, v0}, Lcom/c/bp;->a(Lcom/c/bc;)Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->e:Lcom/c/bc;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/c/bc;->e:Lcom/c/bc;

    invoke-virtual {p0, v0, p1, p2}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()Z
    .registers 2

    sget-object v0, Lcom/c/bc;->e:Lcom/c/bc;

    invoke-virtual {p0, v0}, Lcom/c/bp;->a(Lcom/c/bc;)Z

    move-result v0

    return v0
.end method
