.class public final Lorg/apache/log4j/c/ae;
.super Ljava/lang/InheritableThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/Hashtable;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
