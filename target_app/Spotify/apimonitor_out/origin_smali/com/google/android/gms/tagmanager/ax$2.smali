.class final Lcom/google/android/gms/tagmanager/ax$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ax;->a(Lcom/google/android/gms/tagmanager/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/h;

.field final synthetic b:Lcom/google/android/gms/tagmanager/ax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ax;Lcom/google/android/gms/tagmanager/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ax$2;->b:Lcom/google/android/gms/tagmanager/ax;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ax$2;->a:Lcom/google/android/gms/tagmanager/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax$2;->a:Lcom/google/android/gms/tagmanager/h;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ax$2;->b:Lcom/google/android/gms/tagmanager/ax;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ax;->a(Lcom/google/android/gms/tagmanager/ax;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/List;)V

    return-void
.end method
