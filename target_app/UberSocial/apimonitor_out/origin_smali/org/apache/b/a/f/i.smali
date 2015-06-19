.class public Lorg/apache/b/a/f/i;
.super Lorg/apache/b/a/a;
.source "SourceFile"


# static fields
.field private static final a:J = 0x404bb151428032ceL


# instance fields
.field private final b:Lorg/apache/b/a/f/f;


# direct methods
.method public constructor <init>(Lorg/apache/b/a/f/f;)V
    .registers 3

    invoke-virtual {p1}, Lorg/apache/b/a/f/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/b/a/f/i;->b:Lorg/apache/b/a/f/f;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/b/a/f/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/f/i;->b:Lorg/apache/b/a/f/f;

    return-object v0
.end method
