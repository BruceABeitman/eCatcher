.class public abstract Lorg/apache/log4j/i/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/i/ac;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/i/ac;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/i/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i/ac;->a:Ljava/lang/String;

    return-object v0
.end method
