.class Lcom/google/android/gms/tagmanager/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/h;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/h$2;->a:Lcom/google/android/gms/tagmanager/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/i;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/h$2;->a:Lcom/google/android/gms/tagmanager/h;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/h$2;->a:Lcom/google/android/gms/tagmanager/h;

    iget-object v4, v0, Lcom/google/android/gms/tagmanager/i;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/i;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/tagmanager/h;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/h;Ljava/util/Map;)V

    goto :goto_4

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/h$2;->a:Lcom/google/android/gms/tagmanager/h;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
