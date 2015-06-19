.class public Lcom/ubermedia/model/twitter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubermedia/model/twitter/d;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/ubermedia/model/twitter/d;->d:J

    iput-wide p4, p0, Lcom/ubermedia/model/twitter/d;->e:J

    iput-object p6, p0, Lcom/ubermedia/model/twitter/d;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/ubermedia/model/twitter/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/ubermedia/model/twitter/d;)I
    .registers 4

    iget v0, p0, Lcom/ubermedia/model/twitter/d;->h:I

    iget v1, p1, Lcom/ubermedia/model/twitter/d;->h:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/ubermedia/model/twitter/d;->h:I

    iget v1, p1, Lcom/ubermedia/model/twitter/d;->h:I

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/ubermedia/model/twitter/d;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/ubermedia/model/twitter/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/model/twitter/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/d;->h:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/ubermedia/model/twitter/d;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/model/twitter/d;->c:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ubermedia/model/twitter/d;->d:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/ubermedia/model/twitter/d;->e:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/model/twitter/d;->f:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/ubermedia/model/twitter/d;->e:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/model/twitter/d;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/ubermedia/model/twitter/d;

    invoke-virtual {p0, p1}, Lcom/ubermedia/model/twitter/d;->a(Lcom/ubermedia/model/twitter/d;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/model/twitter/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/model/twitter/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/d;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/model/twitter/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
