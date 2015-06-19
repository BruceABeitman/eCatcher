.class Lcom/google/android/gms/tagmanager/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/h;-><init>()V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/l;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/l;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/util/List;J)V
    .registers 4

    return-void
.end method
