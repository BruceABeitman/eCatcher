.class Lorg/apache/log4j/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/reflect/Method;

.field b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/e/g;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lorg/apache/log4j/e/g;->b:Ljava/lang/reflect/Method;

    return-void
.end method
