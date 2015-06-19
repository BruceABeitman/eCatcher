.class public Lcom/ubermedia/net/h;
.super Lorg/apache/a/a/a/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ubermedia/net/j;


# direct methods
.method public constructor <init>(Lcom/ubermedia/net/j;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/a/a/a/g;-><init>()V

    iput-object p1, p0, Lcom/ubermedia/net/h;->a:Lcom/ubermedia/net/j;

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/a/a/d;Lcom/ubermedia/net/j;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/a/a/a/g;-><init>(Lorg/apache/a/a/a/d;)V

    iput-object p2, p0, Lcom/ubermedia/net/h;->a:Lcom/ubermedia/net/j;

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/a/a/d;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/ubermedia/net/j;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/a/a/a/g;-><init>(Lorg/apache/a/a/a/d;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p4, p0, Lcom/ubermedia/net/h;->a:Lcom/ubermedia/net/j;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    new-instance v0, Lcom/ubermedia/net/i;

    iget-object v1, p0, Lcom/ubermedia/net/h;->a:Lcom/ubermedia/net/j;

    invoke-direct {v0, p1, v1}, Lcom/ubermedia/net/i;-><init>(Ljava/io/OutputStream;Lcom/ubermedia/net/j;)V

    invoke-super {p0, v0}, Lorg/apache/a/a/a/g;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
