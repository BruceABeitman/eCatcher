.class Lcom/google/android/gms/tagmanager/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Lcom/google/android/gms/tagmanager/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/m;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/m$1;->a:Lcom/google/android/gms/tagmanager/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .registers 4

    const-string v0, "event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/m$1;->a:Lcom/google/android/gms/tagmanager/m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/m;->a(Lcom/google/android/gms/tagmanager/m;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
