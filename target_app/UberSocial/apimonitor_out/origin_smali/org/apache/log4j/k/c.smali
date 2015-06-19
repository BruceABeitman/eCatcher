.class public Lorg/apache/log4j/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/q;


# instance fields
.field final a:Lorg/apache/log4j/k/j;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/k/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/k/c;->a:Lorg/apache/log4j/k/j;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/log4j/k/j;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/k/c;->a:Lorg/apache/log4j/k/j;

    return-object v0
.end method
