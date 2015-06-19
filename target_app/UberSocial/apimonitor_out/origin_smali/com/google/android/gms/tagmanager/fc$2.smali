.class Lcom/google/android/gms/tagmanager/fc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/fc;->a(Lcom/google/android/gms/tagmanager/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/l;

.field final synthetic b:Lcom/google/android/gms/tagmanager/fc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/fc;Lcom/google/android/gms/tagmanager/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/fc$2;->b:Lcom/google/android/gms/tagmanager/fc;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/fc$2;->a:Lcom/google/android/gms/tagmanager/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fc$2;->a:Lcom/google/android/gms/tagmanager/l;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/fc$2;->b:Lcom/google/android/gms/tagmanager/fc;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/fc;->a(Lcom/google/android/gms/tagmanager/fc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/l;->a(Ljava/util/List;)V

    return-void
.end method
