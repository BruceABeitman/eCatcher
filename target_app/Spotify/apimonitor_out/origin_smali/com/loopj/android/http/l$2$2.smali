.class final Lcom/loopj/android/http/l$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/l$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONException;

.field final synthetic b:Lcom/loopj/android/http/l$2;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/l$2;Lorg/json/JSONException;)V
    .registers 3

    iput-object p1, p0, Lcom/loopj/android/http/l$2$2;->b:Lcom/loopj/android/http/l$2;

    iput-object p2, p0, Lcom/loopj/android/http/l$2$2;->a:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/loopj/android/http/l$2$2;->b:Lcom/loopj/android/http/l$2;

    iget-object v0, v0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;

    iget-object v1, p0, Lcom/loopj/android/http/l$2$2;->b:Lcom/loopj/android/http/l$2;

    iget v1, v1, Lcom/loopj/android/http/l$2;->b:I

    iget-object v2, p0, Lcom/loopj/android/http/l$2$2;->b:Lcom/loopj/android/http/l$2;

    iget-object v2, v2, Lcom/loopj/android/http/l$2;->c:[Lorg/apache/http/Header;

    iget-object v2, p0, Lcom/loopj/android/http/l$2$2;->a:Lorg/json/JSONException;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/l;->a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
