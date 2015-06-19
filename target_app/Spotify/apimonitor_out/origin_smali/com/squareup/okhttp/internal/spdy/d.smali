.class public final Lcom/squareup/okhttp/internal/spdy/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/squareup/okhttp/internal/a/d;

.field public static final b:Lcom/squareup/okhttp/internal/a/d;

.field public static final c:Lcom/squareup/okhttp/internal/a/d;

.field public static final d:Lcom/squareup/okhttp/internal/a/d;

.field public static final e:Lcom/squareup/okhttp/internal/a/d;

.field public static final f:Lcom/squareup/okhttp/internal/a/d;

.field public static final g:Lcom/squareup/okhttp/internal/a/d;


# instance fields
.field public final h:Lcom/squareup/okhttp/internal/a/d;

.field public final i:Lcom/squareup/okhttp/internal/a/d;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ":status"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->a:Lcom/squareup/okhttp/internal/a/d;

    const-string v0, ":method"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->b:Lcom/squareup/okhttp/internal/a/d;

    const-string v0, ":path"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->c:Lcom/squareup/okhttp/internal/a/d;

    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->d:Lcom/squareup/okhttp/internal/a/d;

    const-string v0, ":authority"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->e:Lcom/squareup/okhttp/internal/a/d;

    const-string v0, ":host"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->f:Lcom/squareup/okhttp/internal/a/d;

    const-string v0, ":version"

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/d;->g:Lcom/squareup/okhttp/internal/a/d;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a/d;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/a/d;->e()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/a/d;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    invoke-static {p2}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/squareup/okhttp/internal/spdy/d;

    if-eqz v1, :cond_1c

    check-cast p1, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    iget-object v2, p1, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    iget-object v2, p1, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
