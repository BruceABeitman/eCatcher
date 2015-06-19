.class Lorg/apache/log4j/f/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/log4j/f/a/c;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/a/c;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/a/d;->a:Lorg/apache/log4j/f/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/a/d;->a:Lorg/apache/log4j/f/a/c;

    invoke-static {v0}, Lorg/apache/log4j/f/a/c;->a(Lorg/apache/log4j/f/a/c;)V

    return-void
.end method
