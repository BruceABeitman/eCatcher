.class Lcom/google/android/gms/tagmanager/fc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/fc;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/tagmanager/fc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/fc;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/fc$3;->b:Lcom/google/android/gms/tagmanager/fc;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/fc$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/fc$3;->b:Lcom/google/android/gms/tagmanager/fc;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/fc$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/fc;->a(Lcom/google/android/gms/tagmanager/fc;Ljava/lang/String;)V

    return-void
.end method
