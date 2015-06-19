.class Lcom/google/android/gms/tagmanager/dj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/dj;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/dj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/dj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dj$3;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj$3;->a:Lcom/google/android/gms/tagmanager/dj;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dj;->e(Lcom/google/android/gms/tagmanager/dj;)Lcom/google/android/gms/tagmanager/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/aj;->a()V

    return-void
.end method
