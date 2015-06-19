.class public final Lcom/bbm/util/f/a;
.super Ljava/lang/Object;
.source "TimeRangeFormatter.java"


# static fields
.field protected static a:Lcom/bbm/util/f/i;

.field protected static b:Lcom/bbm/util/f/i;

.field protected static c:Lcom/bbm/util/f/i;

.field protected static d:Lcom/bbm/util/f/i;

.field protected static e:Lcom/bbm/util/f/i;

.field protected static f:Lcom/bbm/util/f/i;

.field private static g:Lcom/bbm/util/f/a;

.field private static h:Lcom/bbm/util/f/a;

.field private static i:Lcom/bbm/util/f/a;

.field private static j:Lcom/bbm/util/f/a;

.field private static k:Lcom/bbm/util/f/a;


# instance fields
.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/f/j;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/bbm/util/f/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/util/f/a;->g:Lcom/bbm/util/f/a;

    sput-object v0, Lcom/bbm/util/f/a;->h:Lcom/bbm/util/f/a;

    sput-object v0, Lcom/bbm/util/f/a;->i:Lcom/bbm/util/f/a;

    sput-object v0, Lcom/bbm/util/f/a;->j:Lcom/bbm/util/f/a;

    sput-object v0, Lcom/bbm/util/f/a;->k:Lcom/bbm/util/f/a;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/f/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/f/a;->f:Lcom/bbm/util/f/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/bbm/util/f/g;

    invoke-direct {v0}, Lcom/bbm/util/f/g;-><init>()V

    sput-object v0, Lcom/bbm/util/f/a;->f:Lcom/bbm/util/f/i;

    :cond_e
    sget-object v0, Lcom/bbm/util/f/a;->f:Lcom/bbm/util/f/i;

    iput-object v0, p0, Lcom/bbm/util/f/a;->m:Lcom/bbm/util/f/i;

    iput-object p1, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/bbm/util/f/a;
    .registers 9

    const-wide/32 v7, 0x5265c00

    sget-object v0, Lcom/bbm/util/f/a;->g:Lcom/bbm/util/f/a;

    if-nez v0, :cond_4c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/util/f/j;

    const-wide/32 v1, 0x36ee80

    const-wide/32 v3, 0xea60

    sget-object v5, Lcom/bbm/util/f/a;->a:Lcom/bbm/util/f/i;

    if-nez v5, :cond_1f

    new-instance v5, Lcom/bbm/util/f/b;

    invoke-direct {v5}, Lcom/bbm/util/f/b;-><init>()V

    sput-object v5, Lcom/bbm/util/f/a;->a:Lcom/bbm/util/f/i;

    :cond_1f
    sget-object v5, Lcom/bbm/util/f/a;->a:Lcom/bbm/util/f/i;

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/util/f/j;

    invoke-static {}, Lcom/bbm/util/f/a;->e()Lcom/bbm/util/f/i;

    move-result-object v5

    move-wide v1, v7

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/util/f/j;

    const-wide/32 v1, 0x240c8400

    invoke-static {}, Lcom/bbm/util/f/a;->f()Lcom/bbm/util/f/i;

    move-result-object v5

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/util/f/a;

    invoke-direct {v0, v6}, Lcom/bbm/util/f/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/bbm/util/f/a;->g:Lcom/bbm/util/f/a;

    :cond_4c
    sget-object v0, Lcom/bbm/util/f/a;->g:Lcom/bbm/util/f/a;

    return-object v0
.end method

.method public static b()Lcom/bbm/util/f/a;
    .registers 7

    const-wide/32 v1, 0x5265c00

    sget-object v0, Lcom/bbm/util/f/a;->h:Lcom/bbm/util/f/a;

    if-nez v0, :cond_20

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/util/f/j;

    invoke-static {}, Lcom/bbm/util/f/a;->e()Lcom/bbm/util/f/i;

    move-result-object v5

    move-wide v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/util/f/a;

    invoke-direct {v0, v6}, Lcom/bbm/util/f/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/bbm/util/f/a;->h:Lcom/bbm/util/f/a;

    :cond_20
    sget-object v0, Lcom/bbm/util/f/a;->h:Lcom/bbm/util/f/a;

    return-object v0
.end method

.method public static c()Lcom/bbm/util/f/a;
    .registers 10

    const-wide/32 v1, 0x5265c00

    sget-object v0, Lcom/bbm/util/f/a;->j:Lcom/bbm/util/f/a;

    if-nez v0, :cond_42

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/util/f/j;

    sget-object v3, Lcom/bbm/util/f/a;->d:Lcom/bbm/util/f/i;

    if-nez v3, :cond_19

    new-instance v3, Lcom/bbm/util/f/e;

    invoke-direct {v3}, Lcom/bbm/util/f/e;-><init>()V

    sput-object v3, Lcom/bbm/util/f/a;->d:Lcom/bbm/util/f/i;

    :cond_19
    sget-object v5, Lcom/bbm/util/f/a;->d:Lcom/bbm/util/f/i;

    move-wide v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/util/f/j;

    const-wide/32 v4, 0xa4cb800

    sget-object v0, Lcom/bbm/util/f/a;->e:Lcom/bbm/util/f/i;

    if-nez v0, :cond_32

    new-instance v0, Lcom/bbm/util/f/f;

    invoke-direct {v0}, Lcom/bbm/util/f/f;-><init>()V

    sput-object v0, Lcom/bbm/util/f/a;->e:Lcom/bbm/util/f/i;

    :cond_32
    sget-object v8, Lcom/bbm/util/f/a;->e:Lcom/bbm/util/f/i;

    move-wide v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/util/f/a;

    invoke-direct {v0, v9}, Lcom/bbm/util/f/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/bbm/util/f/a;->j:Lcom/bbm/util/f/a;

    :cond_42
    sget-object v0, Lcom/bbm/util/f/a;->j:Lcom/bbm/util/f/a;

    return-object v0
.end method

.method public static d()Lcom/bbm/util/f/a;
    .registers 10

    const-wide/32 v1, 0x5265c00

    sget-object v0, Lcom/bbm/util/f/a;->k:Lcom/bbm/util/f/a;

    if-nez v0, :cond_30

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/util/f/j;

    invoke-static {}, Lcom/bbm/util/f/a;->e()Lcom/bbm/util/f/i;

    move-result-object v5

    move-wide v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/util/f/j;

    const-wide/32 v4, 0x240c8400

    invoke-static {}, Lcom/bbm/util/f/a;->f()Lcom/bbm/util/f/i;

    move-result-object v8

    move-wide v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/bbm/util/f/j;-><init>(JJLcom/bbm/util/f/i;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/util/f/a;

    invoke-direct {v0, v9}, Lcom/bbm/util/f/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/bbm/util/f/a;->k:Lcom/bbm/util/f/a;

    :cond_30
    sget-object v0, Lcom/bbm/util/f/a;->k:Lcom/bbm/util/f/a;

    return-object v0
.end method

.method private static e()Lcom/bbm/util/f/i;
    .registers 1

    sget-object v0, Lcom/bbm/util/f/a;->b:Lcom/bbm/util/f/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbm/util/f/c;

    invoke-direct {v0}, Lcom/bbm/util/f/c;-><init>()V

    sput-object v0, Lcom/bbm/util/f/a;->b:Lcom/bbm/util/f/i;

    :cond_b
    sget-object v0, Lcom/bbm/util/f/a;->b:Lcom/bbm/util/f/i;

    return-object v0
.end method

.method private static f()Lcom/bbm/util/f/i;
    .registers 1

    sget-object v0, Lcom/bbm/util/f/a;->c:Lcom/bbm/util/f/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbm/util/f/d;

    invoke-direct {v0}, Lcom/bbm/util/f/d;-><init>()V

    sput-object v0, Lcom/bbm/util/f/a;->c:Lcom/bbm/util/f/i;

    :cond_b
    sget-object v0, Lcom/bbm/util/f/a;->c:Lcom/bbm/util/f/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;JJ)Lcom/bbm/util/f/h;
    .registers 16

    new-instance v7, Lcom/bbm/util/f/h;

    invoke-direct {v7}, Lcom/bbm/util/f/h;-><init>()V

    sub-long v4, p4, p2

    const/4 v0, 0x0

    move v6, v0

    :goto_9
    iget-object v0, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_23

    iget-object v0, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/j;

    iget-wide v0, v0, Lcom/bbm/util/f/j;->a:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_23

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    :cond_23
    iget-object v0, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v6, v0, :cond_36

    iget-object v0, p0, Lcom/bbm/util/f/a;->m:Lcom/bbm/util/f/i;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/bbm/util/f/i;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/bbm/util/f/h;->a:Ljava/lang/String;

    :goto_35
    return-object v7

    :cond_36
    iget-object v0, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/j;

    iget-object v0, v0, Lcom/bbm/util/f/j;->c:Lcom/bbm/util/f/i;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/bbm/util/f/i;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/bbm/util/f/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/j;

    iget-wide v1, v0, Lcom/bbm/util/f/j;->b:J

    iget-object v0, p0, Lcom/bbm/util/f/a;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/j;

    iget-wide v8, v0, Lcom/bbm/util/f/j;->b:J

    rem-long v3, v4, v8

    sub-long v0, v1, v3

    iput-wide v0, v7, Lcom/bbm/util/f/h;->b:J

    goto :goto_35
.end method
