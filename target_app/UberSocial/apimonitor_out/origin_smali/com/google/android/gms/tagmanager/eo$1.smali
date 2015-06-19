.class Lcom/google/android/gms/tagmanager/eo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/em;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/eo;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eo$1;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "Refresh ignored: container loaded as default only."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo$1;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/eo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo$1;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
