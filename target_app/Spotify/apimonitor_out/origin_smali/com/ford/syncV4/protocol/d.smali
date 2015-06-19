.class public final Lcom/ford/syncV4/protocol/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:B

.field private b:Z

.field private c:Lcom/ford/syncV4/protocol/enums/b;

.field private d:Lcom/ford/syncV4/protocol/enums/d;

.field private e:B

.field private f:B

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ford/syncV4/protocol/d;->a:B

    iput-boolean v1, p0, Lcom/ford/syncV4/protocol/d;->b:Z

    sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;

    iput-object v0, p0, Lcom/ford/syncV4/protocol/d;->c:Lcom/ford/syncV4/protocol/enums/b;

    sget-object v0, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;

    iput-object v0, p0, Lcom/ford/syncV4/protocol/d;->d:Lcom/ford/syncV4/protocol/enums/d;

    iput-byte v1, p0, Lcom/ford/syncV4/protocol/d;->e:B

    return-void
.end method

.method public static a([B)Lcom/ford/syncV4/protocol/d;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v3}, Lcom/ford/syncV4/protocol/d;-><init>()V

    aget-byte v0, p0, v2

    ushr-int/lit8 v0, v0, 0x4

    int-to-byte v4, v0

    iput-byte v4, v3, Lcom/ford/syncV4/protocol/d;->a:B

    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v0, v0, 0x3

    if-ne v1, v0, :cond_48

    move v0, v1

    :goto_17
    iput-boolean v0, v3, Lcom/ford/syncV4/protocol/d;->b:Z

    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/ford/syncV4/protocol/enums/b;->a(B)Lcom/ford/syncV4/protocol/enums/b;

    move-result-object v0

    iput-object v0, v3, Lcom/ford/syncV4/protocol/d;->c:Lcom/ford/syncV4/protocol/enums/b;

    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/ford/syncV4/protocol/enums/d;->a(B)Lcom/ford/syncV4/protocol/enums/d;

    move-result-object v0

    iput-object v0, v3, Lcom/ford/syncV4/protocol/d;->d:Lcom/ford/syncV4/protocol/enums/d;

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    iput-byte v0, v3, Lcom/ford/syncV4/protocol/d;->e:B

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    iput-byte v0, v3, Lcom/ford/syncV4/protocol/d;->f:B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/ford/syncV4/util/a;->a([BI)I

    move-result v0

    iput v0, v3, Lcom/ford/syncV4/protocol/d;->g:I

    if-le v4, v1, :cond_4a

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/ford/syncV4/util/a;->a([BI)I

    move-result v0

    iput v0, v3, Lcom/ford/syncV4/protocol/d;->h:I

    :goto_47
    return-object v3

    :cond_48
    move v0, v2

    goto :goto_17

    :cond_4a
    iput v2, v3, Lcom/ford/syncV4/protocol/d;->h:I

    goto :goto_47
.end method


# virtual methods
.method public final a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/ford/syncV4/protocol/d;->a:B

    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/ford/syncV4/protocol/d;->g:I

    return-void
.end method

.method public final a(Lcom/ford/syncV4/protocol/enums/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/protocol/d;->c:Lcom/ford/syncV4/protocol/enums/b;

    return-void
.end method

.method public final a(Lcom/ford/syncV4/protocol/enums/d;)V
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/protocol/d;->d:Lcom/ford/syncV4/protocol/enums/d;

    return-void
.end method

.method protected final a()[B
    .registers 7

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x4

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/d;->a:B

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x0

    shl-int/lit8 v3, v0, 0x1

    iget-boolean v0, p0, Lcom/ford/syncV4/protocol/d;->b:Z

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_12
    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x3

    iget-object v3, p0, Lcom/ford/syncV4/protocol/d;->c:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/enums/b;->c()B

    move-result v3

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lcom/ford/syncV4/protocol/d;->d:Lcom/ford/syncV4/protocol/enums/d;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/enums/d;->c()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    iget-byte v3, p0, Lcom/ford/syncV4/protocol/d;->e:B

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    iget-byte v3, p0, Lcom/ford/syncV4/protocol/d;->f:B

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v0

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/d;->a:B

    if-ne v0, v1, :cond_50

    new-array v0, v5, [B

    invoke-static {v3}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ford/syncV4/protocol/d;->g:I

    invoke-static {v1}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4d
    return-object v0

    :cond_4e
    move v0, v2

    goto :goto_12

    :cond_50
    iget-byte v0, p0, Lcom/ford/syncV4/protocol/d;->a:B

    if-le v0, v1, :cond_72

    const/16 v0, 0xc

    new-array v0, v0, [B

    invoke-static {v3}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ford/syncV4/protocol/d;->g:I

    invoke-static {v1}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ford/syncV4/protocol/d;->h:I

    invoke-static {v1}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4d

    :cond_72
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public final b()B
    .registers 2

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/d;->a:B

    return v0
.end method

.method public final b(B)V
    .registers 2

    iput-byte p1, p0, Lcom/ford/syncV4/protocol/d;->e:B

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/ford/syncV4/protocol/d;->h:I

    return-void
.end method

.method public final c(B)V
    .registers 2

    iput-byte p1, p0, Lcom/ford/syncV4/protocol/d;->f:B

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ford/syncV4/protocol/d;->b:Z

    return v0
.end method

.method public final d()B
    .registers 2

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/d;->e:B

    return v0
.end method

.method public final e()B
    .registers 2

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/d;->f:B

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/ford/syncV4/protocol/d;->g:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/ford/syncV4/protocol/d;->h:I

    return v0
.end method

.method public final h()Lcom/ford/syncV4/protocol/enums/b;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/protocol/d;->c:Lcom/ford/syncV4/protocol/enums/b;

    return-object v0
.end method

.method public final i()Lcom/ford/syncV4/protocol/enums/d;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/protocol/d;->d:Lcom/ford/syncV4/protocol/enums/d;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/ford/syncV4/protocol/d;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/ford/syncV4/protocol/d;->b:Z

    if-eqz v0, :cond_bb

    const-string v0, "compressed"

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "frameType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/protocol/d;->c:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/protocol/d;->d:Lcom/ford/syncV4/protocol/enums/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nframeData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/ford/syncV4/protocol/d;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/ford/syncV4/protocol/d;->f:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ford/syncV4/protocol/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ford/syncV4/protocol/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_bb
    const-string v0, "uncompressed"

    goto/16 :goto_23
.end method
