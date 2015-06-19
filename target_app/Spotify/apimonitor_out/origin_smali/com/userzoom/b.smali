.class public final Lcom/userzoom/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static final d:Lcom/userzoom/ca;

.field private static e:Ljava/lang/ThreadLocal;


# instance fields
.field private f:Lcom/userzoom/bz;

.field private g:I

.field private h:Lcom/userzoom/ca;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/userzoom/c;->a()I

    move-result v0

    sput v0, Lcom/userzoom/b;->a:I

    invoke-static {}, Lcom/userzoom/i;->a()I

    move-result v0

    sput v0, Lcom/userzoom/b;->b:I

    invoke-static {}, Lcom/userzoom/f;->a()I

    move-result v0

    sput v0, Lcom/userzoom/b;->c:I

    sget-object v0, Lcom/userzoom/G;->a:Lcom/userzoom/s;

    sput-object v0, Lcom/userzoom/b;->d:Lcom/userzoom/ca;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/userzoom/b;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/userzoom/b;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/userzoom/h;->a()Lcom/userzoom/h;

    invoke-static {}, Lcom/userzoom/cl;->a()Lcom/userzoom/cl;

    sget v0, Lcom/userzoom/b;->a:I

    sget v0, Lcom/userzoom/b;->b:I

    sget v0, Lcom/userzoom/b;->c:I

    iput v0, p0, Lcom/userzoom/b;->g:I

    sget-object v0, Lcom/userzoom/b;->d:Lcom/userzoom/ca;

    iput-object v0, p0, Lcom/userzoom/b;->h:Lcom/userzoom/ca;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/userzoom/b;->f:Lcom/userzoom/bz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)Lcom/userzoom/by;
    .registers 7

    sget-object v1, Lcom/userzoom/a;->a:Lcom/userzoom/a;

    new-instance v2, Lcom/userzoom/cd;

    sget-object v0, Lcom/userzoom/b;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_20

    new-instance v0, Lcom/userzoom/k;

    invoke-direct {v0}, Lcom/userzoom/k;-><init>()V

    sget-object v3, Lcom/userzoom/b;->e:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_20
    invoke-direct {v2, v0}, Lcom/userzoom/cd;-><init>(Lcom/userzoom/k;)V

    sget-object v0, Lcom/userzoom/a;->a:Lcom/userzoom/a;

    if-ne v1, v0, :cond_41

    new-instance v0, Lcom/userzoom/cj;

    iget v1, p0, Lcom/userzoom/b;->g:I

    iget-object v3, p0, Lcom/userzoom/b;->f:Lcom/userzoom/bz;

    invoke-direct {v0, v2, v1, p1}, Lcom/userzoom/cj;-><init>(Lcom/userzoom/cd;ILjava/io/OutputStream;)V

    iget-object v1, p0, Lcom/userzoom/b;->h:Lcom/userzoom/ca;

    sget-object v2, Lcom/userzoom/b;->d:Lcom/userzoom/ca;

    if-eq v1, v2, :cond_39

    invoke-virtual {v0, v1}, Lcom/userzoom/cj;->a(Lcom/userzoom/ca;)Lcom/userzoom/by;

    :cond_39
    :goto_39
    return-object v0

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/userzoom/k;

    goto :goto_f

    :cond_41
    sget-object v0, Lcom/userzoom/a;->a:Lcom/userzoom/a;

    if-ne v1, v0, :cond_5e

    new-instance v0, Lcom/userzoom/cg;

    invoke-direct {v0, v2, p1}, Lcom/userzoom/cg;-><init>(Lcom/userzoom/cd;Ljava/io/OutputStream;)V

    :goto_4a
    new-instance v1, Lcom/userzoom/ck;

    iget v3, p0, Lcom/userzoom/b;->g:I

    iget-object v4, p0, Lcom/userzoom/b;->f:Lcom/userzoom/bz;

    invoke-direct {v1, v2, v3, v0}, Lcom/userzoom/ck;-><init>(Lcom/userzoom/cd;ILjava/io/Writer;)V

    iget-object v0, p0, Lcom/userzoom/b;->h:Lcom/userzoom/ca;

    sget-object v2, Lcom/userzoom/b;->d:Lcom/userzoom/ca;

    if-eq v0, v2, :cond_5c

    invoke-virtual {v1, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/ca;)Lcom/userzoom/by;

    :cond_5c
    move-object v0, v1

    goto :goto_39

    :cond_5e
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Lcom/userzoom/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_4a
.end method
