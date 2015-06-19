.class public final Lcom/instagram/f/c/a;
.super Ljava/lang/Object;
.source "RequestedDirectShare.java"


# instance fields
.field private a:I

.field private b:Lcom/instagram/user/c/a;

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/c/a;
    .registers 4

    new-instance v0, Lcom/instagram/f/c/a;

    invoke-direct {v0}, Lcom/instagram/f/c/a;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_58

    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_58

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number_of_requests"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/instagram/f/c/a;->a(I)V

    goto :goto_d

    :cond_2c
    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {p0}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/f/c/a;->a(Lcom/instagram/user/c/a;)V

    goto :goto_d

    :cond_3f
    const-string v2, "requested_at"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/instagram/f/c/a;->a(J)V

    goto :goto_d

    :cond_52
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_d

    :cond_58
    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/f/c/a;->a:I

    return-void
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/instagram/f/c/a;->c:J

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/instagram/f/c/a;->a:I

    return v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/f/c/a;->c:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/instagram/f/c/a;

    iget-object v2, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    if-nez v2, :cond_21

    invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/instagram/f/c/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->hashCode()I

    move-result v0

    goto :goto_5
.end method
