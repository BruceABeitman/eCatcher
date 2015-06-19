.class final Lcom/loopj/android/http/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/b;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/loopj/android/http/b;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/b;)V
    .registers 2

    iput-object p1, p0, Lcom/loopj/android/http/b$2;->a:Lcom/loopj/android/http/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 9

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    new-instance v0, Lcom/loopj/android/http/c;

    invoke-direct {v0, v1}, Lcom/loopj/android/http/c;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
