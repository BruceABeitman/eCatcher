.class Lorg/apache/log4j/a/p;
.super Ljava/awt/event/WindowAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/log4j/a/o;


# direct methods
.method constructor <init>(Lorg/apache/log4j/a/o;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/a/p;->a:Lorg/apache/log4j/a/o;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/WindowEvent;)V
    .registers 4

    sget-object v0, Lorg/apache/log4j/a/k;->a:Lorg/apache/log4j/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/log4j/a/k;->a(Ljava/awt/event/ActionEvent;)V

    return-void
.end method
