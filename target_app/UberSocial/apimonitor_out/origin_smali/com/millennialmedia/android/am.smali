.class Lcom/millennialmedia/android/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Stack;

.field static b:Ljava/util/Stack;

.field static c:Ljava/util/Stack;

.field static d:Ljava/util/Stack;

.field static e:Ljava/util/Stack;

.field static f:Ljava/util/Stack;

.field static g:Ljava/util/Stack;

.field static h:Ljava/util/Stack;

.field static i:Ljava/util/Stack;

.field static j:Ljava/util/Stack;

.field static k:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->b:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->c:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->d:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->e:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->f:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->g:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->h:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->i:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->j:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/am;->k:Ljava/util/Stack;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/millennialmedia/android/ar;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->a:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ar;

    return-object v0
.end method

.method private static a(Ljava/util/Stack;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method static a(Lcom/millennialmedia/android/ae;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->i:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/af;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->j:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/ar;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->a:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/cm;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->k:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/t;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->b:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/u;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->c:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/v;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->d:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/w;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->e:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/x;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->f:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/y;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->g:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/millennialmedia/android/z;)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->h:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->a:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method private static a(ZLjava/util/Stack;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    if-eqz p0, :cond_6

    :cond_10
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_6
.end method

.method static b()Lcom/millennialmedia/android/t;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->b:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/t;

    return-object v0
.end method

.method static b(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->b:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static c()Lcom/millennialmedia/android/u;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->c:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/u;

    return-object v0
.end method

.method static c(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->c:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static d()Lcom/millennialmedia/android/v;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->d:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/v;

    return-object v0
.end method

.method static d(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->d:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static e()Lcom/millennialmedia/android/w;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->e:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/w;

    return-object v0
.end method

.method static e(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->e:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static f()Lcom/millennialmedia/android/x;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->f:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/x;

    return-object v0
.end method

.method static f(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->f:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static g()Lcom/millennialmedia/android/y;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->g:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/y;

    return-object v0
.end method

.method static g(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->g:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static h()Lcom/millennialmedia/android/z;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->h:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/z;

    return-object v0
.end method

.method static h(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->h:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static i()Lcom/millennialmedia/android/ae;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->i:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ae;

    return-object v0
.end method

.method static i(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->i:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static j()Lcom/millennialmedia/android/af;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->j:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/af;

    return-object v0
.end method

.method static j(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->j:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method

.method static k()Lcom/millennialmedia/android/cm;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/am;->k:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/am;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cm;

    return-object v0
.end method

.method static k(Z)V
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/am;->k:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/am;->a(ZLjava/util/Stack;)V

    return-void
.end method
