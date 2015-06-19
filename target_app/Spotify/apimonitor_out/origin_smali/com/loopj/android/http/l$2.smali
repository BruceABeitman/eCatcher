.class final Lcom/loopj/android/http/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/l;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:[Lorg/apache/http/Header;

.field final synthetic d:Ljava/lang/Throwable;

.field final synthetic e:Lcom/loopj/android/http/l;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/l;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .registers 6

    iput-object p1, p0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;

    iput-object p2, p0, Lcom/loopj/android/http/l$2;->a:[B

    iput p3, p0, Lcom/loopj/android/http/l$2;->b:I

    iput-object p4, p0, Lcom/loopj/android/http/l$2;->c:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/loopj/android/http/l$2;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;

    iget-object v1, p0, Lcom/loopj/android/http/l$2;->a:[B

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/l;->a([B)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;

    new-instance v2, Lcom/loopj/android/http/l$2$1;

    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/l$2$1;-><init>(Lcom/loopj/android/http/l$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/l;->a(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    iget-object v1, p0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;

    new-instance v2, Lcom/loopj/android/http/l$2$2;

    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/l$2$2;-><init>(Lcom/loopj/android/http/l$2;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/l;->a(Ljava/lang/Runnable;)V

    goto :goto_12
.end method
